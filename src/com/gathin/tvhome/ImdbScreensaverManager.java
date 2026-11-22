package com.gathin.tvhome;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

public class ImdbScreensaverManager {
    private static final String TAG = "ImdbScreensaver";
    private static final String PREF_NAME = "imdb_screensaver_prefs";
    private static final String KEY_LAST_SYNC = "last_sync_date";
    private static final String KEY_ITEMS_JSON = "cached_items_json";

    private static final String MOVIES_API = "https://v3-cinemeta.strem.io/catalog/movie/top.json";
    private static final String SERIES_API = "https://v3-cinemeta.strem.io/catalog/series/top.json";

    public static class ImdbItem {
        public String title;
        public String year;
        public String imdbId;
        public String imdbRating;
        public String backdropUrl;
        public String type;

        public String getDisplayName() {
            StringBuilder sb = new StringBuilder();
            if (title != null) sb.append(title);
            if (year != null && !year.isEmpty()) sb.append(" (").append(year).append(")");
            return sb.toString();
        }

        public String getBadgeText() {
            StringBuilder sb = new StringBuilder();
            if (imdbRating != null && !imdbRating.trim().isEmpty()) {
                sb.append("★ ").append(imdbRating.trim()).append(" IMDb  ·  ");
            }
            sb.append(getDisplayName());
            return sb.toString();
        }

        public File getLocalFile(Context context) {
            File dir = new File(context.getFilesDir(), "imdb_wallpapers");
            if (!dir.exists()) dir.mkdirs();
            return new File(dir, imdbId + ".jpg");
        }
    }

    public static void checkAndSyncDaily(Context context) {
        if (context == null) return;
        final Context appCtx = context.getApplicationContext();
        final String today = getTodayDateString();

        SharedPreferences prefs = appCtx.getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE);
        String lastSync = prefs.getString(KEY_LAST_SYNC, "");
        List<ImdbItem> items = getCachedItems(appCtx);

        if (today.equals(lastSync) && !items.isEmpty()) {
            boolean hasAtLeastOneFile = false;
            for (ImdbItem item : items) {
                if (item.getLocalFile(appCtx).exists() && item.getLocalFile(appCtx).length() > 5000) {
                    hasAtLeastOneFile = true;
                    break;
                }
            }
            if (hasAtLeastOneFile) {
                Log.d(TAG, "IMDb screensaver wallpapers already up to date for " + today);
                return;
            }
        }

        AsyncTask.execute(new Runnable() {
            @Override
            public void run() {
                syncFromApi(appCtx, today);
            }
        });
    }

    public static void syncFromApi(Context context, String today) {
        try {
            Log.d(TAG, "Starting sync from open IMDb Cinemeta API...");
            List<ImdbItem> movies = fetchCatalog(MOVIES_API, "movie");
            List<ImdbItem> series = fetchCatalog(SERIES_API, "series");

            List<ImdbItem> combined = new ArrayList<>();
            int max = Math.max(movies.size(), series.size());
            for (int i = 0; i < max && combined.size() < 12; i++) {
                if (i < movies.size()) combined.add(movies.get(i));
                if (i < series.size()) combined.add(series.get(i));
            }

            if (combined.isEmpty()) {
                Log.w(TAG, "No items returned from Cinemeta API");
                return;
            }

            // Save JSON metadata
            saveCachedItems(context, combined, today);

            // Download top backdrops
            File dir = new File(context.getFilesDir(), "imdb_wallpapers");
            if (!dir.exists()) dir.mkdirs();

            for (int i = 0; i < combined.size() && i < 8; i++) {
                ImdbItem item = combined.get(i);
                File file = item.getLocalFile(context);
                if (!file.exists() || file.length() < 5000) {
                    downloadFile(item.backdropUrl, file);
                }
            }

            // Also copy top movie wallpaper to daily home wallpaper
            if (!combined.isEmpty()) {
                File topFile = combined.get(0).getLocalFile(context);
                if (topFile.exists() && topFile.length() > 5000) {
                    File dailyHomeWallpaper = new File(context.getFilesDir(), "daily_wallpaper.jpg");
                    copyFile(topFile, dailyHomeWallpaper);
                    Log.d(TAG, "Updated daily home wallpaper with top IMDb movie: " + combined.get(0).title);
                }
            }

            Log.d(TAG, "Successfully synced " + combined.size() + " IMDb screensaver items for " + today);
        } catch (Exception e) {
            Log.e(TAG, "Error syncing IMDb screensaver items", e);
        }
    }

    private static List<ImdbItem> fetchCatalog(String urlStr, String type) {
        List<ImdbItem> list = new ArrayList<>();
        HttpURLConnection conn = null;
        try {
            URL url = new URL(urlStr);
            conn = (HttpURLConnection) url.openConnection();
            conn.setConnectTimeout(8000);
            conn.setReadTimeout(8000);
            conn.setRequestProperty("User-Agent", "Mozilla/5.0 (Android TV; SmartTV)");

            InputStream is = conn.getInputStream();
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            byte[] buf = new byte[4096];
            int n;
            while ((n = is.read(buf)) != -1) {
                baos.write(buf, 0, n);
            }
            is.close();

            String jsonStr = new String(baos.toByteArray(), "UTF-8");
            JSONObject root = new JSONObject(jsonStr);
            JSONArray metas = root.optJSONArray("metas");
            if (metas != null) {
                for (int i = 0; i < metas.length() && list.size() < 6; i++) {
                    JSONObject obj = metas.getJSONObject(i);
                    String bg = obj.optString("background", "");
                    if (bg.isEmpty() || !bg.startsWith("http")) continue;

                    ImdbItem item = new ImdbItem();
                    item.title = obj.optString("name", "Popular Title");
                    item.year = obj.optString("year", "");
                    item.imdbId = obj.optString("imdb_id", obj.optString("id", ""));
                    item.imdbRating = obj.optString("imdbRating", "");
                    item.backdropUrl = bg;
                    item.type = type;
                    list.add(item);
                }
            }
        } catch (Exception e) {
            Log.w(TAG, "Failed to fetch from " + urlStr + ": " + e.getMessage());
        } finally {
            if (conn != null) conn.disconnect();
        }
        return list;
    }

    private static void downloadFile(String urlStr, File outFile) {
        HttpURLConnection conn = null;
        try {
            URL url = new URL(urlStr);
            conn = (HttpURLConnection) url.openConnection();
            conn.setConnectTimeout(8000);
            conn.setReadTimeout(12000);
            conn.setRequestProperty("User-Agent", "Mozilla/5.0 (Android TV; SmartTV)");

            InputStream is = conn.getInputStream();
            FileOutputStream fos = new FileOutputStream(outFile);
            byte[] buf = new byte[8192];
            int len;
            while ((len = is.read(buf)) != -1) {
                fos.write(buf, 0, len);
            }
            fos.flush();
            fos.close();
            is.close();
            Log.d(TAG, "Downloaded IMDb backdrop: " + outFile.getName() + " (" + outFile.length() + " bytes)");
        } catch (Exception e) {
            Log.w(TAG, "Failed to download backdrop from " + urlStr + ": " + e.getMessage());
            if (outFile.exists()) outFile.delete();
        } finally {
            if (conn != null) conn.disconnect();
        }
    }

    private static void copyFile(File src, File dst) {
        try {
            java.io.FileInputStream in = new java.io.FileInputStream(src);
            FileOutputStream out = new FileOutputStream(dst);
            byte[] buf = new byte[8192];
            int len;
            while ((len = in.read(buf)) != -1) {
                out.write(buf, 0, len);
            }
            in.close();
            out.flush();
            out.close();
        } catch (Exception ignored) {}
    }

    public static List<ImdbItem> getCachedItems(Context context) {
        List<ImdbItem> list = new ArrayList<>();
        try {
            SharedPreferences prefs = context.getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE);
            String jsonStr = prefs.getString(KEY_ITEMS_JSON, "");
            if (!jsonStr.isEmpty()) {
                JSONArray arr = new JSONArray(jsonStr);
                for (int i = 0; i < arr.length(); i++) {
                    JSONObject obj = arr.getJSONObject(i);
                    ImdbItem item = new ImdbItem();
                    item.title = obj.optString("title", "");
                    item.year = obj.optString("year", "");
                    item.imdbId = obj.optString("imdbId", "");
                    item.imdbRating = obj.optString("imdbRating", "");
                    item.backdropUrl = obj.optString("backdropUrl", "");
                    item.type = obj.optString("type", "movie");
                    list.add(item);
                }
            }
        } catch (Exception e) {
            Log.w(TAG, "Error reading cached items: " + e.getMessage());
        }
        return list;
    }

    private static void saveCachedItems(Context context, List<ImdbItem> items, String today) {
        try {
            JSONArray arr = new JSONArray();
            for (ImdbItem item : items) {
                JSONObject obj = new JSONObject();
                obj.put("title", item.title);
                obj.put("year", item.year);
                obj.put("imdbId", item.imdbId);
                obj.put("imdbRating", item.imdbRating);
                obj.put("backdropUrl", item.backdropUrl);
                obj.put("type", item.type);
                arr.put(obj);
            }
            SharedPreferences prefs = context.getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE);
            prefs.edit()
                    .putString(KEY_ITEMS_JSON, arr.toString())
                    .putString(KEY_LAST_SYNC, today)
                    .apply();
        } catch (Exception e) {
            Log.e(TAG, "Error saving cached items", e);
        }
    }

    public static String getTodayDateString() {
        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
            return sdf.format(new Date());
        } catch (Exception e) {
            return "today";
        }
    }
}
