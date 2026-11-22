package com.gathin.tvhome;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class TvVoiceAssistant {
    private static final String TAG = "TvVoiceAssistant";

    public static void start(Context context) {
        try {
            Intent intent = new Intent(context, VoiceAssistantActivity.class);
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_SINGLE_TOP);
            context.startActivity(intent);
            Log.d(TAG, "Started VoiceAssistantActivity");
        } catch (Exception e) {
            Log.e(TAG, "Error starting VoiceAssistantActivity", e);
        }
    }

    public static boolean isVoiceKey(int keyCode) {
        return keyCode == 231   // KEYCODE_VOICE_ASSIST (Standard Android TV Mic button)
            || keyCode == 84    // KEYCODE_SEARCH (Android Search / Voice hotkey)
            || keyCode == 219;  // KEYCODE_ASSIST
    }

    public static boolean handleVoiceKey(Context context, int keyCode, int action) {
        if (!isVoiceKey(keyCode)) return false;
        if (action == 1) { // KeyEvent.ACTION_UP
            Log.d(TAG, "Voice hotkey intercepted: " + keyCode);
            start(context);
        }
        return true;
    }

    public static boolean handleVoiceKeyFromActivity(Activity activity, int keyCode, int action) {
        if (!isVoiceKey(keyCode)) return false;
        if (action == 1) { // KeyEvent.ACTION_UP
            Log.d(TAG, "Voice hotkey intercepted from Activity: " + keyCode);
            start(activity);
        }
        return true;
    }
}
