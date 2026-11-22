package com.gathin.tvhome;

import android.content.ComponentName;
import android.content.Intent;
import android.view.View;

public class AirPlayClickLambda implements View.OnClickListener {
    private final MainActivity activity;

    public AirPlayClickLambda(MainActivity activity) {
        this.activity = activity;
    }

    @Override
    public void onClick(View v) {
        // Start background AirPlay receiver service
        try {
            Intent broadcast = new Intent("io.github.jqssun.airplay.START_SERVER");
            activity.sendBroadcast(broadcast);
        } catch (Exception ignored) {}

        // Launch full-screen AirPlay Mirroring Receiver
        try {
            Intent intent = activity.getPackageManager().getLaunchIntentForPackage("io.github.jqssun.airplay");
            if (intent == null) {
                intent = new Intent();
                intent.setComponent(new ComponentName("io.github.jqssun.airplay", "io.github.jqssun.airplay.MainActivity"));
            }
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            activity.startActivity(intent);
            return;
        } catch (Exception ignored) {}

        // Fallback to built-in activity
        Intent fallback = new Intent(activity, AirPlayMirrorActivity.class);
        fallback.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        activity.startActivity(fallback);
    }
}
