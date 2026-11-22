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
        // Priority 1: AirDroid Cast TV (seamless cross-platform mirroring for iOS, Android, PC/Mac)
        try {
            Intent intent = activity.getPackageManager().getLaunchIntentForPackage("com.sand.aircasttv");
            if (intent == null) {
                intent = activity.getPackageManager().getLeanbackLaunchIntentForPackage("com.sand.aircasttv");
            }
            if (intent == null) {
                intent = new Intent();
                intent.setComponent(new ComponentName("com.sand.aircasttv", "com.sand.aircast.ui.SplashTvActivity"));
            }
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            activity.startActivity(intent);
            return;
        } catch (Exception ignored) {}

        // Priority 2: Native AirPlay receiver
        try {
            Intent launchIntent = activity.getPackageManager().getLaunchIntentForPackage("io.github.jqssun.airplay");
            if (launchIntent != null) {
                launchIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                activity.startActivity(launchIntent);
                return;
            }
        } catch (Exception ignored) {}

        // Priority 3: Built-in AirPlay mirror activity fallback
        Intent fallback = new Intent(activity, AirPlayMirrorActivity.class);
        fallback.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        activity.startActivity(fallback);
    }
}
