package com.gathin.tvhome;

import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.view.View;

public class AirPlayClickLambda implements View.OnClickListener {
    private final MainActivity activity;

    public AirPlayClickLambda(MainActivity activity) {
        this.activity = activity;
    }

    @Override
    public void onClick(View v) {
        // Launch PigeonCast TV Receiver
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

        // Fallback: Open Google Play Store for PigeonCast
        try {
            Intent marketIntent = new Intent(Intent.ACTION_VIEW, Uri.parse("market://details?id=com.pigeoncast.screen.mirroring.android.tv"));
            marketIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            activity.startActivity(marketIntent);
        } catch (Exception ignored) {}
    }
}
