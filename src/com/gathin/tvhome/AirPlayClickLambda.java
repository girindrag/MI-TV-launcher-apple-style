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
        // Priority 1: PigeonCast TV Receiver (exact requested video implementation for full iPhone screen mirroring via QR scan)
        try {
            Intent intent = activity.getPackageManager().getLaunchIntentForPackage("com.pigeoncast.screen.mirroring.android.tv");
            if (intent == null) {
                intent = activity.getPackageManager().getLeanbackLaunchIntentForPackage("com.pigeoncast.screen.mirroring.android.tv");
            }
            if (intent == null) {
                intent = new Intent();
                intent.setComponent(new ComponentName("com.pigeoncast.screen.mirroring.android.tv", "com.mirror_universal.receiver.activity.SplashActivity"));
            }
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            activity.startActivity(intent);
            return;
        } catch (Exception ignored) {}

        // Priority 2: AirDroid Cast TV receiver
        try {
            Intent intent = activity.getPackageManager().getLaunchIntentForPackage("com.sand.aircasttv");
            if (intent != null) {
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                activity.startActivity(intent);
                return;
            }
        } catch (Exception ignored) {}

        // Priority 3: Fallback built-in activity
        Intent fallback = new Intent(activity, AirPlayMirrorActivity.class);
        fallback.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        activity.startActivity(fallback);
    }
}
