package com.gathin.tvhome;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;

import java.io.*;
import java.net.*;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.Base64;
import java.util.Enumeration;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class AirPlayServer {
    private static final String TAG = "AirPlayServer";
    public static final int PORT = 7070;

    public interface AirPlayListener {
        void onClientConnected(String clientIp);
        void onScreenFrameReceived(Bitmap frame);
        void onPhotoReceived(Bitmap photo);
        void onVideoReceived(String videoPath);
        void onRemoteKeyReceived(String key);
        void onMirrorStopped();
    }

    private static AirPlayServer instance;
    private final Context context;
    private ServerSocket serverSocket;
    private boolean isRunning = false;
    private final ExecutorService threadPool = Executors.newCachedThreadPool();
    private AirPlayListener listener;
    private final Handler mainHandler = new Handler(Looper.getMainLooper());

    public AirPlayServer(Context context) {
        this.context = context.getApplicationContext();
    }

    public static synchronized AirPlayServer getInstance(Context context) {
        if (instance == null) {
            instance = new AirPlayServer(context);
        }
        return instance;
    }

    public void setListener(AirPlayListener l) {
        this.listener = l;
    }

    public synchronized void startServer() {
        if (isRunning) return;
        isRunning = true;
        threadPool.execute(() -> {
            try {
                serverSocket = new ServerSocket(PORT);
                Log.d(TAG, "AirPlayServer started on port " + PORT);
                while (isRunning && !serverSocket.isClosed()) {
                    Socket client = serverSocket.accept();
                    threadPool.execute(() -> handleClient(client));
                }
            } catch (Exception e) {
                Log.e(TAG, "Server error: " + e.getMessage());
            }
        });
    }

    public synchronized void stopServer() {
        isRunning = false;
        try {
            if (serverSocket != null && !serverSocket.isClosed()) {
                serverSocket.close();
            }
        } catch (Exception ignored) {}
    }

    public static String getLocalIpAddress(Context context) {
        try {
            WifiManager wm = (WifiManager) context.getApplicationContext().getSystemService(Context.WIFI_SERVICE);
            if (wm != null && wm.getConnectionInfo() != null) {
                int ip = wm.getConnectionInfo().getIpAddress();
                if (ip != 0) {
                    return String.format(Locale.US, "%d.%d.%d.%d",
                            (ip & 0xff), (ip >> 8 & 0xff), (ip >> 16 & 0xff), (ip >> 24 & 0xff));
                }
            }
        } catch (Exception ignored) {}
        try {
            for (Enumeration<NetworkInterface> en = NetworkInterface.getNetworkInterfaces(); en.hasMoreElements(); ) {
                NetworkInterface intf = en.nextElement();
                for (Enumeration<InetAddress> enumIpAddr = intf.getInetAddresses(); enumIpAddr.hasMoreElements(); ) {
                    InetAddress inetAddress = enumIpAddr.nextElement();
                    if (!inetAddress.isLoopbackAddress() && inetAddress instanceof Inet4Address) {
                        return inetAddress.getHostAddress();
                    }
                }
            }
        } catch (Exception ignored) {}
        return "192.168.1.3";
    }

    private void handleClient(Socket socket) {
        try {
            InputStream in = socket.getInputStream();
            OutputStream out = socket.getOutputStream();

            ByteArrayOutputStream headerBuf = new ByteArrayOutputStream();
            int prev = -1, prev2 = -1, prev3 = -1, b;
            while ((b = in.read()) != -1) {
                headerBuf.write(b);
                if (prev3 == '\r' && prev2 == '\n' && prev == '\r' && b == '\n') {
                    break;
                }
                prev3 = prev2;
                prev2 = prev;
                prev = b;
            }

            String headerText = new String(headerBuf.toByteArray(), StandardCharsets.UTF_8);
            String[] lines = headerText.split("\r\n");
            if (lines.length == 0 || lines[0].isEmpty()) {
                socket.close();
                return;
            }

            String requestLine = lines[0];
            String[] parts = requestLine.split(" ");
            if (parts.length < 2) {
                socket.close();
                return;
            }

            String method = parts[0];
            String path = parts[1];

            int contentLength = 0;
            String secKey = null;
            boolean isWebSocket = false;

            for (int i = 1; i < lines.length; i++) {
                String line = lines[i];
                String lower = line.toLowerCase(Locale.US);
                if (lower.startsWith("content-length:")) {
                    contentLength = Integer.parseInt(line.substring(15).trim());
                } else if (lower.startsWith("sec-websocket-key:")) {
                    secKey = line.substring(18).trim();
                } else if (lower.startsWith("upgrade:") && lower.contains("websocket")) {
                    isWebSocket = true;
                }
            }

            if (isWebSocket && secKey != null) {
                handleWebSocket(socket, in, out, secKey);
                return;
            }

            if (method.equals("GET")) {
                if (path.equals("/") || path.startsWith("/?")) {
                    sendHtmlResponse(out);
                } else if (path.equals("/status")) {
                    sendJsonResponse(out, "{\"status\":\"ready\",\"tv\":\"Mi TV (Apple Style)\"}");
                } else {
                    send404(out);
                }
            } else if (method.equals("POST")) {
                if (path.startsWith("/api/remote")) {
                    handleRemoteKey(path);
                    sendJsonResponse(out, "{\"success\":true}");
                } else if (path.startsWith("/api/cast_photo")) {
                    handlePhotoUpload(in, contentLength);
                    sendJsonResponse(out, "{\"success\":true}");
                } else if (path.startsWith("/api/stop")) {
                    if (listener != null) {
                        mainHandler.post(() -> listener.onMirrorStopped());
                    }
                    sendJsonResponse(out, "{\"success\":true}");
                } else {
                    sendJsonResponse(out, "{\"success\":false,\"error\":\"not_found\"}");
                }
            }
            socket.close();
        } catch (Exception e) {
            Log.e(TAG, "Client handle error: " + e.getMessage());
        }
    }

    private void handleRemoteKey(String path) {
        try {
            String key = "OK";
            if (path.contains("key=")) {
                key = path.substring(path.indexOf("key=") + 4);
                if (key.contains("&")) key = key.substring(0, key.indexOf("&"));
            }
            final String fKey = key;
            if (listener != null) {
                mainHandler.post(() -> listener.onRemoteKeyReceived(fKey));
            }
            int keycode = 23; // OK
            if (key.equalsIgnoreCase("UP")) keycode = 19;
            else if (key.equalsIgnoreCase("DOWN")) keycode = 20;
            else if (key.equalsIgnoreCase("LEFT")) keycode = 21;
            else if (key.equalsIgnoreCase("RIGHT")) keycode = 22;
            else if (key.equalsIgnoreCase("BACK")) keycode = 4;
            else if (key.equalsIgnoreCase("HOME")) keycode = 3;
            else if (key.equalsIgnoreCase("VOLUP")) keycode = 24;
            else if (key.equalsIgnoreCase("VOLDOWN")) keycode = 25;

            Runtime.getRuntime().exec("input keyevent " + keycode);
        } catch (Exception ignored) {}
    }

    private void handlePhotoUpload(InputStream in, int length) throws IOException {
        if (length <= 0) return;
        byte[] buffer = new byte[length];
        int total = 0;
        while (total < length) {
            int read = in.read(buffer, total, length - total);
            if (read == -1) break;
            total += read;
        }
        Bitmap bitmap = BitmapFactory.decodeByteArray(buffer, 0, total);
        if (bitmap != null && listener != null) {
            mainHandler.post(() -> listener.onPhotoReceived(bitmap));
        }
    }

    private void handleWebSocket(Socket socket, InputStream in, OutputStream out, String key) {
        try {
            // Send WebSocket Handshake Response
            String acceptKey = Base64.getEncoder().encodeToString(
                    MessageDigest.getInstance("SHA-1").digest((key + "258EAFA5-E914-47DA-95CA-C5AB0DC85B11").getBytes(StandardCharsets.UTF_8))
            );

            String response = "HTTP/1.1 101 Switching Protocols\r\n" +
                    "Upgrade: websocket\r\n" +
                    "Connection: Upgrade\r\n" +
                    "Sec-WebSocket-Accept: " + acceptKey + "\r\n\r\n";
            out.write(response.getBytes(StandardCharsets.UTF_8));
            out.flush();

            if (listener != null) {
                mainHandler.post(() -> listener.onClientConnected(socket.getInetAddress().getHostAddress()));
            }

            // Read continuous WebSocket Frames
            DataInputStream dis = new DataInputStream(in);
            while (isRunning && !socket.isClosed()) {
                int b1 = dis.read();
                if (b1 == -1) break;
                int opcode = b1 & 0x0F;
                if (opcode == 8) { // Close
                    break;
                }

                int b2 = dis.read();
                boolean masked = (b2 & 0x80) != 0;
                long len = b2 & 0x7F;
                if (len == 126) {
                    len = dis.readUnsignedShort();
                } else if (len == 127) {
                    len = dis.readLong();
                }

                byte[] mask = new byte[4];
                if (masked) {
                    dis.readFully(mask);
                }

                if (len > 0 && len < 10000000) { // Max 10MB frame
                    byte[] payload = new byte[(int) len];
                    dis.readFully(payload);
                    if (masked) {
                        for (int i = 0; i < len; i++) {
                            payload[i] ^= mask[i % 4];
                        }
                    }

                    if (opcode == 2) { // Binary Frame (JPEG Screen Frame)
                        Bitmap frame = BitmapFactory.decodeByteArray(payload, 0, payload.length);
                        if (frame != null && listener != null) {
                            mainHandler.post(() -> listener.onScreenFrameReceived(frame));
                        }
                    }
                }
            }
            socket.close();
        } catch (Exception ignored) {}
    }

    private void sendJsonResponse(OutputStream out, String json) throws IOException {
        byte[] bytes = json.getBytes(StandardCharsets.UTF_8);
        String header = "HTTP/1.1 200 OK\r\n" +
                "Content-Type: application/json\r\n" +
                "Access-Control-Allow-Origin: *\r\n" +
                "Content-Length: " + bytes.length + "\r\n\r\n";
        out.write(header.getBytes(StandardCharsets.UTF_8));
        out.write(bytes);
        out.flush();
    }

    private void send404(OutputStream out) throws IOException {
        String msg = "HTTP/1.1 404 Not Found\r\nContent-Length: 0\r\n\r\n";
        out.write(msg.getBytes(StandardCharsets.UTF_8));
        out.flush();
    }

    private void sendHtmlResponse(OutputStream out) throws IOException {
        String html = getWebPageHtml();
        byte[] bytes = html.getBytes(StandardCharsets.UTF_8);
        String header = "HTTP/1.1 200 OK\r\n" +
                "Content-Type: text/html; charset=utf-8\r\n" +
                "Access-Control-Allow-Origin: *\r\n" +
                "Content-Length: " + bytes.length + "\r\n\r\n";
        out.write(header.getBytes(StandardCharsets.UTF_8));
        out.write(bytes);
        out.flush();
    }

    private String getWebPageHtml() {
        return "<!DOCTYPE html>\n" +
                "<html lang=\"en\">\n" +
                "<head>\n" +
                "  <meta charset=\"UTF-8\">\n" +
                "  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\">\n" +
                "  <title> AirPlay Mirroring — Mi TV</title>\n" +
                "  <style>\n" +
                "    * { box-sizing: border-box; margin: 0; padding: 0; font-family: -apple-system, BlinkMacSystemFont, 'SF Pro Display', 'Helvetica Neue', sans-serif; }\n" +
                "    body { background: #000; color: #fff; min-height: 100vh; display: flex; flex-direction: column; align-items: center; padding: 24px 16px; }\n" +
                "    .header { text-align: center; margin-bottom: 24px; }\n" +
                "    .logo { font-size: 42px; margin-bottom: 8px; }\n" +
                "    h1 { font-size: 24px; font-weight: 700; }\n" +
                "    p.sub { color: #86868b; font-size: 14px; margin-top: 4px; }\n" +
                "    .status-badge { display: inline-flex; align-items: center; background: rgba(52, 199, 89, 0.15); color: #34c759; padding: 6px 14px; border-radius: 20px; font-size: 13px; font-weight: 600; margin-top: 12px; }\n" +
                "    .status-dot { width: 8px; height: 8px; background: #34c759; border-radius: 50%; margin-right: 6px; }\n" +
                "    .card { width: 100%; max-width: 380px; background: #1c1c1e; border: 1px solid rgba(255,255,255,0.1); border-radius: 20px; padding: 20px; margin-bottom: 16px; }\n" +
                "    .card-title { font-size: 17px; font-weight: 600; margin-bottom: 6px; display: flex; align-items: center; gap: 8px; }\n" +
                "    .card-desc { font-size: 13px; color: #a1a1a6; margin-bottom: 16px; line-height: 1.4; }\n" +
                "    .step-box { background: rgba(255,255,255,0.06); border-radius: 12px; padding: 12px; margin-bottom: 8px; font-size: 14px; line-height: 1.5; color: #e2e8f0; display: flex; align-items: flex-start; gap: 10px; }\n" +
                "    .step-num { background: #0071e3; color: #fff; width: 22px; height: 22px; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-size: 12px; font-weight: bold; flex-shrink: 0; }\n" +
                "    button.btn { width: 100%; background: #0071e3; color: #fff; border: none; border-radius: 12px; padding: 14px; font-size: 16px; font-weight: 600; cursor: pointer; transition: all 0.2s; }\n" +
                "    button.btn:active { transform: scale(0.98); opacity: 0.9; }\n" +
                "    button.btn-secondary { background: rgba(255,255,255,0.12); color: #fff; margin-top: 10px; }\n" +
                "    button.btn-danger { background: #ff3b30; margin-top: 10px; }\n" +
                "    .remote-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 10px; margin-top: 12px; }\n" +
                "    .remote-btn { background: #2c2c2e; border: 1px solid rgba(255,255,255,0.08); border-radius: 12px; padding: 14px; font-size: 15px; font-weight: 600; color: #fff; cursor: pointer; text-align: center; }\n" +
                "    .remote-btn:active { background: #0071e3; }\n" +
                "    .toast { position: fixed; bottom: 20px; background: #34c759; color: #000; padding: 12px 24px; border-radius: 24px; font-weight: 600; font-size: 14px; display: none; z-index: 999; box-shadow: 0 4px 12px rgba(0,0,0,0.5); }\n" +
                "    #fileInput { display: none; }\n" +
                "  </style>\n" +
                "</head>\n" +
                "<body>\n" +
                "  <div class=\"header\">\n" +
                "    <div class=\"logo\"></div>\n" +
                "    <h1>Living Room TV</h1>\n" +
                "    <p class=\"sub\">Apple Style TV Mirroring Hub</p>\n" +
                "    <div class=\"status-badge\"><div class=\"status-dot\"></div> AirPlay Active on Wi-Fi</div>\n" +
                "  </div>\n" +
                "\n" +
                "  <!-- iOS Native AirPlay Instruction Card (Shown on iPhone/iPad) -->\n" +
                "  <div id=\"iosAirPlayCard\" class=\"card\" style=\"display:none; border: 1px solid rgba(56, 189, 248, 0.4); background: linear-gradient(180deg, #1e293b 0%, #0f172a 100%);\">\n" +
                "    <div class=\"card-title\">✨ Mirror Full iPhone Screen</div>\n" +
                "    <div class=\"card-desc\">Mirror your entire iPhone screen wirelessly without extra apps:</div>\n" +
                "    <div class=\"step-box\"><div class=\"step-num\">1</div><div>Swipe down from top-right corner to open <b>Control Center</b></div></div>\n" +
                "    <div class=\"step-box\"><div class=\"step-num\">2</div><div>Tap <b>Screen Mirroring</b> (overlapping screens icon)</div></div>\n" +
                "    <div class=\"step-box\"><div class=\"step-num\">3</div><div>Select <b>Android AirPlay</b> from the list</div></div>\n" +
                "    <div style=\"color: #34d399; font-size: 13px; font-weight: 600; text-align: center; margin-top: 10px;\">🟢 Receiver Ready &amp; Broadcasting</div>\n" +
                "  </div>\n" +
                "\n" +
                "  <!-- Desktop / Browser Screen Mirroring Card -->\n" +
                "  <div id=\"browserMirrorCard\" class=\"card\" style=\"display:none;\">\n" +
                "    <div class=\"card-title\">💻 Browser Screen Mirroring</div>\n" +
                "    <div class=\"card-desc\">Mirror your laptop or computer screen live to the TV.</div>\n" +
                "    <button id=\"btnStartMirror\" class=\"btn\" onclick=\"startScreenMirror()\">📺 Start Screen Mirroring</button>\n" +
                "    <button id=\"btnStopMirror\" class=\"btn btn-danger\" style=\"display:none;\" onclick=\"stopScreenMirror()\">⏹ Stop Mirroring</button>\n" +
                "  </div>\n" +
                "\n" +
                "  <!-- Cast Photos Card -->\n" +
                "  <div class=\"card\">\n" +
                "    <div class=\"card-title\">📸 Cast Photos to TV</div>\n" +
                "    <div class=\"card-desc\">Select photos from your iPhone Camera Roll to showcase in 4K on TV.</div>\n" +
                "    <input type=\"file\" id=\"fileInput\" accept=\"image/*\" onchange=\"uploadPhoto(this)\">\n" +
                "    <button class=\"btn btn-secondary\" onclick=\"document.getElementById('fileInput').click()\">🖼️ Choose Photo from Library</button>\n" +
                "  </div>\n" +
                "\n" +
                "  <!-- TV Remote Card -->\n" +
                "  <div class=\"card\">\n" +
                "    <div class=\"card-title\">🎮 Touch TV Remote</div>\n" +
                "    <div class=\"remote-grid\">\n" +
                "      <div></div><div class=\"remote-btn\" onclick=\"sendKey('UP')\">▲</div><div></div>\n" +
                "      <div class=\"remote-btn\" onclick=\"sendKey('LEFT')\">◀</div>\n" +
                "      <div class=\"remote-btn\" style=\"background:#0071e3;\" onclick=\"sendKey('OK')\">OK</div>\n" +
                "      <div class=\"remote-btn\" onclick=\"sendKey('RIGHT')\">▶</div>\n" +
                "      <div></div><div class=\"remote-btn\" onclick=\"sendKey('DOWN')\">▼</div><div></div>\n" +
                "    </div>\n" +
                "    <div style=\"display:flex; gap:10px; margin-top:10px;\">\n" +
                "      <button class=\"btn btn-secondary\" style=\"flex:1;\" onclick=\"sendKey('BACK')\">↩ Back</button>\n" +
                "      <button class=\"btn btn-secondary\" style=\"flex:1;\" onclick=\"sendKey('HOME')\">🏠 Home</button>\n" +
                "    </div>\n" +
                "  </div>\n" +
                "\n" +
                "  <div id=\"toast\" class=\"toast\">✅ Done</div>\n" +
                "\n" +
                "  <script>\n" +
                "    const isIOS = /iPad|iPhone|iPod/.test(navigator.userAgent) || (navigator.platform === 'MacIntel' && navigator.maxTouchPoints > 1);\n" +
                "    if (isIOS) {\n" +
                "      document.getElementById('iosAirPlayCard').style.display = 'block';\n" +
                "    } else if (navigator.mediaDevices && navigator.mediaDevices.getDisplayMedia) {\n" +
                "      document.getElementById('browserMirrorCard').style.display = 'block';\n" +
                "    } else {\n" +
                "      document.getElementById('iosAirPlayCard').style.display = 'block';\n" +
                "    }\n" +
                "\n" +
                "    function showToast(msg) {\n" +
                "      const t = document.getElementById('toast');\n" +
                "      t.innerText = msg;\n" +
                "      t.style.display = 'block';\n" +
                "      setTimeout(() => { t.style.display = 'none'; }, 2500);\n" +
                "    }\n" +
                "\n" +
                "    let ws = null;\n" +
                "    let screenStream = null;\n" +
                "    let timer = null;\n" +
                "\n" +
                "    async function startScreenMirror() {\n" +
                "      try {\n" +
                "        screenStream = await navigator.mediaDevices.getDisplayMedia({\n" +
                "          video: { frameRate: 30, width: { ideal: 1280 }, height: { ideal: 720 } },\n" +
                "          audio: false\n" +
                "        });\n" +
                "        const video = document.createElement('video');\n" +
                "        video.srcObject = screenStream;\n" +
                "        await video.play();\n" +
                "\n" +
                "        const canvas = document.createElement('canvas');\n" +
                "        canvas.width = 1280;\n" +
                "        canvas.height = 720;\n" +
                "        const ctx = canvas.getContext('2d');\n" +
                "\n" +
                "        const host = window.location.host;\n" +
                "        ws = new WebSocket('ws://' + host);\n" +
                "        ws.binaryType = 'arraybuffer';\n" +
                "\n" +
                "        ws.onopen = () => {\n" +
                "          document.getElementById('btnStartMirror').style.display = 'none';\n" +
                "          document.getElementById('btnStopMirror').style.display = 'block';\n" +
                "          timer = setInterval(() => {\n" +
                "            if (video.readyState === video.HAVE_ENOUGH_DATA && ws && ws.readyState === WebSocket.OPEN) {\n" +
                "              ctx.drawImage(video, 0, 0, canvas.width, canvas.height);\n" +
                "              canvas.toBlob((blob) => {\n" +
                "                if (blob && ws.bufferedAmount < 500000) {\n" +
                "                  blob.arrayBuffer().then(buf => ws.send(buf));\n" +
                "                }\n" +
                "              }, 'image/jpeg', 0.70);\n" +
                "            }\n" +
                "          }, 45);\n" +
                "        };\n" +
                "\n" +
                "        screenStream.getVideoTracks()[0].onended = () => stopScreenMirror();\n" +
                "      } catch (err) {\n" +
                "        alert('Could not start screen capture: ' + err.message);\n" +
                "      }\n" +
                "    }\n" +
                "\n" +
                "    function stopScreenMirror() {\n" +
                "      if (timer) clearInterval(timer);\n" +
                "      if (ws) { ws.close(); ws = null; }\n" +
                "      if (screenStream) {\n" +
                "        screenStream.getTracks().forEach(t => t.stop());\n" +
                "        screenStream = null;\n" +
                "      }\n" +
                "      document.getElementById('btnStartMirror').style.display = 'block';\n" +
                "      document.getElementById('btnStopMirror').style.display = 'none';\n" +
                "      fetch('/api/stop', { method: 'POST' });\n" +
                "    }\n" +
                "\n" +
                "    async function uploadPhoto(input) {\n" +
                "      if (!input.files || input.files.length === 0) return;\n" +
                "      const file = input.files[0];\n" +
                "      const buf = await file.arrayBuffer();\n" +
                "      await fetch('/api/cast_photo', {\n" +
                "        method: 'POST',\n" +
                "        body: buf\n" +
                "      });\n" +
                "      showToast('✅ Photo casted to TV screen!');\n" +
                "    }\n" +
                "\n" +
                "    function sendKey(key) {\n" +
                "      fetch('/api/remote?key=' + key, { method: 'POST' });\n" +
                "      showToast('🎮 ' + key);\n" +
                "    }\n" +
                "  </script>\n" +
                "</body>\n" +
                "</html>";
    }
}
