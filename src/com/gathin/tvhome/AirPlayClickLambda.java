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
        // Ensure background AirPlay receiver service is running
        try {
            Intent broadcast = new Intent("io.github.jqssun.airplay.START_SERVER");
            activity.sendBroadcast(broadcast);
        } catch (Exception ignored) {}

        // Launch Native Apple Style AirPlay Activity directly
        Intent intent = new Intent(activity, AirPlayMirrorActivity.class);
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        activity.startActivity(intent);
    }
}
