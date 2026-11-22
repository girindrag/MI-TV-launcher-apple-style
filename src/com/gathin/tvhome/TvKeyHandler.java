package com.gathin.tvhome;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.provider.Settings;
import android.util.Log;

public class TvKeyHandler {
    private static final String TAG = "TvKeyHandler";

    public static boolean isVoiceKey(int keyCode) {
        return keyCode == 231   // KEYCODE_VOICE_ASSIST (Standard Android TV Mic button)
            || keyCode == 84    // KEYCODE_SEARCH (Android Search / Voice hotkey)
            || keyCode == 219;  // KEYCODE_ASSIST
    }

    public static boolean handleVoiceKey(Context context, int keyCode, int action) {
        if (!isVoiceKey(keyCode)) {
            return false;
        }
        if (action == 1) { // KeyEvent.ACTION_UP
            Log.d(TAG, "Voice key intercepted: " + keyCode);
            TvVoiceAssistant.start(context);
        }
        return true;
    }

    public static boolean handleVoiceKeyFromActivity(Activity activity, int keyCode, int action) {
        if (!isVoiceKey(keyCode)) {
            return false;
        }
        if (action == 1) { // KeyEvent.ACTION_UP
            Log.d(TAG, "Voice key intercepted from Activity: " + keyCode);
            TvVoiceAssistant.start(activity);
        }
        return true;
    }

    public static boolean isYouTubeKey(int keyCode) {
        return keyCode == 190   // KEYCODE_BUTTON_3 (Xiaomi Remote standard YouTube hotkey)
            || keyCode == 288   // KEYCODE_YOUTUBE / KEYCODE_BUTTON_1
            || keyCode == 203   // KEYCODE_BUTTON_16 (Xiaomi Customizer HotApp 4)
            || keyCode == 252;  // KEYCODE_BUTTON_3 alternate vendor mapping
    }

    public static boolean handleYouTubeKey(Context context, int keyCode, int action) {
        if (!isYouTubeKey(keyCode)) {
            return false;
        }
        if (action == 1) { // KeyEvent.ACTION_UP
            Log.d(TAG, "YouTube key intercepted: " + keyCode);
            launchYouTube(context);
        }
        return true;
    }

    public static boolean handleYouTubeKeyFromActivity(MainActivity activity, int keyCode, int action) {
        if (!isYouTubeKey(keyCode)) {
            return false;
        }
        if (action == 1) { // KeyEvent.ACTION_UP
            Log.d(TAG, "YouTube key intercepted from MainActivity: " + keyCode);
            launchYouTubeFromActivity(activity);
        }
        return true;
    }

    public static void launchYouTube(Context context) {
        try {
            PackageManager pm = context.getPackageManager();
            String targetPkg = "com.google.android.youtube.tv";
            Intent launchIntent = pm.getLeanbackLaunchIntentForPackage(targetPkg);
            if (launchIntent == null) {
                targetPkg = "org.smarttube.stable";
                launchIntent = pm.getLeanbackLaunchIntentForPackage(targetPkg);
            }
            if (launchIntent == null) {
                targetPkg = "com.google.android.youtube.tv";
                launchIntent = pm.getLaunchIntentForPackage(targetPkg);
            }
            if (launchIntent == null) {
                targetPkg = "org.smarttube.stable";
                launchIntent = pm.getLaunchIntentForPackage(targetPkg);
            }

            if (launchIntent == null) {
                Log.w(TAG, "No YouTube app installed");
                return;
            }

            // Check Child Lock
            if (ChildLockManager.isEnabled(context) && ChildLockManager.isPackageLocked(context, targetPkg)) {
                Log.d(TAG, targetPkg + " is child-locked, redirecting to MainActivity for PIN check");
                Intent pinIntent = new Intent(context, MainActivity.class);
                pinIntent.setAction(Intent.ACTION_MAIN);
                pinIntent.addCategory(Intent.CATEGORY_HOME);
                pinIntent.putExtra("unlock_and_launch_package", targetPkg);
                pinIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
                context.startActivity(pinIntent);
                return;
            }

            launchIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
            context.startActivity(launchIntent);
            Log.d(TAG, "Launched " + targetPkg + " directly");
        } catch (Exception e) {
            Log.e(TAG, "Error launching YouTube", e);
        }
    }

    public static void launchYouTubeFromActivity(MainActivity activity) {
        try {
            PackageManager pm = activity.getPackageManager();
            String targetPkg = "com.google.android.youtube.tv";
            Intent launchIntent = pm.getLeanbackLaunchIntentForPackage(targetPkg);
            if (launchIntent == null) {
                targetPkg = "org.smarttube.stable";
                launchIntent = pm.getLeanbackLaunchIntentForPackage(targetPkg);
            }
            if (launchIntent == null) {
                targetPkg = "com.google.android.youtube.tv";
                launchIntent = pm.getLaunchIntentForPackage(targetPkg);
            }
            if (launchIntent == null) {
                targetPkg = "org.smarttube.stable";
                launchIntent = pm.getLaunchIntentForPackage(targetPkg);
            }

            if (launchIntent == null) {
                Log.w(TAG, "No YouTube app installed");
                return;
            }

            if (ChildLockManager.handleOpen(activity, launchIntent)) {
                Log.d(TAG, "Child lock PIN prompt shown for YouTube");
                return;
            }

            launchIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
            activity.startActivity(launchIntent);
        } catch (Exception e) {
            Log.e(TAG, "Error in launchYouTubeFromActivity", e);
        }
    }

    public static void checkPendingUnlockOnResume(MainActivity activity) {
        try {
            Intent intent = activity.getIntent();
            if (intent != null && intent.hasExtra("unlock_and_launch_package")) {
                String pkg = intent.getStringExtra("unlock_and_launch_package");
                intent.removeExtra("unlock_and_launch_package");
                if (pkg != null && !pkg.isEmpty()) {
                    PackageManager pm = activity.getPackageManager();
                    Intent launchIntent = pm.getLeanbackLaunchIntentForPackage(pkg);
                    if (launchIntent == null) launchIntent = pm.getLaunchIntentForPackage(pkg);
                    if (launchIntent != null) {
                        if (!ChildLockManager.handleOpen(activity, launchIntent)) {
                            launchIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
                            activity.startActivity(launchIntent);
                        }
                    }
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "Error checking pending unlock", e);
        }
    }

    public static void ensureAccessibilityEnabled(Context context) {
        try {
            String serviceName = context.getPackageName() + "/" + HomeKeyService.class.getName();
            String enabledServices = Settings.Secure.getString(context.getContentResolver(), Settings.Secure.ENABLED_ACCESSIBILITY_SERVICES);
            if (enabledServices == null || !enabledServices.contains(serviceName)) {
                String newServices = (enabledServices == null || enabledServices.isEmpty()) ? serviceName : (enabledServices + ":" + serviceName);
                Settings.Secure.putString(context.getContentResolver(), Settings.Secure.ENABLED_ACCESSIBILITY_SERVICES, newServices);
                Settings.Secure.putInt(context.getContentResolver(), Settings.Secure.ACCESSIBILITY_ENABLED, 1);
                Log.d(TAG, "Auto-enabled HomeKeyService accessibility service");
            }
        } catch (Exception e) {
            // Permission may be needed if not granted via adb
        }
    }
}
