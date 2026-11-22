.class public Lcom/gathin/tvhome/ImdbScreensaverManager;
.super Ljava/lang/Object;
.source "ImdbScreensaverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;
    }
.end annotation


# static fields
.field private static final KEY_ITEMS_JSON:Ljava/lang/String; = "cached_items_json"

.field private static final KEY_LAST_SYNC:Ljava/lang/String; = "last_sync_date"

.field private static final MOVIES_API:Ljava/lang/String; = "https://v3-cinemeta.strem.io/catalog/movie/top.json"

.field private static final PREF_NAME:Ljava/lang/String; = "imdb_screensaver_prefs"

.field private static final SERIES_API:Ljava/lang/String; = "https://v3-cinemeta.strem.io/catalog/series/top.json"

.field private static final TAG:Ljava/lang/String; = "ImdbScreensaver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndSyncDaily(Landroid/content/Context;)V
    .locals 8

    .line 79
    if-nez p0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 81
    invoke-static {}, Lcom/gathin/tvhome/ImdbScreensaverManager;->getTodayDateString()Ljava/lang/String;

    move-result-object v0

    .line 83
    const-string v1, "imdb_screensaver_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 84
    const-string v3, "last_sync_date"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {p0}, Lcom/gathin/tvhome/ImdbScreensaverManager;->getCachedItems(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 88
    nop

    .line 89
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;

    .line 90
    invoke-virtual {v3, p0}, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;->getLocalFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, p0}, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;->getLocalFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x1388

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    .line 91
    nop

    .line 92
    const/4 v2, 0x1

    goto :goto_1

    .line 94
    :cond_1
    goto :goto_0

    .line 95
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 96
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMDb screensaver wallpapers already up to date for "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImdbScreensaver"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void

    .line 101
    :cond_3
    new-instance v1, Lcom/gathin/tvhome/ImdbScreensaverManager$1;

    invoke-direct {v1, p0, v0}, Lcom/gathin/tvhome/ImdbScreensaverManager$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 107
    return-void
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 3

    .line 234
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 235
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 236
    const/16 p1, 0x2000

    new-array p1, p1, [B

    .line 238
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 239
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 242
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 243
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 244
    :catch_0
    move-exception p0

    :goto_1
    nop

    .line 245
    return-void
.end method

.method private static downloadFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 8

    .line 205
    const-string v0, "ImdbScreensaver"

    .line 207
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    const/16 v1, 0x1f40

    :try_start_1
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 210
    const/16 v1, 0x2ee0

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 211
    const-string v1, "User-Agent"

    const-string v3, "Mozilla/5.0 (Android TV; SmartTV)"

    invoke-virtual {v2, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 214
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 215
    const/16 v4, 0x2000

    new-array v4, v4, [B

    .line 217
    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 218
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 221
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 222
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloaded IMDb backdrop: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bytes)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 228
    if-eqz v2, :cond_2

    goto :goto_2

    .line 224
    :catch_0
    move-exception v1

    goto :goto_1

    .line 228
    :catchall_0
    move-exception p0

    goto :goto_3

    .line 224
    :catch_1
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    .line 225
    :goto_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to download backdrop from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, ": "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 228
    :cond_1
    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 230
    :cond_2
    return-void

    .line 228
    :catchall_1
    move-exception p0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 229
    :cond_3
    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method private static fetchCatalog(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;",
            ">;"
        }
    .end annotation

    .line 159
    const-string v0, ""

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 160
    nop

    .line 162
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 164
    const/16 v2, 0x1f40

    :try_start_1
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 165
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 166
    const-string v2, "User-Agent"

    const-string v4, "Mozilla/5.0 (Android TV; SmartTV)"

    invoke-virtual {v3, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 169
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 170
    const/16 v5, 0x1000

    new-array v5, v5, [B

    .line 172
    :goto_0
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eq v6, v7, :cond_0

    .line 173
    invoke-virtual {v4, v5, v8, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 177
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 178
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 179
    const-string v2, "metas"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 180
    if-eqz v2, :cond_3

    .line 181
    nop

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v8, v4, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x6

    if-ge v4, v5, :cond_3

    .line 182
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 183
    const-string v5, "background"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 184
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 186
    :cond_1
    new-instance v6, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;

    invoke-direct {v6}, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;-><init>()V

    .line 187
    const-string v7, "name"

    const-string v9, "Popular Title"

    invoke-virtual {v4, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;->title:Ljava/lang/String;

    .line 188
    const-string v7, "year"

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;->year:Ljava/lang/String;

    .line 189
    const-string v7, "imdb_id"

    const-string v9, "id"

    invoke-virtual {v4, v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;->imdbId:Ljava/lang/String;

    .line 190
    const-string v7, "imdbRating"

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;->imdbRating:Ljava/lang/String;

    .line 191
    iput-object v5, v6, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;->backdropUrl:Ljava/lang/String;

    .line 192
    iput-object p1, v6, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;->type:Ljava/lang/String;

    .line 193
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 199
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_5

    .line 196
    :catch_0
    move-exception p1

    move-object v2, v3

    goto :goto_3

    .line 199
    :catchall_1
    move-exception p0

    goto :goto_5

    .line 196
    :catch_1
    move-exception p1

    .line 197
    :goto_3
    :try_start_2
    const-string v0, "ImdbScreensaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to fetch from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, ": "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 199
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 201
    :cond_4
    :goto_4
    return-object v1

    .line 199
    :goto_5
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 200
    :cond_5
    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method

.method public static getCachedItems(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;",
            ">;"
        }
    .end annotation

    .line 248
    const-string v0, ""

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 250
    :try_start_0
    const-string v2, "imdb_screensaver_prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 251
    const-string v2, "cached_items_json"

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 252
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 253
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 254
    nop

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-ge v3, p0, :cond_0

    .line 255
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    .line 256
    new-instance v4, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;

    invoke-direct {v4}, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;-><init>()V

    .line 257
    const-string v5, "title"

    invoke-virtual {p0, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;->title:Ljava/lang/String;

    .line 258
    const-string v5, "year"

    invoke-virtual {p0, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;->year:Ljava/lang/String;

    .line 259
    const-string v5, "imdbId"

    invoke-virtual {p0, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;->imdbId:Ljava/lang/String;

    .line 260
    const-string v5, "imdbRating"

    invoke-virtual {p0, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;->imdbRating:Ljava/lang/String;

    .line 261
    const-string v5, "backdropUrl"

    invoke-virtual {p0, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;->backdropUrl:Ljava/lang/String;

    .line 262
    const-string v5, "type"

    const-string v6, "movie"

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;->type:Ljava/lang/String;

    .line 263
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 268
    :cond_0
    goto :goto_1

    .line 266
    :catch_0
    move-exception p0

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error reading cached items: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImdbScreensaver"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_1
    return-object v1
.end method

.method public static getCachedTopTitle()Ljava/lang/String;
    .locals 1

    .line 306
    const-string v0, "The Penguin, Dune Part Two, and Gladiator II"

    return-object v0
.end method

.method public static getCachedTopTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 297
    :try_start_0
    invoke-static {p0}, Lcom/gathin/tvhome/ImdbScreensaverManager;->getCachedItems(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 298
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;

    invoke-virtual {p0}, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;->getDisplayName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 301
    :catch_0
    move-exception p0

    :cond_0
    nop

    .line 302
    const-string p0, "The Penguin, Dune Part Two, and Gladiator II"

    return-object p0
.end method

.method public static getTodayDateString()Ljava/lang/String;
    .locals 3

    .line 311
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 312
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    const-string v0, "today"

    return-object v0
.end method

.method private static saveCachedItems(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 274
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 275
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;

    .line 276
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 277
    const-string v3, "title"

    iget-object v4, v1, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    const-string v3, "year"

    iget-object v4, v1, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;->year:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    const-string v3, "imdbId"

    iget-object v4, v1, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;->imdbId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    const-string v3, "imdbRating"

    iget-object v4, v1, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;->imdbRating:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    const-string v3, "backdropUrl"

    iget-object v4, v1, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;->backdropUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    const-string v3, "type"

    iget-object v1, v1, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 284
    goto :goto_0

    .line 285
    :cond_0
    const-string p1, "imdb_screensaver_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 286
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "cached_items_json"

    .line 287
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "last_sync_date"

    .line 288
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 289
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    goto :goto_1

    .line 290
    :catch_0
    move-exception p0

    .line 291
    const-string p1, "ImdbScreensaver"

    const-string p2, "Error saving cached items"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    :goto_1
    return-void
.end method

.method public static syncFromApi(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11

    .line 111
    const-string v0, "ImdbScreensaver"

    :try_start_0
    const-string v1, "Starting sync from open IMDb Cinemeta API..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v1, "https://v3-cinemeta.strem.io/catalog/movie/top.json"

    const-string v2, "movie"

    invoke-static {v1, v2}, Lcom/gathin/tvhome/ImdbScreensaverManager;->fetchCatalog(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 113
    const-string v2, "https://v3-cinemeta.strem.io/catalog/series/top.json"

    const-string v3, "series"

    invoke-static {v2, v3}, Lcom/gathin/tvhome/ImdbScreensaverManager;->fetchCatalog(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 115
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 116
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 117
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/16 v8, 0xc

    if-ge v7, v8, :cond_2

    .line 118
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 122
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    const-string p0, "No items returned from Cinemeta API"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 128
    :cond_3
    invoke-static {p0, v3, p1}, Lcom/gathin/tvhome/ImdbScreensaverManager;->saveCachedItems(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 131
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v4, "imdb_wallpapers"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 134
    :cond_4
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const-wide/16 v6, 0x1388

    if-ge v1, v2, :cond_7

    const/16 v2, 0x8

    if-ge v1, v2, :cond_7

    .line 135
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;

    .line 136
    invoke-virtual {v2, p0}, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;->getLocalFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    .line 137
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v10, v8, v6

    if-gez v10, :cond_6

    .line 138
    :cond_5
    iget-object v2, v2, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;->backdropUrl:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/gathin/tvhome/ImdbScreensaverManager;->downloadFile(Ljava/lang/String;Ljava/io/File;)V

    .line 134
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 143
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 144
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;

    invoke-virtual {v1, p0}, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;->getLocalFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v2, v8, v6

    if-lez v2, :cond_8

    .line 146
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v4, "daily_wallpaper.jpg"

    invoke-direct {v2, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    invoke-static {v1, v2}, Lcom/gathin/tvhome/ImdbScreensaverManager;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 148
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updated daily home wallpaper with top IMDb movie: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;

    iget-object v1, v1, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;->title:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully synced "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " IMDb screensaver items for "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto :goto_2

    .line 153
    :catch_0
    move-exception p0

    .line 154
    const-string p1, "Error syncing IMDb screensaver items"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    :goto_2
    return-void
.end method
