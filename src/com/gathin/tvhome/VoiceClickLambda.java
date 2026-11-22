package com.gathin.tvhome;

import android.app.Activity;
import android.view.View;

public class VoiceClickLambda implements View.OnClickListener {
    private final Activity activity;

    public VoiceClickLambda(Activity activity) {
        this.activity = activity;
    }

    @Override
    public void onClick(View v) {
        HeySiriVoiceManager.toggleVoice(activity);
    }
}
