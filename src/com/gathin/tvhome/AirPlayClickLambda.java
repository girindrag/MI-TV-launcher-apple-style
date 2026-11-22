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
        Intent intent = new Intent(activity, AirPlayMirrorActivity.class);
        activity.startActivity(intent);
    }
}
