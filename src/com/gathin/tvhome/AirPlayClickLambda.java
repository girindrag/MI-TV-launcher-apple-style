package com.gathin.tvhome;

import android.content.Intent;
import android.view.View;

public class AirPlayClickLambda implements View.OnClickListener {
    private final MainActivity activity;

    public AirPlayClickLambda(MainActivity activity) {
        this.activity = activity;
    }

    @Override
    public void onClick(View v) {
        try {
            Intent launchIntent = activity.getPackageManager().getLaunchIntentForPackage("io.github.jqssun.airplay");
            if (launchIntent != null) {
                launchIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                activity.startActivity(launchIntent);
                return;
            }
        } catch (Exception ignored) {}

        Intent fallback = new Intent(activity, AirPlayMirrorActivity.class);
        activity.startActivity(fallback);
    }
}
