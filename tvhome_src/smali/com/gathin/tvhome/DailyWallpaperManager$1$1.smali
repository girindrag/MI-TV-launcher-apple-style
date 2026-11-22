.class Lcom/gathin/tvhome/DailyWallpaperManager$1$1;
.super Ljava/lang/Object;
.source "DailyWallpaperManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/DailyWallpaperManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gathin/tvhome/DailyWallpaperManager$1;

.field final synthetic val$activity:Lcom/gathin/tvhome/MainActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/gathin/tvhome/DailyWallpaperManager$1;Landroid/content/Context;Lcom/gathin/tvhome/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    iput-object p2, p0, Lcom/gathin/tvhome/DailyWallpaperManager$1$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/gathin/tvhome/DailyWallpaperManager$1$1;->val$activity:Lcom/gathin/tvhome/MainActivity;

    iput-object p1, p0, Lcom/gathin/tvhome/DailyWallpaperManager$1$1;->this$0:Lcom/gathin/tvhome/DailyWallpaperManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/gathin/tvhome/DailyWallpaperManager$1$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/gathin/tvhome/DailyWallpaperManager;->getTodayWallpaperBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/gathin/tvhome/DailyWallpaperManager$1$1;->val$activity:Lcom/gathin/tvhome/MainActivity;

    iget-object v1, v1, Lcom/gathin/tvhome/MainActivity;->heroArt:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/gathin/tvhome/DailyWallpaperManager$1$1;->val$activity:Lcom/gathin/tvhome/MainActivity;

    iget-object v1, v1, Lcom/gathin/tvhome/MainActivity;->heroArt:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    iget-object v0, p0, Lcom/gathin/tvhome/DailyWallpaperManager$1$1;->val$activity:Lcom/gathin/tvhome/MainActivity;

    iget-object v0, v0, Lcom/gathin/tvhome/MainActivity;->heroArt:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/gathin/tvhome/DailyWallpaperManager$1$1;->val$activity:Lcom/gathin/tvhome/MainActivity;

    iget-object v0, v0, Lcom/gathin/tvhome/MainActivity;->heroArt:Landroid/widget/ImageView;

    const v1, 0x3eb33333    # 0.35f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 101
    return-void
.end method
