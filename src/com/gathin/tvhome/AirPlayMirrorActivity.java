package com.gathin.tvhome;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.gathin.tvhome.qrcodegen.QrCode;

public class AirPlayMirrorActivity extends Activity implements AirPlayServer.AirPlayListener {
    private AirPlayServer server;
    private ImageView ivQrCode;
    private TextView tvAirPlayUrl;
    private TextView tvStatusBadge;
    private FrameLayout mirrorContainer;
    private LinearLayout qrContainer;
    private ImageView ivMirrorDisplay;
    private TextView tvMirrorOverlay;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_airplay);

        ivQrCode = findViewById(R.id.ivQrCode);
        tvAirPlayUrl = findViewById(R.id.tvAirPlayUrl);
        tvStatusBadge = findViewById(R.id.tvStatusBadge);
        mirrorContainer = findViewById(R.id.mirrorContainer);
        qrContainer = findViewById(R.id.qrContainer);
        ivMirrorDisplay = findViewById(R.id.ivMirrorDisplay);
        tvMirrorOverlay = findViewById(R.id.tvMirrorOverlay);

        String ip = AirPlayServer.getLocalIpAddress(this);
        String url = "http://" + ip + ":" + AirPlayServer.PORT;
        tvAirPlayUrl.setText(url);

        Bitmap qrBmp = generateQrBitmap(url, 400);
        if (qrBmp != null) {
            ivQrCode.setImageBitmap(qrBmp);
        }

        server = AirPlayServer.getInstance(this);
        server.setListener(this);
        server.startServer();

        View btnBack = findViewById(R.id.btnExitAirPlay);
        if (btnBack != null) {
            btnBack.setOnClickListener(v -> finish());
            btnBack.requestFocus();
        }
    }

    private Bitmap generateQrBitmap(String text, int sizePx) {
        try {
            QrCode qr = QrCode.encodeText(text, QrCode.Ecc.MEDIUM);
            int border = 2;
            int qrSize = qr.size + border * 2;
            Bitmap bmp = Bitmap.createBitmap(qrSize, qrSize, Bitmap.Config.ARGB_8888);
            for (int y = 0; y < qrSize; y++) {
                for (int x = 0; x < qrSize; x++) {
                    boolean isBlack = (x >= border && x < qr.size + border && y >= border && y < qr.size + border)
                            && qr.getModule(x - border, y - border);
                    bmp.setPixel(x, y, isBlack ? Color.BLACK : Color.WHITE);
                }
            }
            return Bitmap.createScaledBitmap(bmp, sizePx, sizePx, false);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public void onClientConnected(String clientIp) {
        tvStatusBadge.setText("🔵 iPhone Connected (" + clientIp + ")");
        tvStatusBadge.setTextColor(0xFF38BDF8);
    }

    @Override
    public void onScreenFrameReceived(Bitmap frame) {
        if (qrContainer.getVisibility() != View.GONE) {
            qrContainer.setVisibility(View.GONE);
            mirrorContainer.setVisibility(View.VISIBLE);
            tvMirrorOverlay.setText("📱 iPhone Screen Mirroring • Press BACK to exit");
        }
        ivMirrorDisplay.setImageBitmap(frame);
    }

    @Override
    public void onPhotoReceived(Bitmap photo) {
        if (qrContainer.getVisibility() != View.GONE) {
            qrContainer.setVisibility(View.GONE);
            mirrorContainer.setVisibility(View.VISIBLE);
            tvMirrorOverlay.setText("📸 iPhone Photo Cast • Press BACK to exit");
        }
        ivMirrorDisplay.setImageBitmap(photo);
    }

    @Override
    public void onVideoReceived(String videoPath) {
        // Optional video handler
    }

    @Override
    public void onRemoteKeyReceived(String key) {
        // Key already dispatched
    }

    @Override
    public void onMirrorStopped() {
        mirrorContainer.setVisibility(View.GONE);
        qrContainer.setVisibility(View.VISIBLE);
        tvStatusBadge.setText("🟢 Ready to Connect");
        tvStatusBadge.setTextColor(0xFF34D399);
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_BACK) {
            if (mirrorContainer.getVisibility() == View.VISIBLE) {
                onMirrorStopped();
                return true;
            }
            finish();
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (server != null) {
            server.setListener(null);
        }
    }
}
