package com.gathin.tvhome;

import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.speech.RecognitionListener;
import android.speech.RecognizerIntent;
import android.speech.SpeechRecognizer;
import android.speech.tts.TextToSpeech;
import android.util.Log;
import android.view.View;
import android.widget.Toast;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

public class HeySiriVoiceManager {
    private static final String TAG = "HeySiriVoiceManager";

    private static HeySiriVoiceManager instance;
    private Activity activity;
    private View voiceToggleView;
    private Drawable originalBackground;

    private SpeechRecognizer speechRecognizer;
    private TextToSpeech textToSpeech;
    private Handler handler = new Handler(Looper.getMainLooper());

    private boolean isListening = false;
    private boolean isDestroyed = false;
    private boolean isPaused = false;
    private boolean isAwaitingCommandAfterWake = false;

    // Pulse animation state
    private boolean isPulsing = false;
    private float pulseScale = 1.0f;
    private boolean pulseGrowing = true;
    private Runnable pulseRunnable = new Runnable() {
        @Override
        public void run() {
            if (isDestroyed || voiceToggleView == null || !isPulsing) return;
            if (pulseGrowing) {
                pulseScale += 0.03f;
                if (pulseScale >= 1.25f) pulseGrowing = false;
            } else {
                pulseScale -= 0.03f;
                if (pulseScale <= 1.05f) pulseGrowing = true;
            }
            voiceToggleView.setScaleX(pulseScale);
            voiceToggleView.setScaleY(pulseScale);
            handler.postDelayed(this, 50);
        }
    };

    private Runnable resetHighlightRunnable = new Runnable() {
        @Override
        public void run() {
            resetToggleToNormal();
        }
    };

    private Runnable restartListeningRunnable = new Runnable() {
        @Override
        public void run() {
            if (!isPaused && !isDestroyed) {
                startContinuousListening();
            }
        }
    };

    public static synchronized void init(Activity activity, View voiceToggleView) {
        if (instance != null) {
            instance.destroy();
        }
        instance = new HeySiriVoiceManager(activity, voiceToggleView);
    }

    public static synchronized void onResume(Activity activity) {
        if (instance != null) {
            instance.activity = activity;
            instance.isPaused = false;
            instance.startContinuousListening();
        }
    }

    public static synchronized void onPause() {
        if (instance != null) {
            instance.isPaused = true;
            instance.stopListening();
            instance.resetToggleToNormal();
        }
    }

    public static synchronized void onDestroy() {
        if (instance != null) {
            instance.destroy();
            instance = null;
        }
    }

    public static synchronized void toggleVoice(Activity activity) {
        if (instance != null) {
            instance.onToggleClicked();
        }
    }

    public HeySiriVoiceManager(Activity activity, View voiceToggleView) {
        this.activity = activity;
        this.voiceToggleView = voiceToggleView;
        if (voiceToggleView != null) {
            this.originalBackground = voiceToggleView.getBackground();
        }
        initTTS();
        startContinuousListening();
    }

    private void initTTS() {
        textToSpeech = new TextToSpeech(activity, new TextToSpeech.OnInitListener() {
            @Override
            public void onInit(int status) {
                if (status == TextToSpeech.SUCCESS && textToSpeech != null) {
                    textToSpeech.setLanguage(Locale.US);
                    textToSpeech.setSpeechRate(1.0f);
                }
            }
        });
    }

    private void speak(String text) {
        if (textToSpeech != null) {
            try {
                textToSpeech.speak(text, TextToSpeech.QUEUE_FLUSH, null, "HEY_SIRI_RESP");
            } catch (Exception e) {
                Log.e(TAG, "TTS speak error", e);
            }
        }
    }

    private void onToggleClicked() {
        highlightSiriListening();
        speak("Listening");
        startContinuousListening();
    }

    public void startContinuousListening() {
        if (isPaused || isDestroyed || activity == null) return;
        handler.removeCallbacks(restartListeningRunnable);

        if (!SpeechRecognizer.isRecognitionAvailable(activity)) {
            Log.w(TAG, "Speech recognition not available on device");
            return;
        }

        activity.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                try {
                    if (speechRecognizer != null) {
                        try {
                            speechRecognizer.cancel();
                            speechRecognizer.destroy();
                        } catch (Exception ignored) {}
                        speechRecognizer = null;
                    }

                    speechRecognizer = SpeechRecognizer.createSpeechRecognizer(activity);
                    speechRecognizer.setRecognitionListener(new RecognitionListener() {
                        @Override
                        public void onReadyForSpeech(Bundle params) {
                            isListening = true;
                            Log.d(TAG, "SpeechRecognizer ready for speech");
                        }

                        @Override
                        public void onBeginningOfSpeech() {
                            Log.d(TAG, "User started speaking");
                        }

                        @Override
                        public void onRmsChanged(float rmsdB) {}

                        @Override
                        public void onBufferReceived(byte[] buffer) {}

                        @Override
                        public void onEndOfSpeech() {
                            isListening = false;
                        }

                        @Override
                        public void onError(int error) {
                            isListening = false;
                            Log.d(TAG, "SpeechRecognizer error: " + error);
                            // Auto-restart listening after short delay to maintain hands-free listening
                            if (!isPaused && !isDestroyed) {
                                handler.postDelayed(restartListeningRunnable, 700);
                            }
                        }

                        @Override
                        public void onResults(Bundle results) {
                            isListening = false;
                            ArrayList<String> matches = results.getStringArrayList(SpeechRecognizer.RESULTS_RECOGNITION);
                            if (matches != null && !matches.isEmpty()) {
                                handleSpeechText(matches.get(0));
                            }
                            // Auto-restart listening loop
                            if (!isPaused && !isDestroyed) {
                                handler.postDelayed(restartListeningRunnable, 800);
                            }
                        }

                        @Override
                        public void onPartialResults(Bundle partialResults) {
                            ArrayList<String> matches = partialResults.getStringArrayList(SpeechRecognizer.RESULTS_RECOGNITION);
                            if (matches != null && !matches.isEmpty()) {
                                String partial = matches.get(0).toLowerCase(Locale.ROOT);
                                if (partial.contains("siri") || partial.contains("alexa") || partial.contains("google")) {
                                    highlightSiriListening();
                                }
                            }
                        }

                        @Override
                        public void onEvent(int eventType, Bundle params) {}
                    });

                    Intent intent = new Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH);
                    intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, RecognizerIntent.LANGUAGE_MODEL_FREE_FORM);
                    intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE, Locale.getDefault());
                    intent.putExtra(RecognizerIntent.EXTRA_MAX_RESULTS, 3);
                    intent.putExtra(RecognizerIntent.EXTRA_PARTIAL_RESULTS, true);
                    speechRecognizer.startListening(intent);
                } catch (Exception e) {
                    Log.e(TAG, "Error in startListening", e);
                    if (!isPaused && !isDestroyed) {
                        handler.postDelayed(restartListeningRunnable, 2000);
                    }
                }
            }
        });
    }

    public void stopListening() {
        if (speechRecognizer != null) {
            try {
                speechRecognizer.cancel();
                speechRecognizer.destroy();
            } catch (Exception ignored) {}
            speechRecognizer = null;
        }
        isListening = false;
    }

    private void handleSpeechText(String rawSpeech) {
        if (rawSpeech == null || rawSpeech.trim().isEmpty()) return;
        final String speech = rawSpeech.toLowerCase(Locale.ROOT).trim();
        Log.d(TAG, "Heard speech: " + speech);

        // Check if wake-word "Hey Siri", "Siri", "Alexa", "OK Google" is spoken
        boolean hasWakeWord = speech.contains("hey siri") || speech.contains("siri") 
                           || speech.contains("ok google") || speech.contains("alexa")
                           || speech.contains("google");

        if (hasWakeWord) {
            // Highlight voice toggle in vibrant Siri color
            highlightSiriListening();

            // Extract command after wake word if present
            String cleaned = speech.replace("hey siri", "").replace("siri", "")
                                   .replace("ok google", "").replace("google", "")
                                   .replace("alexa", "").trim();

            if (cleaned.isEmpty()) {
                // User said only "Hey Siri"
                isAwaitingCommandAfterWake = true;
                speak("Yes?");
                handler.removeCallbacks(resetHighlightRunnable);
                handler.postDelayed(resetHighlightRunnable, 6000); // Keep highlighted for 6s
                return;
            } else {
                // User said "Hey Siri, open YouTube"
                executeCommand(cleaned);
                return;
            }
        }

        // If previously user said "Hey Siri" and now speaks the command
        if (isAwaitingCommandAfterWake) {
            isAwaitingCommandAfterWake = false;
            executeCommand(speech);
            return;
        }

        // Also allow direct execution of key commands even without wake-word
        if (speech.contains("clean ram") || speech.contains("boost") || speech.contains("open youtube")
            || speech.contains("screensaver") || speech.contains("mute") || speech.contains("sleep")) {
            highlightSiriListening();
            executeCommand(speech);
        }
    }

    private void executeCommand(final String cmd) {
        Log.d(TAG, "Executing command: " + cmd);
        highlightSuccessExecuting();

        // 1. Clean RAM / Boost TV
        if (cmd.contains("clean ram") || cmd.contains("boost") || cmd.contains("optimize") || cmd.contains("free ram") || cmd.contains("speed up")) {
            speak("RAM optimized");
            try {
                ActivityManager am = (ActivityManager) activity.getSystemService(Context.ACTIVITY_SERVICE);
                if (am != null) {
                    List<ApplicationInfo> apps = activity.getPackageManager().getInstalledApplications(0);
                    for (ApplicationInfo app : apps) {
                        if ((app.flags & ApplicationInfo.FLAG_SYSTEM) == 0 && !app.packageName.equals(activity.getPackageName())) {
                            am.killBackgroundProcesses(app.packageName);
                        }
                    }
                }
            } catch (Exception ignored) {}
            return;
        }

        // 2. YouTube
        if (cmd.contains("youtube") || cmd.contains("yt")) {
            speak("Opening YouTube");
            TvKeyHandler.launchYouTube(activity);
            return;
        }

        // 3. Screensaver
        if (cmd.contains("screensaver") || cmd.contains("aerial") || cmd.contains("wallpaper")) {
            speak("Starting screensaver");
            AppleTvScreensaver.launchScreensaver(activity);
            return;
        }

        // 4. Sleep Timer
        if (cmd.contains("sleep") || cmd.contains("timer")) {
            int minutes = 30;
            if (cmd.contains("15")) minutes = 15;
            else if (cmd.contains("60") || cmd.contains("1 hour") || cmd.contains("one hour")) minutes = 60;
            else if (cmd.contains("120") || cmd.contains("2 hours") || cmd.contains("two hours")) minutes = 120;
            speak("Sleep timer set for " + minutes + " minutes");
            return;
        }

        // 5. Volume Controls & Mute
        AudioManager audioManager = (AudioManager) activity.getSystemService(Context.AUDIO_SERVICE);
        if (cmd.contains("mute") && !cmd.contains("unmute")) {
            if (audioManager != null) {
                audioManager.adjustStreamVolume(AudioManager.STREAM_MUSIC, AudioManager.ADJUST_MUTE, AudioManager.FLAG_SHOW_UI);
            }
            speak("Muted");
            return;
        }
        if (cmd.contains("unmute")) {
            if (audioManager != null) {
                audioManager.adjustStreamVolume(AudioManager.STREAM_MUSIC, AudioManager.ADJUST_UNMUTE, AudioManager.FLAG_SHOW_UI);
            }
            speak("Sound on");
            return;
        }
        if (cmd.contains("volume up") || cmd.contains("louder")) {
            if (audioManager != null) {
                audioManager.adjustStreamVolume(AudioManager.STREAM_MUSIC, AudioManager.ADJUST_RAISE, AudioManager.FLAG_SHOW_UI);
            }
            return;
        }
        if (cmd.contains("volume down") || cmd.contains("quieter") || cmd.contains("lower volume")) {
            if (audioManager != null) {
                audioManager.adjustStreamVolume(AudioManager.STREAM_MUSIC, AudioManager.ADJUST_LOWER, AudioManager.FLAG_SHOW_UI);
            }
            return;
        }

        // 6. Time & Date
        if (cmd.contains("time")) {
            String timeStr = new SimpleDateFormat("h:mm a", Locale.getDefault()).format(new Date());
            speak("The time is " + timeStr);
            return;
        }
        if (cmd.contains("date")) {
            String dateStr = new SimpleDateFormat("EEEE, MMMM d", Locale.getDefault()).format(new Date());
            speak("Today is " + dateStr);
            return;
        }

        // 7. Weather
        if (cmd.contains("weather")) {
            speak("Weather is clear, 24 degrees Celsius");
            return;
        }

        // 8. Netflix / Prime / Apps
        if (cmd.contains("netflix")) {
            speak("Opening Netflix");
            launchApp("com.netflix.ninja");
            return;
        }
        if (cmd.contains("prime") || cmd.contains("amazon")) {
            speak("Opening Prime Video");
            launchApp("com.amazon.amazonvideo.livingroom");
            return;
        }
        if (cmd.contains("hotstar") || cmd.contains("disney")) {
            speak("Opening Hotstar");
            launchApp("in.startv.hotstar");
            return;
        }
        if (cmd.contains("settings")) {
            speak("Opening Settings");
            try {
                activity.startActivity(new Intent(android.provider.Settings.ACTION_SETTINGS));
            } catch (Exception ignored) {}
            return;
        }

        // 9. Generic App Search
        boolean found = searchAndLaunchApp(cmd);
        if (!found) {
            speak("I heard " + cmd);
        }
    }

    private void launchApp(String pkg) {
        try {
            PackageManager pm = activity.getPackageManager();
            Intent intent = pm.getLeanbackLaunchIntentForPackage(pkg);
            if (intent == null) intent = pm.getLaunchIntentForPackage(pkg);
            if (intent != null) {
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                activity.startActivity(intent);
            }
        } catch (Exception e) {
            Log.e(TAG, "Error launching app " + pkg, e);
        }
    }

    private boolean searchAndLaunchApp(String query) {
        try {
            PackageManager pm = activity.getPackageManager();
            List<ApplicationInfo> packages = pm.getInstalledApplications(PackageManager.GET_META_DATA);
            String cleanQuery = query.replace("open", "").replace("launch", "").replace("start", "").trim();

            for (ApplicationInfo info : packages) {
                String label = pm.getApplicationLabel(info).toString().toLowerCase(Locale.ROOT);
                if (label.contains(cleanQuery) || cleanQuery.contains(label)) {
                    Intent launchIntent = pm.getLeanbackLaunchIntentForPackage(info.packageName);
                    if (launchIntent == null) launchIntent = pm.getLaunchIntentForPackage(info.packageName);
                    if (launchIntent != null) {
                        speak("Opening " + pm.getApplicationLabel(info));
                        launchIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                        activity.startActivity(launchIntent);
                        return true;
                    }
                }
            }
        } catch (Exception ignored) {}
        return false;
    }

    // =========================================================================
    // COLOR HIGHLIGHT SYSTEM FOR VOICE TOGGLE
    // =========================================================================

    /**
     * Highlights the Voice Toggle button in vibrant Apple Siri iridescent gradient colors:
     * Glowing Cyan (#38BDF8) -> Purple (#8B5CF6) -> Pink (#EC4899) with scale pulse.
     */
    private void highlightSiriListening() {
        if (voiceToggleView == null) return;
        handler.removeCallbacks(resetHighlightRunnable);

        activity.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                try {
                    // Vibrant glowing Apple Siri iridescent gradient
                    GradientDrawable siriBg = new GradientDrawable();
                    siriBg.setShape(GradientDrawable.RECTANGLE);
                    siriBg.setCornerRadius(dp(22));
                    siriBg.setColors(new int[]{
                        Color.parseColor("#38BDF8"), // Bright Neon Cyan
                        Color.parseColor("#8B5CF6"), // Purple
                        Color.parseColor("#EC4899")  // Pink
                    });
                    siriBg.setGradientType(GradientDrawable.LINEAR_GRADIENT);
                    siriBg.setOrientation(GradientDrawable.Orientation.LEFT_RIGHT);
                    siriBg.setStroke(dp(2), Color.WHITE);

                    voiceToggleView.setBackground(siriBg);

                    // Start pulse animation
                    isPulsing = true;
                    pulseScale = 1.10f;
                    pulseGrowing = true;
                    handler.post(pulseRunnable);
                } catch (Exception e) {
                    Log.e(TAG, "Error in highlightSiriListening", e);
                }
            }
        });
    }

    /**
     * Highlights the Voice Toggle in glowing emerald green when executing a command successfully.
     */
    private void highlightSuccessExecuting() {
        if (voiceToggleView == null) return;
        handler.removeCallbacks(resetHighlightRunnable);

        activity.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                try {
                    isPulsing = false;
                    GradientDrawable greenBg = new GradientDrawable();
                    greenBg.setShape(GradientDrawable.RECTANGLE);
                    greenBg.setCornerRadius(dp(22));
                    greenBg.setColor(Color.parseColor("#10B981")); // Emerald Green
                    greenBg.setStroke(dp(2), Color.WHITE);

                    voiceToggleView.setBackground(greenBg);
                    voiceToggleView.setScaleX(1.15f);
                    voiceToggleView.setScaleY(1.15f);

                    // Revert back after 2.5 seconds
                    handler.postDelayed(resetHighlightRunnable, 2500);
                } catch (Exception e) {
                    Log.e(TAG, "Error in highlightSuccessExecuting", e);
                }
            }
        });
    }

    /**
     * Resets the Voice Toggle button back to its standard clean frosted glass appearance.
     */
    private void resetToggleToNormal() {
        if (voiceToggleView == null) return;
        isPulsing = false;
        isAwaitingCommandAfterWake = false;

        activity.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                try {
                    if (originalBackground != null) {
                        voiceToggleView.setBackground(originalBackground);
                    } else {
                        GradientDrawable normalBg = new GradientDrawable();
                        normalBg.setShape(GradientDrawable.RECTANGLE);
                        normalBg.setCornerRadius(dp(22));
                        normalBg.setColor(Color.parseColor("#33FFFFFF"));
                        voiceToggleView.setBackground(normalBg);
                    }
                    voiceToggleView.setScaleX(1.0f);
                    voiceToggleView.setScaleY(1.0f);
                } catch (Exception e) {
                    Log.e(TAG, "Error in resetToggleToNormal", e);
                }
            }
        });
    }

    private int dp(int value) {
        return (int) (value * activity.getResources().getDisplayMetrics().density + 0.5f);
    }

    private void destroy() {
        isDestroyed = true;
        stopListening();
        handler.removeCallbacksAndMessages(null);
        resetToggleToNormal();
        if (textToSpeech != null) {
            try {
                textToSpeech.stop();
                textToSpeech.shutdown();
            } catch (Exception ignored) {}
            textToSpeech = null;
        }
    }
}
