.class public Lcom/gathin/tvhome/DailyWallpaperManager;
.super Ljava/lang/Object;
.source "DailyWallpaperManager.java"


# static fields
.field private static final KEY_COPYRIGHT:Ljava/lang/String; = "wallpaper_copyright"

.field private static final KEY_DATE:Ljava/lang/String; = "wallpaper_date"

.field private static final KEY_TITLE:Ljava/lang/String; = "wallpaper_title"

.field private static final PREF_NAME:Ljava/lang/String; = "daily_wallpaper_prefs"

.field private static final TAG:Ljava/lang/String; = "DailyWallpaper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndSyncDaily(Lcom/gathin/tvhome/MainActivity;)V
    .locals 7

    .line 70
    if-nez p0, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    invoke-static {}, Lcom/gathin/tvhome/DailyWallpaperManager;->getTodayDateString()Ljava/lang/String;

    move-result-object v1

    .line 74
    const-string v2, "daily_wallpaper_prefs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 75
    const-string v3, "wallpaper_date"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-static {v0}, Lcom/gathin/tvhome/DailyWallpaperManager;->getDailyWallpaperFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 80
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Daily wallpaper already up to date for: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DailyWallpaper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void

    .line 84
    :cond_1
    new-instance v2, Lcom/gathin/tvhome/DailyWallpaperManager$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/gathin/tvhome/DailyWallpaperManager$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/gathin/tvhome/MainActivity;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method public static downloadDailyWallpaper(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11

    .line 112
    const-string v0, "Mozilla/5.0 (Android TV)"

    const-string v1, "User-Agent"

    const-string v2, "DailyWallpaper"

    .line 114
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/net/URL;

    const-string v6, "https://www.bing.com/HPImageArchive.aspx?format=js&idx=0&n=1&mkt=en-US"

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 116
    const/16 v4, 0x1f40

    :try_start_1
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 117
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 118
    invoke-virtual {v5, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 121
    const/16 v6, 0x2000

    new-array v6, v6, [B

    .line 123
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 124
    :goto_0
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_0

    .line 125
    invoke-virtual {v7, v6, v3, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 129
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v4, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 130
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 131
    const-string v4, "images"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 132
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-nez v7, :cond_2

    .line 176
    if-eqz v5, :cond_1

    .line 177
    :try_start_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 132
    :cond_1
    :goto_1
    return v3

    .line 134
    :cond_2
    :try_start_3
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 135
    const-string v7, "urlbase"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 136
    const-string v8, "title"

    const-string v9, "Daily Ambient Wallpaper"

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 137
    const-string v9, "copyright"

    const-string v10, "Daily 4K Wallpaper \u00b7 Updated Today"

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v9, :cond_4

    .line 176
    if-eqz v5, :cond_3

    .line 177
    :try_start_4
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 139
    :cond_3
    :goto_2
    return v3

    .line 140
    :cond_4
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "https://www.bing.com"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "_1920x1080.jpg"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 142
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 143
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 145
    const/16 v5, 0x2ee0

    :try_start_6
    invoke-virtual {v7, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 146
    invoke-virtual {v7, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 147
    invoke-virtual {v7, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v5, "daily_wallpaper_tmp.jpg"

    invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 150
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 151
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 152
    :goto_3
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_5

    .line 153
    invoke-virtual {v1, v6, v3, v9}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3

    .line 155
    :cond_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 156
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 157
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 159
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v9, 0x1388

    cmp-long v1, v5, v9

    if-lez v1, :cond_8

    .line 160
    invoke-static {p0}, Lcom/gathin/tvhome/DailyWallpaperManager;->getDailyWallpaperFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 162
    :cond_6
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 164
    const-string v0, "daily_wallpaper_prefs"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 165
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "wallpaper_date"

    .line 166
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "wallpaper_title"

    .line 167
    invoke-interface {p0, v0, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "wallpaper_copyright"

    .line 168
    invoke-interface {p0, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 169
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 170
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Updated daily wallpaper for date "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 171
    nop

    .line 176
    if-eqz v7, :cond_7

    .line 177
    :try_start_7
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p0

    .line 171
    :cond_7
    :goto_4
    const/4 p0, 0x1

    return p0

    .line 176
    :cond_8
    if-eqz v7, :cond_9

    .line 177
    :try_start_8
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception p0

    goto :goto_6

    .line 173
    :catchall_4
    move-exception p0

    move-object v4, v7

    goto :goto_5

    :catchall_5
    move-exception p0

    move-object v4, v5

    goto :goto_5

    :catchall_6
    move-exception p0

    .line 174
    :goto_5
    :try_start_9
    const-string p1, "Error downloading daily wallpaper"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 176
    if-eqz v4, :cond_9

    .line 177
    :try_start_a
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 180
    :cond_9
    :goto_6
    return v3

    .line 176
    :catchall_7
    move-exception p0

    if-eqz v4, :cond_a

    .line 177
    :try_start_b
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    goto :goto_7

    :catchall_8
    move-exception p1

    .line 179
    :cond_a
    :goto_7
    goto :goto_9

    :goto_8
    throw p0

    :goto_9
    goto :goto_8
.end method

.method public static getDailyWallpaperFile(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 41
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "daily_wallpaper.jpg"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTodayCopyright(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 64
    if-nez p0, :cond_0

    const-string p0, "Daily Wallpaper of the Day"

    return-object p0

    .line 65
    :cond_0
    const-string v0, "daily_wallpaper_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 66
    const-string v0, "wallpaper_copyright"

    const-string v1, "Daily 4K Wallpaper \u00b7 Updated Today"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTodayDateString()Ljava/lang/String;
    .locals 3

    .line 34
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    const-string v0, "today"

    return-object v0
.end method

.method public static getTodayTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 58
    const-string v0, "Google TV Ambient"

    if-nez p0, :cond_0

    return-object v0

    .line 59
    :cond_0
    const-string v1, "daily_wallpaper_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 60
    const-string v1, "wallpaper_title"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTodayWallpaperBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6

    .line 45
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 46
    :cond_0
    invoke-static {p0}, Lcom/gathin/tvhome/DailyWallpaperManager;->getDailyWallpaperFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 49
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    const-string v1, "DailyWallpaper"

    const-string v2, "Error decoding daily wallpaper"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    :cond_1
    return-object v0
.end method
