.class public Lcom/gathin/tvhome/AirPlayServer;
.super Ljava/lang/Object;
.source "AirPlayServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gathin/tvhome/AirPlayServer$AirPlayListener;
    }
.end annotation


# static fields
.field public static final PORT:I = 0x1b9e

.field private static final TAG:Ljava/lang/String; = "AirPlayServer"

.field private static instance:Lcom/gathin/tvhome/AirPlayServer;


# instance fields
.field private final context:Landroid/content/Context;

.field private isRunning:Z

.field private listener:Lcom/gathin/tvhome/AirPlayServer$AirPlayListener;

.field private final mainHandler:Landroid/os/Handler;

.field private serverSocket:Ljava/net/ServerSocket;

.field private final threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gathin/tvhome/AirPlayServer;->isRunning:Z

    .line 38
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/gathin/tvhome/AirPlayServer;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/gathin/tvhome/AirPlayServer;->mainHandler:Landroid/os/Handler;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/gathin/tvhome/AirPlayServer;->context:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/gathin/tvhome/AirPlayServer;
    .locals 2

    const-class v0, Lcom/gathin/tvhome/AirPlayServer;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/gathin/tvhome/AirPlayServer;->instance:Lcom/gathin/tvhome/AirPlayServer;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/gathin/tvhome/AirPlayServer;

    invoke-direct {v1, p0}, Lcom/gathin/tvhome/AirPlayServer;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/gathin/tvhome/AirPlayServer;->instance:Lcom/gathin/tvhome/AirPlayServer;

    .line 50
    :cond_0
    sget-object p0, Lcom/gathin/tvhome/AirPlayServer;->instance:Lcom/gathin/tvhome/AirPlayServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 46
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getLocalIpAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 85
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 86
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p0

    .line 88
    if-eqz p0, :cond_0

    .line 89
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d.%d.%d.%d"

    and-int/lit16 v2, p0, 0xff

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    shr-int/lit8 v4, p0, 0x10

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v3, v5, v2

    const/4 v2, 0x2

    aput-object v4, v5, v2

    const/4 v2, 0x3

    aput-object p0, v5, v2

    .line 89
    invoke-static {v0, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 93
    :catch_0
    move-exception p0

    :cond_0
    nop

    .line 95
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 97
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 99
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v2, v1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_1

    .line 100
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 102
    :cond_1
    goto :goto_1

    .line 103
    :cond_2
    goto :goto_0

    .line 104
    :catch_1
    move-exception p0

    :cond_3
    nop

    .line 105
    const-string p0, "192.168.1.3"

    return-object p0
.end method

.method private getWebPageHtml()Ljava/lang/String;
    .locals 1

    .line 326
    const-string v0, "<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n  <meta charset=\"UTF-8\">\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\">\n  <title>\uf8ff AirPlay Mirroring \u2014 Mi TV</title>\n  <style>\n    * { box-sizing: border-box; margin: 0; padding: 0; font-family: -apple-system, BlinkMacSystemFont, \'SF Pro Display\', \'Helvetica Neue\', sans-serif; }\n    body { background: #000; color: #fff; min-height: 100vh; display: flex; flex-direction: column; align-items: center; padding: 24px 16px; }\n    .header { text-align: center; margin-bottom: 24px; }\n    .logo { font-size: 42px; margin-bottom: 8px; }\n    h1 { font-size: 24px; font-weight: 700; }\n    p.sub { color: #86868b; font-size: 14px; margin-top: 4px; }\n    .status-badge { display: inline-flex; align-items: center; background: rgba(52, 199, 89, 0.15); color: #34c759; padding: 6px 14px; border-radius: 20px; font-size: 13px; font-weight: 600; margin-top: 12px; }\n    .status-dot { width: 8px; height: 8px; background: #34c759; border-radius: 50%; margin-right: 6px; }\n    .card { width: 100%; max-width: 380px; background: #1c1c1e; border: 1px solid rgba(255,255,255,0.1); border-radius: 20px; padding: 20px; margin-bottom: 16px; }\n    .card-title { font-size: 17px; font-weight: 600; margin-bottom: 6px; display: flex; align-items: center; gap: 8px; }\n    .card-desc { font-size: 13px; color: #a1a1a6; margin-bottom: 16px; line-height: 1.4; }\n    .step-box { background: rgba(255,255,255,0.06); border-radius: 12px; padding: 12px; margin-bottom: 8px; font-size: 14px; line-height: 1.5; color: #e2e8f0; display: flex; align-items: flex-start; gap: 10px; }\n    .step-num { background: #0071e3; color: #fff; width: 22px; height: 22px; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-size: 12px; font-weight: bold; flex-shrink: 0; }\n    button.btn { width: 100%; background: #0071e3; color: #fff; border: none; border-radius: 12px; padding: 14px; font-size: 16px; font-weight: 600; cursor: pointer; transition: all 0.2s; }\n    button.btn:active { transform: scale(0.98); opacity: 0.9; }\n    button.btn-secondary { background: rgba(255,255,255,0.12); color: #fff; margin-top: 10px; }\n    button.btn-danger { background: #ff3b30; margin-top: 10px; }\n    .remote-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 10px; margin-top: 12px; }\n    .remote-btn { background: #2c2c2e; border: 1px solid rgba(255,255,255,0.08); border-radius: 12px; padding: 14px; font-size: 15px; font-weight: 600; color: #fff; cursor: pointer; text-align: center; }\n    .remote-btn:active { background: #0071e3; }\n    .toast { position: fixed; bottom: 20px; background: #34c759; color: #000; padding: 12px 24px; border-radius: 24px; font-weight: 600; font-size: 14px; display: none; z-index: 999; box-shadow: 0 4px 12px rgba(0,0,0,0.5); }\n    #fileInput { display: none; }\n  </style>\n</head>\n<body>\n  <div class=\"header\">\n    <div class=\"logo\">\uf8ff</div>\n    <h1>Living Room TV</h1>\n    <p class=\"sub\">Apple Style TV Mirroring Hub</p>\n    <div class=\"status-badge\"><div class=\"status-dot\"></div> AirPlay Active on Wi-Fi</div>\n  </div>\n\n  <!-- iOS Native AirPlay Instruction Card (Shown on iPhone/iPad) -->\n  <div id=\"iosAirPlayCard\" class=\"card\" style=\"display:none; border: 1px solid rgba(56, 189, 248, 0.4); background: linear-gradient(180deg, #1e293b 0%, #0f172a 100%);\">\n    <div class=\"card-title\">\u2728 Mirror Full iPhone Screen</div>\n    <div class=\"card-desc\">Mirror your entire iPhone screen wirelessly without extra apps:</div>\n    <div class=\"step-box\"><div class=\"step-num\">1</div><div>Swipe down from top-right corner to open <b>Control Center</b></div></div>\n    <div class=\"step-box\"><div class=\"step-num\">2</div><div>Tap <b>Screen Mirroring</b> (overlapping screens icon)</div></div>\n    <div class=\"step-box\"><div class=\"step-num\">3</div><div>Select <b>Android AirPlay</b> from the list</div></div>\n    <div style=\"color: #34d399; font-size: 13px; font-weight: 600; text-align: center; margin-top: 10px;\">\ud83d\udfe2 Receiver Ready &amp; Broadcasting</div>\n  </div>\n\n  <!-- Desktop / Browser Screen Mirroring Card -->\n  <div id=\"browserMirrorCard\" class=\"card\" style=\"display:none;\">\n    <div class=\"card-title\">\ud83d\udcbb Browser Screen Mirroring</div>\n    <div class=\"card-desc\">Mirror your laptop or computer screen live to the TV.</div>\n    <button id=\"btnStartMirror\" class=\"btn\" onclick=\"startScreenMirror()\">\ud83d\udcfa Start Screen Mirroring</button>\n    <button id=\"btnStopMirror\" class=\"btn btn-danger\" style=\"display:none;\" onclick=\"stopScreenMirror()\">\u23f9 Stop Mirroring</button>\n  </div>\n\n  <!-- Cast Photos Card -->\n  <div class=\"card\">\n    <div class=\"card-title\">\ud83d\udcf8 Cast Photos to TV</div>\n    <div class=\"card-desc\">Select photos from your iPhone Camera Roll to showcase in 4K on TV.</div>\n    <input type=\"file\" id=\"fileInput\" accept=\"image/*\" onchange=\"uploadPhoto(this)\">\n    <button class=\"btn btn-secondary\" onclick=\"document.getElementById(\'fileInput\').click()\">\ud83d\uddbc\ufe0f Choose Photo from Library</button>\n  </div>\n\n  <!-- TV Remote Card -->\n  <div class=\"card\">\n    <div class=\"card-title\">\ud83c\udfae Touch TV Remote</div>\n    <div class=\"remote-grid\">\n      <div></div><div class=\"remote-btn\" onclick=\"sendKey(\'UP\')\">\u25b2</div><div></div>\n      <div class=\"remote-btn\" onclick=\"sendKey(\'LEFT\')\">\u25c0</div>\n      <div class=\"remote-btn\" style=\"background:#0071e3;\" onclick=\"sendKey(\'OK\')\">OK</div>\n      <div class=\"remote-btn\" onclick=\"sendKey(\'RIGHT\')\">\u25b6</div>\n      <div></div><div class=\"remote-btn\" onclick=\"sendKey(\'DOWN\')\">\u25bc</div><div></div>\n    </div>\n    <div style=\"display:flex; gap:10px; margin-top:10px;\">\n      <button class=\"btn btn-secondary\" style=\"flex:1;\" onclick=\"sendKey(\'BACK\')\">\u21a9 Back</button>\n      <button class=\"btn btn-secondary\" style=\"flex:1;\" onclick=\"sendKey(\'HOME\')\">\ud83c\udfe0 Home</button>\n    </div>\n  </div>\n\n  <div id=\"toast\" class=\"toast\">\u2705 Done</div>\n\n  <script>\n    const isIOS = /iPad|iPhone|iPod/.test(navigator.userAgent) || (navigator.platform === \'MacIntel\' && navigator.maxTouchPoints > 1);\n    if (isIOS) {\n      document.getElementById(\'iosAirPlayCard\').style.display = \'block\';\n    } else if (navigator.mediaDevices && navigator.mediaDevices.getDisplayMedia) {\n      document.getElementById(\'browserMirrorCard\').style.display = \'block\';\n    } else {\n      document.getElementById(\'iosAirPlayCard\').style.display = \'block\';\n    }\n\n    function showToast(msg) {\n      const t = document.getElementById(\'toast\');\n      t.innerText = msg;\n      t.style.display = \'block\';\n      setTimeout(() => { t.style.display = \'none\'; }, 2500);\n    }\n\n    let ws = null;\n    let screenStream = null;\n    let timer = null;\n\n    async function startScreenMirror() {\n      try {\n        screenStream = await navigator.mediaDevices.getDisplayMedia({\n          video: { frameRate: 30, width: { ideal: 1280 }, height: { ideal: 720 } },\n          audio: false\n        });\n        const video = document.createElement(\'video\');\n        video.srcObject = screenStream;\n        await video.play();\n\n        const canvas = document.createElement(\'canvas\');\n        canvas.width = 1280;\n        canvas.height = 720;\n        const ctx = canvas.getContext(\'2d\');\n\n        const host = window.location.host;\n        ws = new WebSocket(\'ws://\' + host);\n        ws.binaryType = \'arraybuffer\';\n\n        ws.onopen = () => {\n          document.getElementById(\'btnStartMirror\').style.display = \'none\';\n          document.getElementById(\'btnStopMirror\').style.display = \'block\';\n          timer = setInterval(() => {\n            if (video.readyState === video.HAVE_ENOUGH_DATA && ws && ws.readyState === WebSocket.OPEN) {\n              ctx.drawImage(video, 0, 0, canvas.width, canvas.height);\n              canvas.toBlob((blob) => {\n                if (blob && ws.bufferedAmount < 500000) {\n                  blob.arrayBuffer().then(buf => ws.send(buf));\n                }\n              }, \'image/jpeg\', 0.70);\n            }\n          }, 45);\n        };\n\n        screenStream.getVideoTracks()[0].onended = () => stopScreenMirror();\n      } catch (err) {\n        alert(\'Could not start screen capture: \' + err.message);\n      }\n    }\n\n    function stopScreenMirror() {\n      if (timer) clearInterval(timer);\n      if (ws) { ws.close(); ws = null; }\n      if (screenStream) {\n        screenStream.getTracks().forEach(t => t.stop());\n        screenStream = null;\n      }\n      document.getElementById(\'btnStartMirror\').style.display = \'block\';\n      document.getElementById(\'btnStopMirror\').style.display = \'none\';\n      fetch(\'/api/stop\', { method: \'POST\' });\n    }\n\n    async function uploadPhoto(input) {\n      if (!input.files || input.files.length === 0) return;\n      const file = input.files[0];\n      const buf = await file.arrayBuffer();\n      await fetch(\'/api/cast_photo\', {\n        method: \'POST\',\n        body: buf\n      });\n      showToast(\'\u2705 Photo casted to TV screen!\');\n    }\n\n    function sendKey(key) {\n      fetch(\'/api/remote?key=\' + key, { method: \'POST\' });\n      showToast(\'\ud83c\udfae \' + key);\n    }\n  </script>\n</body>\n</html>"

    return-object v0
.end method

.method private handleClient(Ljava/net/Socket;)V
    .locals 13

    .line 110
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 111
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 113
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 114
    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    .line 115
    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v7

    if-eq v7, v3, :cond_1

    .line 116
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 117
    const/16 v8, 0xd

    if-ne v4, v8, :cond_0

    const/16 v4, 0xa

    if-ne v5, v4, :cond_0

    if-ne v6, v8, :cond_0

    if-ne v7, v4, :cond_0

    .line 118
    goto :goto_1

    .line 120
    :cond_0
    nop

    .line 121
    nop

    .line 122
    move v4, v5

    move v5, v6

    move v6, v7

    goto :goto_0

    .line 125
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 126
    const-string v2, "\r\n"

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 127
    array-length v3, v2

    if-eqz v3, :cond_12

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_6

    .line 132
    :cond_2
    aget-object v4, v2, v3

    .line 133
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 134
    array-length v5, v4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_3

    .line 135
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 136
    return-void

    .line 139
    :cond_3
    aget-object v5, v4, v3

    .line 140
    const/4 v6, 0x1

    aget-object v4, v4, v6

    .line 142
    nop

    .line 143
    nop

    .line 144
    nop

    .line 146
    const/4 v7, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    const/4 v9, 0x1

    :goto_2
    array-length v10, v2

    if-ge v9, v10, :cond_7

    .line 147
    aget-object v10, v2, v9

    .line 148
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 149
    const-string v12, "content-length:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 150
    const/16 v7, 0xf

    invoke-virtual {v10, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_3

    .line 151
    :cond_4
    const-string v12, "sec-websocket-key:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 152
    const/16 v8, 0x12

    invoke-virtual {v10, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 153
    :cond_5
    const-string v10, "upgrade:"

    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "websocket"

    invoke-virtual {v11, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 154
    const/4 v3, 0x1

    .line 146
    :cond_6
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 158
    :cond_7
    if-eqz v3, :cond_8

    if-eqz v8, :cond_8

    .line 159
    invoke-direct {p0, p1, v0, v1, v8}, Lcom/gathin/tvhome/AirPlayServer;->handleWebSocket(Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 160
    return-void

    .line 163
    :cond_8
    const-string v2, "GET"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 164
    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "/?"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    .line 166
    :cond_9
    const-string v0, "/status"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 167
    const-string v0, "{\"status\":\"ready\",\"tv\":\"Mi TV (Apple Style)\"}"

    invoke-direct {p0, v1, v0}, Lcom/gathin/tvhome/AirPlayServer;->sendJsonResponse(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_5

    .line 169
    :cond_a
    invoke-direct {p0, v1}, Lcom/gathin/tvhome/AirPlayServer;->send404(Ljava/io/OutputStream;)V

    goto :goto_5

    .line 165
    :cond_b
    :goto_4
    invoke-direct {p0, v1}, Lcom/gathin/tvhome/AirPlayServer;->sendHtmlResponse(Ljava/io/OutputStream;)V

    goto :goto_5

    .line 171
    :cond_c
    const-string v2, "POST"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 172
    const-string v2, "/api/remote"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "{\"success\":true}"

    if-eqz v2, :cond_d

    .line 173
    :try_start_1
    invoke-direct {p0, v4}, Lcom/gathin/tvhome/AirPlayServer;->handleRemoteKey(Ljava/lang/String;)V

    .line 174
    invoke-direct {p0, v1, v3}, Lcom/gathin/tvhome/AirPlayServer;->sendJsonResponse(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_5

    .line 175
    :cond_d
    const-string v2, "/api/cast_photo"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 176
    invoke-direct {p0, v0, v7}, Lcom/gathin/tvhome/AirPlayServer;->handlePhotoUpload(Ljava/io/InputStream;I)V

    .line 177
    invoke-direct {p0, v1, v3}, Lcom/gathin/tvhome/AirPlayServer;->sendJsonResponse(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_5

    .line 178
    :cond_e
    const-string v0, "/api/stop"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 179
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayServer;->listener:Lcom/gathin/tvhome/AirPlayServer$AirPlayListener;

    if-eqz v0, :cond_f

    .line 180
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayServer;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/gathin/tvhome/AirPlayServer$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/gathin/tvhome/AirPlayServer$$ExternalSyntheticLambda2;-><init>(Lcom/gathin/tvhome/AirPlayServer;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    :cond_f
    invoke-direct {p0, v1, v3}, Lcom/gathin/tvhome/AirPlayServer;->sendJsonResponse(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_5

    .line 184
    :cond_10
    const-string v0, "{\"success\":false,\"error\":\"not_found\"}"

    invoke-direct {p0, v1, v0}, Lcom/gathin/tvhome/AirPlayServer;->sendJsonResponse(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 187
    :cond_11
    :goto_5
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 190
    goto :goto_7

    .line 128
    :cond_12
    :goto_6
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    return-void

    .line 188
    :catch_0
    move-exception p1

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client handle error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AirPlayServer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_7
    return-void
.end method

.method private handlePhotoUpload(Ljava/io/InputStream;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    if-gtz p2, :cond_0

    return-void

    .line 220
    :cond_0
    new-array v0, p2, [B

    .line 221
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 222
    :goto_0
    if-ge v2, p2, :cond_2

    .line 223
    sub-int v3, p2, v2

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 224
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 225
    :cond_1
    add-int/2addr v2, v3

    .line 226
    goto :goto_0

    .line 227
    :cond_2
    :goto_1
    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 228
    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/gathin/tvhome/AirPlayServer;->listener:Lcom/gathin/tvhome/AirPlayServer$AirPlayListener;

    if-eqz p2, :cond_3

    .line 229
    iget-object p2, p0, Lcom/gathin/tvhome/AirPlayServer;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/gathin/tvhome/AirPlayServer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/gathin/tvhome/AirPlayServer$$ExternalSyntheticLambda1;-><init>(Lcom/gathin/tvhome/AirPlayServer;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    :cond_3
    return-void
.end method

.method private handleRemoteKey(Ljava/lang/String;)V
    .locals 5

    .line 195
    const-string v0, "&"

    const-string v1, "key="

    :try_start_0
    const-string v2, "OK"

    .line 196
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_0

    .line 197
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {v2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 200
    :cond_0
    nop

    .line 201
    iget-object p1, p0, Lcom/gathin/tvhome/AirPlayServer;->listener:Lcom/gathin/tvhome/AirPlayServer$AirPlayListener;

    if-eqz p1, :cond_1

    .line 202
    iget-object p1, p0, Lcom/gathin/tvhome/AirPlayServer;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/gathin/tvhome/AirPlayServer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v2}, Lcom/gathin/tvhome/AirPlayServer$$ExternalSyntheticLambda0;-><init>(Lcom/gathin/tvhome/AirPlayServer;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    :cond_1
    nop

    .line 205
    const-string p1, "UP"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v4, 0x13

    goto :goto_0

    .line 206
    :cond_2
    const-string p1, "DOWN"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 v4, 0x14

    goto :goto_0

    .line 207
    :cond_3
    const-string p1, "LEFT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 v4, 0x15

    goto :goto_0

    .line 208
    :cond_4
    const-string p1, "RIGHT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 v4, 0x16

    goto :goto_0

    .line 209
    :cond_5
    const-string p1, "BACK"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    .line 210
    :cond_6
    const-string p1, "HOME"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 v4, 0x3

    goto :goto_0

    .line 211
    :cond_7
    const-string p1, "VOLUP"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/16 v4, 0x18

    goto :goto_0

    .line 212
    :cond_8
    const-string p1, "VOLDOWN"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 v4, 0x19

    goto :goto_0

    :cond_9
    const/16 v4, 0x17

    .line 214
    :goto_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "input keyevent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 215
    :catch_0
    move-exception p1

    :goto_1
    nop

    .line 216
    return-void
.end method

.method private handleWebSocket(Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 9

    .line 236
    :try_start_0
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    const-string v1, "SHA-1"

    .line 237
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v2, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p4

    .line 236
    invoke-virtual {v0, p4}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p4

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP/1.1 101 Switching Protocols\r\nUpgrade: websocket\r\nConnection: Upgrade\r\nSec-WebSocket-Accept: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, "\r\n\r\n"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 244
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/io/OutputStream;->write([B)V

    .line 245
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 247
    iget-object p3, p0, Lcom/gathin/tvhome/AirPlayServer;->listener:Lcom/gathin/tvhome/AirPlayServer$AirPlayListener;

    if-eqz p3, :cond_0

    .line 248
    iget-object p3, p0, Lcom/gathin/tvhome/AirPlayServer;->mainHandler:Landroid/os/Handler;

    new-instance p4, Lcom/gathin/tvhome/AirPlayServer$$ExternalSyntheticLambda3;

    invoke-direct {p4, p0, p1}, Lcom/gathin/tvhome/AirPlayServer$$ExternalSyntheticLambda3;-><init>(Lcom/gathin/tvhome/AirPlayServer;Ljava/net/Socket;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 252
    :cond_0
    new-instance p3, Ljava/io/DataInputStream;

    invoke-direct {p3, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 253
    :goto_0
    iget-boolean p2, p0, Lcom/gathin/tvhome/AirPlayServer;->isRunning:Z

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result p2

    if-nez p2, :cond_9

    .line 254
    invoke-virtual {p3}, Ljava/io/DataInputStream;->read()I

    move-result p2

    .line 255
    const/4 p4, -0x1

    if-ne p2, p4, :cond_1

    goto/16 :goto_4

    .line 256
    :cond_1
    and-int/lit8 p2, p2, 0xf

    .line 257
    const/16 p4, 0x8

    if-ne p2, p4, :cond_2

    .line 258
    goto/16 :goto_4

    .line 261
    :cond_2
    invoke-virtual {p3}, Ljava/io/DataInputStream;->read()I

    move-result p4

    .line 262
    and-int/lit16 v0, p4, 0x80

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 263
    :goto_1
    and-int/lit8 p4, p4, 0x7f

    int-to-long v2, p4

    .line 264
    const-wide/16 v4, 0x7e

    cmp-long p4, v2, v4

    if-nez p4, :cond_4

    .line 265
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p4

    int-to-long v2, p4

    goto :goto_2

    .line 266
    :cond_4
    const-wide/16 v4, 0x7f

    cmp-long p4, v2, v4

    if-nez p4, :cond_5

    .line 267
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    .line 270
    :cond_5
    :goto_2
    const/4 p4, 0x4

    new-array p4, p4, [B

    .line 271
    if-eqz v0, :cond_6

    .line 272
    invoke-virtual {p3, p4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 275
    :cond_6
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_8

    const-wide/32 v4, 0x989680

    cmp-long v6, v2, v4

    if-gez v6, :cond_8

    .line 276
    long-to-int v4, v2

    new-array v5, v4, [B

    .line 277
    invoke-virtual {p3, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 278
    if-eqz v0, :cond_7

    .line 279
    const/4 v0, 0x0

    :goto_3
    int-to-long v6, v0

    cmp-long v8, v6, v2

    if-gez v8, :cond_7

    .line 280
    aget-byte v6, v5, v0

    rem-int/lit8 v7, v0, 0x4

    aget-byte v7, p4, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 284
    :cond_7
    const/4 p4, 0x2

    if-ne p2, p4, :cond_8

    .line 285
    invoke-static {v5, v1, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 286
    if-eqz p2, :cond_8

    iget-object p4, p0, Lcom/gathin/tvhome/AirPlayServer;->listener:Lcom/gathin/tvhome/AirPlayServer$AirPlayListener;

    if-eqz p4, :cond_8

    .line 287
    iget-object p4, p0, Lcom/gathin/tvhome/AirPlayServer;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/gathin/tvhome/AirPlayServer$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2}, Lcom/gathin/tvhome/AirPlayServer$$ExternalSyntheticLambda4;-><init>(Lcom/gathin/tvhome/AirPlayServer;Landroid/graphics/Bitmap;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 291
    :cond_8
    goto/16 :goto_0

    .line 292
    :cond_9
    :goto_4
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 293
    :catch_0
    move-exception p1

    :goto_5
    nop

    .line 294
    return-void
.end method

.method private send404(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    nop

    .line 309
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "HTTP/1.1 404 Not Found\r\nContent-Length: 0\r\n\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 310
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 311
    return-void
.end method

.method private sendHtmlResponse(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    invoke-direct {p0}, Lcom/gathin/tvhome/AirPlayServer;->getWebPageHtml()Ljava/lang/String;

    move-result-object v0

    .line 315
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP/1.1 200 OK\r\nContent-Type: text/html; charset=utf-8\r\nAccess-Control-Allow-Origin: *\r\nContent-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 321
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 322
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 323
    return-void
.end method

.method private sendJsonResponse(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP/1.1 200 OK\r\nContent-Type: application/json\r\nAccess-Control-Allow-Origin: *\r\nContent-Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 303
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 304
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 305
    return-void
.end method


# virtual methods
.method synthetic lambda$handleClient$0$com-gathin-tvhome-AirPlayServer()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayServer;->listener:Lcom/gathin/tvhome/AirPlayServer$AirPlayListener;

    invoke-interface {v0}, Lcom/gathin/tvhome/AirPlayServer$AirPlayListener;->onMirrorStopped()V

    return-void
.end method

.method synthetic lambda$handlePhotoUpload$0$com-gathin-tvhome-AirPlayServer(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayServer;->listener:Lcom/gathin/tvhome/AirPlayServer$AirPlayListener;

    invoke-interface {v0, p1}, Lcom/gathin/tvhome/AirPlayServer$AirPlayListener;->onPhotoReceived(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method synthetic lambda$handleRemoteKey$0$com-gathin-tvhome-AirPlayServer(Ljava/lang/String;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayServer;->listener:Lcom/gathin/tvhome/AirPlayServer$AirPlayListener;

    invoke-interface {v0, p1}, Lcom/gathin/tvhome/AirPlayServer$AirPlayListener;->onRemoteKeyReceived(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$handleWebSocket$0$com-gathin-tvhome-AirPlayServer(Ljava/net/Socket;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayServer;->listener:Lcom/gathin/tvhome/AirPlayServer$AirPlayListener;

    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/gathin/tvhome/AirPlayServer$AirPlayListener;->onClientConnected(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$handleWebSocket$1$com-gathin-tvhome-AirPlayServer(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayServer;->listener:Lcom/gathin/tvhome/AirPlayServer$AirPlayListener;

    invoke-interface {v0, p1}, Lcom/gathin/tvhome/AirPlayServer$AirPlayListener;->onScreenFrameReceived(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method synthetic lambda$startServer$0$com-gathin-tvhome-AirPlayServer()V
    .locals 4

    .line 62
    const-string v0, "AirPlayServer"

    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    const/16 v2, 0x1b9e

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v1, p0, Lcom/gathin/tvhome/AirPlayServer;->serverSocket:Ljava/net/ServerSocket;

    .line 63
    const-string v1, "AirPlayServer started on port 7070"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_0
    iget-boolean v1, p0, Lcom/gathin/tvhome/AirPlayServer;->isRunning:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gathin/tvhome/AirPlayServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/gathin/tvhome/AirPlayServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 66
    iget-object v2, p0, Lcom/gathin/tvhome/AirPlayServer;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/gathin/tvhome/AirPlayServer$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v1}, Lcom/gathin/tvhome/AirPlayServer$$ExternalSyntheticLambda5;-><init>(Lcom/gathin/tvhome/AirPlayServer;Ljava/net/Socket;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_0

    .line 70
    :cond_0
    goto :goto_1

    .line 68
    :catch_0
    move-exception v1

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_1
    return-void
.end method

.method synthetic lambda$startServer$1$com-gathin-tvhome-AirPlayServer(Ljava/net/Socket;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/gathin/tvhome/AirPlayServer;->handleClient(Ljava/net/Socket;)V

    return-void
.end method

.method public setListener(Lcom/gathin/tvhome/AirPlayServer$AirPlayListener;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/gathin/tvhome/AirPlayServer;->listener:Lcom/gathin/tvhome/AirPlayServer$AirPlayListener;

    .line 55
    return-void
.end method

.method public declared-synchronized startServer()V
    .locals 2

    monitor-enter p0

    .line 58
    :try_start_0
    iget-boolean v0, p0, Lcom/gathin/tvhome/AirPlayServer;->isRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 59
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/gathin/tvhome/AirPlayServer;->isRunning:Z

    .line 60
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayServer;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/gathin/tvhome/AirPlayServer$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/gathin/tvhome/AirPlayServer$$ExternalSyntheticLambda6;-><init>(Lcom/gathin/tvhome/AirPlayServer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopServer()V
    .locals 1

    monitor-enter p0

    .line 75
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/gathin/tvhome/AirPlayServer;->isRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 81
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
