.class Lcom/gathin/tvhome/DailyWallpaperManager$1;
.super Ljava/lang/Object;
.source "DailyWallpaperManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/DailyWallpaperManager;->checkAndSyncDaily(Lcom/gathin/tvhome/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/gathin/tvhome/MainActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$today:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/gathin/tvhome/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/gathin/tvhome/DailyWallpaperManager$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/gathin/tvhome/DailyWallpaperManager$1;->val$today:Ljava/lang/String;

    iput-object p3, p0, Lcom/gathin/tvhome/DailyWallpaperManager$1;->val$activity:Lcom/gathin/tvhome/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/gathin/tvhome/DailyWallpaperManager$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/gathin/tvhome/DailyWallpaperManager$1;->val$today:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gathin/tvhome/DailyWallpaperManager;->downloadDailyWallpaper(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/gathin/tvhome/DailyWallpaperManager$1;->val$activity:Lcom/gathin/tvhome/MainActivity;

    new-instance v1, Lcom/gathin/tvhome/DailyWallpaperManager$1$1;

    iget-object v2, p0, Lcom/gathin/tvhome/DailyWallpaperManager$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/gathin/tvhome/DailyWallpaperManager$1;->val$activity:Lcom/gathin/tvhome/MainActivity;

    invoke-direct {v1, p0, v2, v3}, Lcom/gathin/tvhome/DailyWallpaperManager$1$1;-><init>(Lcom/gathin/tvhome/DailyWallpaperManager$1;Landroid/content/Context;Lcom/gathin/tvhome/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/gathin/tvhome/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    const-string v1, "DailyWallpaper"

    const-string v2, "Failed syncing daily wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    :goto_0
    return-void
.end method
