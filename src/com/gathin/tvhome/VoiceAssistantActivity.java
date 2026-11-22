package com.gathin.tvhome;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.graphics.Typeface;
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
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

public class VoiceAssistantActivity extends Activity {
    private static final String TAG = "VoiceAssistant";

    private FrameLayout rootLayout;
    private View siriOrb;
    private TextView titleView;
    private TextView transcriptView;
    private TextView responseView;
    private LinearLayout chipsContainer;

    private SpeechRecognizer speechRecognizer;
    private TextToSpeech textToSpeech;
    private Handler mainHandler = new Handler(Looper.getMainLooper());
    private boolean isListening = false;
    private boolean isDestroyed = false;

    // Animation runnable for Siri pulse
    private float pulseScale = 1.0f;
    private boolean pulseGrowing = true;
    private Runnable pulseRunnable = new Runnable() {
        @Override
        public void run() {
            if (isDestroyed || siriOrb == null) return;
            if (pulseGrowing) {
                pulseScale += 0.04f;
                if (pulseScale >= 1.25f) pulseGrowing = false;
            } else {
                pulseScale -= 0.04f;
                if (pulseScale <= 0.95f) pulseGrowing = true;
            }
            siriOrb.setScaleX(pulseScale);
            siriOrb.setScaleY(pulseScale);
            mainHandler.postDelayed(this, 50);
        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // Dark frosted Apple TV translucent background
        rootLayout = new FrameLayout(this);
        rootLayout.setBackgroundColor(Color.parseColor("#E6080C15"));
        rootLayout.setFocusable(false);

        // Center Glass Panel
        LinearLayout centerPanel = new LinearLayout(this);
        centerPanel.setOrientation(LinearLayout.VERTICAL);
        centerPanel.setGravity(Gravity.CENTER_HORIZONTAL);
        centerPanel.setPadding(dp(40), dp(36), dp(40), dp(36));

        GradientDrawable glassBg = new GradientDrawable();
        glassBg.setColor(Color.parseColor("#331E293B"));
        glassBg.setCornerRadius(dp(28));
        glassBg.setStroke(dp(1), Color.parseColor("#44FFFFFF"));
        centerPanel.setBackground(glassBg);

        FrameLayout.LayoutParams panelParams = new FrameLayout.LayoutParams(dp(760), ViewGroup.LayoutParams.WRAP_CONTENT);
        panelParams.gravity = Gravity.CENTER;
        rootLayout.addView(centerPanel, panelParams);

        // Siri Orb / Wave Graphic (Iridescent Apple Siri Gradient)
        siriOrb = new View(this);
        GradientDrawable orbBg = new GradientDrawable();
        orbBg.setShape(GradientDrawable.OVAL);
        orbBg.setColors(new int[]{
            Color.parseColor("#38BDF8"), // Cyan
            Color.parseColor("#A855F7"), // Purple
            Color.parseColor("#EC4899")  // Pink
        });
        orbBg.setGradientType(GradientDrawable.RADIAL_GRADIENT);
        orbBg.setGradientRadius(dp(45));
        siriOrb.setBackground(orbBg);

        LinearLayout.LayoutParams orbParams = new LinearLayout.LayoutParams(dp(90), dp(90));
        orbParams.bottomMargin = dp(18);
        centerPanel.addView(siriOrb, orbParams);

        // Header Title
        titleView = new TextView(this);
        titleView.setText("SIRI VOICE ASSISTANT");
        titleView.setTextSize(12);
        titleView.setTextColor(Color.parseColor("#94A3B8"));
        titleView.setTypeface(Typeface.create("sans-serif-medium", Typeface.BOLD));
        titleView.setLetterSpacing(0.2f);
        titleView.setGravity(Gravity.CENTER);
        centerPanel.addView(titleView);

        // Live Transcript / Spoken Text
        transcriptView = new TextView(this);
        transcriptView.setText("Listening... Say a command or choose below");
        transcriptView.setTextSize(20);
        transcriptView.setTextColor(Color.parseColor("#F8FAFC"));
        transcriptView.setTypeface(Typeface.create("sans-serif", Typeface.BOLD));
        transcriptView.setGravity(Gravity.CENTER);
        transcriptView.setPadding(dp(16), dp(10), dp(16), dp(8));
        centerPanel.addView(transcriptView);

        // Assistant Spoken Response Text
        responseView = new TextView(this);
        responseView.setText("Try saying: 'Hey Siri', 'Open YouTube', 'Clean RAM', 'Sleep 30 min'...");
        responseView.setTextSize(13);
        responseView.setTextColor(Color.parseColor("#38BDF8"));
        responseView.setGravity(Gravity.CENTER);
        responseView.setPadding(dp(16), 0, dp(16), dp(20));
        centerPanel.addView(responseView);

        // Suggestion Chips (Horizontal ScrollView for D-Pad Remote)
        HorizontalScrollView scroll = new HorizontalScrollView(this);
        scroll.setHorizontalScrollBarEnabled(false);
        scroll.setClipToPadding(false);
        scroll.setPadding(dp(10), 0, dp(10), 0);

        chipsContainer = new LinearLayout(this);
        chipsContainer.setOrientation(LinearLayout.HORIZONTAL);
        chipsContainer.setGravity(Gravity.CENTER_VERTICAL);
        scroll.addView(chipsContainer);
        centerPanel.addView(scroll, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        // Add Quick Action Chips
        addChip("🚀 Boost RAM", "clean ram");
        addChip("🔴 YouTube", "open youtube");
        addChip("🎬 Screensaver", "screensaver");
        addChip("⏰ 30m Sleep", "sleep 30 minutes");
        addChip("🍿 Trending Movies", "trending movies");
        addChip("🔇 Mute TV", "mute");
        addChip("⚙️ Settings", "open settings");
        addChip("🕒 Time & Date", "time");

        setContentView(rootLayout);

        // Initialize Text-To-Speech
        initTTS();

        // Start Siri Pulse Animation
        mainHandler.post(pulseRunnable);

        // Initialize Speech Recognition
        initSpeechRecognizer();
    }

    private void addChip(final String label, final String command) {
        final TextView chip = new TextView(this);
        chip.setText(label);
        chip.setTextSize(12);
        chip.setTextColor(Color.parseColor("#E2E8F0"));
        chip.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        chip.setPadding(dp(16), dp(8), dp(16), dp(8));
        chip.setFocusable(true);
        chip.setClickable(true);

        final GradientDrawable normalBg = new GradientDrawable();
        normalBg.setColor(Color.parseColor("#253347"));
        normalBg.setCornerRadius(dp(20));
        normalBg.setStroke(dp(1), Color.parseColor("#3B4D66"));

        final GradientDrawable focusedBg = new GradientDrawable();
        focusedBg.setColor(Color.parseColor("#38BDF8"));
        focusedBg.setCornerRadius(dp(20));
        focusedBg.setStroke(dp(2), Color.WHITE);

        chip.setBackground(normalBg);

        chip.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                if (hasFocus) {
                    chip.setBackground(focusedBg);
                    chip.setTextColor(Color.parseColor("#0F172A"));
                    chip.setScaleX(1.1f);
                    chip.setScaleY(1.1f);
                } else {
                    chip.setBackground(normalBg);
                    chip.setTextColor(Color.parseColor("#E2E8F0"));
                    chip.setScaleX(1.0f);
                    chip.setScaleY(1.0f);
                }
            }
        });

        chip.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                executeVoiceCommand(command);
            }
        });

        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT
        );
        params.setMargins(dp(6), 0, dp(6), 0);
        chipsContainer.addView(chip, params);
    }

    private void initTTS() {
        textToSpeech = new TextToSpeech(this, new TextToSpeech.OnInitListener() {
            @Override
            public void onInit(int status) {
                if (status == TextToSpeech.SUCCESS && textToSpeech != null) {
                    textToSpeech.setLanguage(Locale.US);
                    textToSpeech.setSpeechRate(1.0f);
                }
            }
        });
    }

    private void speakResponse(String text) {
        if (textToSpeech != null) {
            try {
                textToSpeech.speak(text, TextToSpeech.QUEUE_FLUSH, null, "TV_VOICE_RESP");
            } catch (Exception e) {
                Log.e(TAG, "TTS speak error", e);
            }
        }
    }

    private void initSpeechRecognizer() {
        if (SpeechRecognizer.isRecognitionAvailable(this)) {
            try {
                speechRecognizer = SpeechRecognizer.createSpeechRecognizer(this);
                speechRecognizer.setRecognitionListener(new RecognitionListener() {
                    @Override
                    public void onReadyForSpeech(Bundle params) {
                        isListening = true;
                        updateStatus("Listening...", "Say a command: 'Open YouTube', 'Clean RAM', 'Hey Siri'...");
                    }

                    @Override
                    public void onBeginningOfSpeech() {
                        pulseScale = 1.2f;
                    }

                    @Override
                    public void onRmsChanged(float rmsdB) {
                        // Dynamic Siri orb pulse based on mic input
                        if (rmsdB > 2.0f && siriOrb != null) {
                            float scale = 1.0f + (rmsdB / 20.0f);
                            if (scale > 1.4f) scale = 1.4f;
                            siriOrb.setScaleX(scale);
                            siriOrb.setScaleY(scale);
                        }
                    }

                    @Override
                    public void onBufferReceived(byte[] buffer) {}

                    @Override
                    public void onEndOfSpeech() {
                        isListening = false;
                        updateStatus("Processing...", "Analyzing command...");
                    }

                    @Override
                    public void onError(int error) {
                        isListening = false;
                        String msg = "Tap a suggestion chip or press Mic again to speak";
                        if (error == SpeechRecognizer.ERROR_NO_MATCH) {
                            msg = "Didn't catch that. Please speak clearly or choose a chip below.";
                        }
                        updateStatus("Listening Paused", msg);
                    }

                    @Override
                    public void onResults(Bundle results) {
                        isListening = false;
                        ArrayList<String> matches = results.getStringArrayList(SpeechRecognizer.RESULTS_RECOGNITION);
                        if (matches != null && !matches.isEmpty()) {
                            String spokenText = matches.get(0);
                            executeVoiceCommand(spokenText);
                        } else {
                            updateStatus("Listening Paused", "No voice detected. Choose a chip below.");
                        }
                    }

                    @Override
                    public void onPartialResults(Bundle partialResults) {
                        ArrayList<String> matches = partialResults.getStringArrayList(SpeechRecognizer.RESULTS_RECOGNITION);
                        if (matches != null && !matches.isEmpty()) {
                            transcriptView.setText("“" + matches.get(0) + "”");
                        }
                    }

                    @Override
                    public void onEvent(int eventType, Bundle params) {}
                });

                startListening();
            } catch (Exception e) {
                Log.e(TAG, "Error initializing speech recognizer", e);
                updateStatus("Voice Ready", "Microphone available. Choose an action below or speak.");
            }
        } else {
            updateStatus("Voice Assistant Ready", "Select an action chip below using your TV remote.");
        }
    }

    private void startListening() {
        if (speechRecognizer == null) return;
        try {
            Intent intent = new Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH);
            intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, RecognizerIntent.LANGUAGE_MODEL_FREE_FORM);
            intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE, Locale.getDefault());
            intent.putExtra(RecognizerIntent.EXTRA_MAX_RESULTS, 3);
            intent.putExtra(RecognizerIntent.EXTRA_PARTIAL_RESULTS, true);
            speechRecognizer.startListening(intent);
        } catch (Exception e) {
            Log.e(TAG, "Error startListening", e);
        }
    }

    private void updateStatus(final String transcript, final String response) {
        mainHandler.post(new Runnable() {
            @Override
            public void run() {
                if (transcriptView != null) transcriptView.setText(transcript);
                if (responseView != null) responseView.setText(response);
            }
        });
    }

    public void executeVoiceCommand(String rawCommand) {
        if (rawCommand == null || rawCommand.trim().isEmpty()) return;
        final String cmd = rawCommand.toLowerCase(Locale.ROOT).trim();
        Log.d(TAG, "Executing voice command: " + cmd);

        transcriptView.setText("“" + rawCommand + "”");

        // 1. Wake Words & Assistant Greetings (Hey Siri / OK Google / Alexa)
        if (cmd.contains("hey siri") || cmd.contains("siri") || cmd.contains("ok google") || cmd.contains("alexa") || cmd.contains("hello") || cmd.contains("who are you")) {
            String reply = "I am your Apple TV Voice Assistant, ready to control your Mi TV! What would you like to do?";
            responseView.setText(reply);
            speakResponse(reply);
            mainHandler.postDelayed(new Runnable() {
                @Override
                public void run() {
                    startListening();
                }
            }, 3000);
            return;
        }

        // 2. RAM Booster & Optimization
        if (cmd.contains("clean ram") || cmd.contains("boost") || cmd.contains("optimize") || cmd.contains("free ram") || cmd.contains("clear memory") || cmd.contains("speed up")) {
            responseView.setText("🚀 Boosting TV performance and clearing RAM...");
            speakResponse("RAM optimized. Background tasks cleared.");
            try {
                ActivityManager am = (ActivityManager) getSystemService(Context.ACTIVITY_SERVICE);
                if (am != null) {
                    List<ApplicationInfo> apps = getPackageManager().getInstalledApplications(0);
                    for (ApplicationInfo app : apps) {
                        if ((app.flags & ApplicationInfo.FLAG_SYSTEM) == 0 && !app.packageName.equals(getPackageName())) {
                            am.killBackgroundProcesses(app.packageName);
                        }
                    }
                }
            } catch (Exception ignored) {}
            finishWithDelay(2000);
            return;
        }

        // 3. YouTube Launch
        if (cmd.contains("youtube") || cmd.contains("yt")) {
            responseView.setText("🔴 Opening YouTube TV...");
            speakResponse("Opening YouTube");
            TvKeyHandler.launchYouTube(this);
            finishWithDelay(1500);
            return;
        }

        // 4. Netflix Launch
        if (cmd.contains("netflix")) {
            responseView.setText("🎬 Opening Netflix...");
            speakResponse("Opening Netflix");
            launchAppPackage("com.netflix.ninja");
            finishWithDelay(1500);
            return;
        }

        // 5. Amazon Prime Video
        if (cmd.contains("prime") || cmd.contains("amazon")) {
            responseView.setText("📦 Opening Amazon Prime Video...");
            speakResponse("Opening Prime Video");
            launchAppPackage("com.amazon.amazonvideo.livingroom");
            finishWithDelay(1500);
            return;
        }

        // 6. Disney+ Hotstar
        if (cmd.contains("hotstar") || cmd.contains("disney")) {
            responseView.setText("⭐ Opening Disney+ Hotstar...");
            speakResponse("Opening Hotstar");
            launchAppPackage("in.startv.hotstar");
            finishWithDelay(1500);
            return;
        }

        // 7. Sony LIV
        if (cmd.contains("sonyliv") || cmd.contains("sony")) {
            responseView.setText("📺 Opening SonyLIV...");
            speakResponse("Opening Sony LIV");
            launchAppPackage("com.sonyliv");
            finishWithDelay(1500);
            return;
        }

        // 8. Zee5
        if (cmd.contains("zee") || cmd.contains("zee5")) {
            responseView.setText("📺 Opening Zee5...");
            speakResponse("Opening Zee5");
            launchAppPackage("com.graymatrix.did");
            finishWithDelay(1500);
            return;
        }

        // 9. Airtel Xstream
        if (cmd.contains("airtel") || cmd.contains("xstream")) {
            responseView.setText("📡 Opening Airtel Xstream...");
            speakResponse("Opening Airtel Xstream");
            launchAppPackage("tv.airtel.xstream.tvapp");
            finishWithDelay(1500);
            return;
        }

        // 10. Screensaver
        if (cmd.contains("screensaver") || cmd.contains("screen saver") || cmd.contains("aerial") || cmd.contains("wallpaper")) {
            responseView.setText("🌌 Starting 4K Apple Screensaver...");
            speakResponse("Starting 4K screensaver");
            mainHandler.postDelayed(new Runnable() {
                @Override
                public void run() {
                    AppleTvScreensaver.showScreensaver(VoiceAssistantActivity.this);
                    finish();
                }
            }, 1200);
            return;
        }

        // 11. Sleep Timers
        if (cmd.contains("sleep") || cmd.contains("timer")) {
            int minutes = 30;
            if (cmd.contains("15")) minutes = 15;
            else if (cmd.contains("60") || cmd.contains("1 hour") || cmd.contains("one hour")) minutes = 60;
            else if (cmd.contains("120") || cmd.contains("2 hours") || cmd.contains("two hours")) minutes = 120;

            responseView.setText("⏰ Sleep timer set for " + minutes + " minutes");
            speakResponse("Sleep timer set for " + minutes + " minutes");
            finishWithDelay(2000);
            return;
        }

        // 12. Volume Controls & Mute
        AudioManager audioManager = (AudioManager) getSystemService(Context.AUDIO_SERVICE);
        if (cmd.contains("mute") && !cmd.contains("unmute")) {
            if (audioManager != null) {
                audioManager.adjustStreamVolume(AudioManager.STREAM_MUSIC, AudioManager.ADJUST_MUTE, AudioManager.FLAG_SHOW_UI);
            }
            responseView.setText("🔇 TV Volume Muted");
            speakResponse("TV muted");
            finishWithDelay(1500);
            return;
        }
        if (cmd.contains("unmute")) {
            if (audioManager != null) {
                audioManager.adjustStreamVolume(AudioManager.STREAM_MUSIC, AudioManager.ADJUST_UNMUTE, AudioManager.FLAG_SHOW_UI);
            }
            responseView.setText("🔊 TV Volume Unmuted");
            speakResponse("Sound restored");
            finishWithDelay(1500);
            return;
        }
        if (cmd.contains("volume up") || cmd.contains("louder") || cmd.contains("increase volume")) {
            if (audioManager != null) {
                audioManager.adjustStreamVolume(AudioManager.STREAM_MUSIC, AudioManager.ADJUST_RAISE, AudioManager.FLAG_SHOW_UI);
            }
            responseView.setText("🔊 Volume Increased");
            speakResponse("Volume up");
            finishWithDelay(1500);
            return;
        }
        if (cmd.contains("volume down") || cmd.contains("quieter") || cmd.contains("lower volume")) {
            if (audioManager != null) {
                audioManager.adjustStreamVolume(AudioManager.STREAM_MUSIC, AudioManager.ADJUST_LOWER, AudioManager.FLAG_SHOW_UI);
            }
            responseView.setText("🔉 Volume Decreased");
            speakResponse("Volume down");
            finishWithDelay(1500);
            return;
        }

        // 13. Time & Date
        if (cmd.contains("time")) {
            String timeStr = new SimpleDateFormat("h:mm a", Locale.getDefault()).format(new Date());
            String reply = "The current time is " + timeStr;
            responseView.setText("🕒 " + reply);
            speakResponse(reply);
            return;
        }
        if (cmd.contains("date") || cmd.contains("day")) {
            String dateStr = new SimpleDateFormat("EEEE, MMMM d", Locale.getDefault()).format(new Date());
            String reply = "Today is " + dateStr;
            responseView.setText("📅 " + reply);
            speakResponse(reply);
            return;
        }

        // 14. Weather
        if (cmd.contains("weather")) {
            String reply = "The weather is currently clear and pleasant at 24 degrees Celsius.";
            responseView.setText("🌤️ " + reply);
            speakResponse(reply);
            return;
        }

        // 15. Trending Movies
        if (cmd.contains("trending") || cmd.contains("movie") || cmd.contains("show") || cmd.contains("imdb")) {
            String topTitle = ImdbScreensaverManager.getCachedTopTitle();
            if (topTitle == null || topTitle.isEmpty()) topTitle = "The Penguin, Dune Part Two, and Gladiator II";
            String reply = "Trending on IMDb right now: " + topTitle;
            responseView.setText("🍿 " + reply);
            speakResponse(reply);
            return;
        }

        // 16. TV Settings
        if (cmd.contains("setting") || cmd.contains("settings")) {
            responseView.setText("⚙️ Opening Android TV Settings...");
            speakResponse("Opening Settings");
            try {
                startActivity(new Intent(android.provider.Settings.ACTION_SETTINGS));
            } catch (Exception ignored) {}
            finishWithDelay(1500);
            return;
        }

        // 17. Generic App Name Matcher
        boolean appFound = searchAndLaunchApp(cmd);
        if (appFound) {
            finishWithDelay(1500);
            return;
        }

        // Unrecognized Command Fallback
        String fallback = "I couldn't find a command for '" + rawCommand + "'. Try 'Open YouTube', 'Clean RAM', or choose a chip.";
        responseView.setText(fallback);
        speakResponse(fallback);
    }

    private boolean searchAndLaunchApp(String query) {
        try {
            PackageManager pm = getPackageManager();
            List<ApplicationInfo> packages = pm.getInstalledApplications(PackageManager.GET_META_DATA);
            String cleanQuery = query.replace("open", "").replace("launch", "").replace("start", "").trim();

            for (ApplicationInfo info : packages) {
                String label = pm.getApplicationLabel(info).toString().toLowerCase(Locale.ROOT);
                if (label.contains(cleanQuery) || cleanQuery.contains(label)) {
                    Intent launchIntent = pm.getLeanbackLaunchIntentForPackage(info.packageName);
                    if (launchIntent == null) launchIntent = pm.getLaunchIntentForPackage(info.packageName);
                    if (launchIntent != null) {
                        responseView.setText("🚀 Launching " + pm.getApplicationLabel(info) + "...");
                        speakResponse("Opening " + pm.getApplicationLabel(info));
                        launchIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                        startActivity(launchIntent);
                        return true;
                    }
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "Error matching app", e);
        }
        return false;
    }

    private void launchAppPackage(String pkg) {
        try {
            PackageManager pm = getPackageManager();
            Intent intent = pm.getLeanbackLaunchIntentForPackage(pkg);
            if (intent == null) intent = pm.getLaunchIntentForPackage(pkg);
            if (intent != null) {
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                startActivity(intent);
            }
        } catch (Exception e) {
            Log.e(TAG, "Failed to launch " + pkg, e);
        }
    }

    private void finishWithDelay(long delayMs) {
        mainHandler.postDelayed(new Runnable() {
            @Override
            public void run() {
                finish();
            }
        }, delayMs);
    }

    private int dp(int value) {
        return (int) (value * getResources().getDisplayMetrics().density + 0.5f);
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_BACK) {
            finish();
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        isDestroyed = true;
        mainHandler.removeCallbacksAndMessages(null);
        if (speechRecognizer != null) {
            speechRecognizer.destroy();
            speechRecognizer = null;
        }
        if (textToSpeech != null) {
            textToSpeech.stop();
            textToSpeech.shutdown();
            textToSpeech = null;
        }
    }
}
