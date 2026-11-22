package com.gathin.tvhome;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

public class AppleTvScreensaver {
    private static final String TAG = "AppleTvScreensaver";
    private static final long IDLE_TIMEOUT_MS = 90000L; // 90 seconds

    private static Handler idleHandler = new Handler(Looper.getMainLooper());
    private static Runnable idleRunnable = null;
    private static Dialog activeScreensaverDialog = null;

    public static class AerialScene {
        public String packageName;
        public AerialScene(String packageName) {
            this.packageName = packageName;
        }
    }

    public static List<AerialScene> getDailyPlaylist() {
        List<AerialScene> list = new ArrayList<>();
        list.add(new AerialScene("com.apple.atve.androidtv.appletv"));
        list.add(new AerialScene("in.startv.hotstar"));
        list.add(new AerialScene("com.sonyliv"));
        list.add(new AerialScene("com.amazon.amazonvideo.livingroom"));
        list.add(new AerialScene("com.mxtech.videoplayer.television"));
        list.add(new AerialScene("com.google.android.youtube.tv"));
        list.add(new AerialScene("com.netflix.ninja"));
        return list;
    }

    public static void startIdleWatcher(Activity activity) {
        resetIdleTimer(activity);
    }

    public static void onUserActivity(Activity activity) {
        resetIdleTimer(activity);
    }

    public static void resetIdleTimer(final Activity activity) {
        if (activity == null || activity.isFinishing()) return;
        if (idleRunnable != null) {
            idleHandler.removeCallbacks(idleRunnable);
        }
        idleRunnable = new Runnable() {
            @Override
            public void run() {
                launchScreensaver(activity);
            }
        };
        idleHandler.postDelayed(idleRunnable, IDLE_TIMEOUT_MS);
    }

    public static void launchScreensaver(final Activity activity) {
        if (activity == null || activity.isFinishing()) return;
        if (activeScreensaverDialog != null && activeScreensaverDialog.isShowing()) return;

        // Trigger daily sync if needed
        ImdbScreensaverManager.checkAndSyncDaily(activity);

        final Dialog dialog = new Dialog(activity, android.R.style.Theme_Black_NoTitleBar_Fullscreen);
        dialog.requestWindowFeature(1);
        activeScreensaverDialog = dialog;

        final FrameLayout root = new FrameLayout(activity);
        root.setBackgroundColor(Color.BLACK);

        // 1. Video Layer (TextureView) for video loops
        final AmbientVideoView videoView = new AmbientVideoView(activity);
        root.addView(videoView, new FrameLayout.LayoutParams(-1, -1));

        // 2. Dual ImageView layers for seamless 4K IMDb wallpaper cross-fading
        final ImageView image1 = new ImageView(activity);
        image1.setScaleType(ImageView.ScaleType.CENTER_CROP);
        root.addView(image1, new FrameLayout.LayoutParams(-1, -1));

        final ImageView image2 = new ImageView(activity);
        image2.setScaleType(ImageView.ScaleType.CENTER_CROP);
        image2.setAlpha(0f);
        root.addView(image2, new FrameLayout.LayoutParams(-1, -1));

        // 3. Elegant Clock in Top-Right
        final TextView clockView = new TextView(activity);
        clockView.setTextColor(Color.parseColor("#f8fafc"));
        clockView.setTextSize(42f);
        clockView.setTypeface(Typeface.DEFAULT_BOLD);
        clockView.setShadowLayer(12f, 0f, 3f, Color.BLACK);

        FrameLayout.LayoutParams clockLp = new FrameLayout.LayoutParams(-2, -2);
        clockLp.gravity = Gravity.TOP | Gravity.END;
        clockLp.topMargin = 40;
        clockLp.setMarginEnd(60);
        root.addView(clockView, clockLp);

        final SimpleDateFormat timeFormat = new SimpleDateFormat("h:mm a", Locale.getDefault());
        final Handler screensaverHandler = new Handler(Looper.getMainLooper());

        final Runnable clockUpdater = new Runnable() {
            @Override
            public void run() {
                clockView.setText(timeFormat.format(new Date()));
                screensaverHandler.postDelayed(this, 1000);
            }
        };
        clockUpdater.run();

        // 4. Minimalist Translucent IMDb Badge in Bottom-Left
        final TextView imdbBadge = new TextView(activity);
        imdbBadge.setTextColor(Color.parseColor("#f8fafc"));
        imdbBadge.setTextSize(16f);
        imdbBadge.setTypeface(Typeface.DEFAULT_BOLD);
        imdbBadge.setPadding(32, 16, 32, 16);

        GradientDrawable pillBg = new GradientDrawable();
        pillBg.setColor(Color.parseColor("#80000000")); // 50% black glass
        pillBg.setCornerRadius(30f);
        imdbBadge.setBackground(pillBg);
        imdbBadge.setVisibility(View.GONE);

        FrameLayout.LayoutParams badgeLp = new FrameLayout.LayoutParams(-2, -2);
        badgeLp.gravity = Gravity.BOTTOM | Gravity.START;
        badgeLp.bottomMargin = 50;
        badgeLp.setMarginStart(60);
        root.addView(imdbBadge, badgeLp);

        // 5. Rotation Logic: IMDb Wallpapers + Video Loops
        final List<ImdbScreensaverManager.ImdbItem> imdbItems = ImdbScreensaverManager.getCachedItems(activity);
        final List<AerialScene> scenes = getDailyPlaylist();
        final int[] index = new int[]{0};
        final boolean[] activeImageIs1 = new boolean[]{true};

        // Load initial state
        displayNextScreensaverItem(activity, imdbItems, scenes, index, activeImageIs1, image1, image2, videoView, imdbBadge);

        final Runnable rotator = new Runnable() {
            @Override
            public void run() {
                displayNextScreensaverItem(activity, imdbItems, scenes, index, activeImageIs1, image1, image2, videoView, imdbBadge);
                screensaverHandler.postDelayed(this, 14000); // Rotate every 14 seconds
            }
        };
        screensaverHandler.postDelayed(rotator, 14000);

        // Dismiss action
        final Runnable dismissAction = new Runnable() {
            @Override
            public void run() {
                screensaverHandler.removeCallbacksAndMessages(null);
                if (dialog.isShowing()) {
                    try {
                        dialog.dismiss();
                    } catch (Exception ignored) {}
                }
                activeScreensaverDialog = null;
                resetIdleTimer(activity);
            }
        };

        dialog.setOnKeyListener(new DialogInterface.OnKeyListener() {
            @Override
            public boolean onKey(DialogInterface d, int keyCode, KeyEvent event) {
                if (event.getAction() == KeyEvent.ACTION_UP) {
                    dismissAction.run();
                    return true;
                }
                return false;
            }
        });

        root.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dismissAction.run();
            }
        });

        dialog.setOnDismissListener(new DialogInterface.OnDismissListener() {
            @Override
            public void onDismiss(DialogInterface d) {
                screensaverHandler.removeCallbacksAndMessages(null);
                activeScreensaverDialog = null;
                resetIdleTimer(activity);
            }
        });

        dialog.setContentView(root);
        dialog.show();
    }

    private static void displayNextScreensaverItem(Context context,
                                                  List<ImdbScreensaverManager.ImdbItem> imdbItems,
                                                  List<AerialScene> scenes,
                                                  int[] index,
                                                  boolean[] activeImageIs1,
                                                  ImageView image1,
                                                  ImageView image2,
                                                  AmbientVideoView videoView,
                                                  TextView imdbBadge) {
        try {
            // Check if we have valid IMDb wallpapers
            if (imdbItems != null && !imdbItems.isEmpty()) {
                int itemIdx = index[0] % imdbItems.size();
                ImdbScreensaverManager.ImdbItem item = imdbItems.get(itemIdx);
                File file = item.getLocalFile(context);

                if (file.exists() && file.length() > 5000) {
                    Bitmap bmp = BitmapFactory.decodeFile(file.getAbsolutePath());
                    if (bmp != null) {
                        ImageView showImg = activeImageIs1[0] ? image2 : image1;
                        ImageView hideImg = activeImageIs1[0] ? image1 : image2;

                        showImg.setImageBitmap(bmp);
                        showImg.animate().alpha(1f).setDuration(1200).start();
                        hideImg.animate().alpha(0f).setDuration(1200).start();
                        activeImageIs1[0] = !activeImageIs1[0];

                        // Update IMDb badge
                        imdbBadge.setText(item.getBadgeText());
                        imdbBadge.setVisibility(View.VISIBLE);
                        imdbBadge.animate().alpha(1f).setDuration(600).start();

                        index[0]++;
                        return;
                    }
                }
            }

            // Fallback to ambient video loop if wallpapers are still downloading
            if (scenes != null && !scenes.isEmpty()) {
                int sceneIdx = index[0] % scenes.size();
                AerialScene scene = scenes.get(sceneIdx);
                videoView.playForPackage(scene.packageName);
                image1.animate().alpha(0f).setDuration(800).start();
                image2.animate().alpha(0f).setDuration(800).start();
                imdbBadge.setVisibility(View.GONE);
                index[0]++;
            }
        } catch (Exception e) {
            Log.e(TAG, "Error displaying screensaver item", e);
        }
    }
}
