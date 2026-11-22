.class Lcom/gathin/tvhome/AppleTvScreensaver$3;
.super Ljava/lang/Object;
.source "AppleTvScreensaver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/AppleTvScreensaver;->launchScreensaver(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activeImageIs1:[Z

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$image1:Landroid/widget/ImageView;

.field final synthetic val$image2:Landroid/widget/ImageView;

.field final synthetic val$imdbBadge:Landroid/widget/TextView;

.field final synthetic val$imdbItems:Ljava/util/List;

.field final synthetic val$index:[I

.field final synthetic val$scenes:Ljava/util/List;

.field final synthetic val$screensaverHandler:Landroid/os/Handler;

.field final synthetic val$videoView:Lcom/gathin/tvhome/AmbientVideoView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;[I[ZLandroid/widget/ImageView;Landroid/widget/ImageView;Lcom/gathin/tvhome/AmbientVideoView;Landroid/widget/TextView;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/gathin/tvhome/AppleTvScreensaver$3;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/gathin/tvhome/AppleTvScreensaver$3;->val$imdbItems:Ljava/util/List;

    iput-object p3, p0, Lcom/gathin/tvhome/AppleTvScreensaver$3;->val$scenes:Ljava/util/List;

    iput-object p4, p0, Lcom/gathin/tvhome/AppleTvScreensaver$3;->val$index:[I

    iput-object p5, p0, Lcom/gathin/tvhome/AppleTvScreensaver$3;->val$activeImageIs1:[Z

    iput-object p6, p0, Lcom/gathin/tvhome/AppleTvScreensaver$3;->val$image1:Landroid/widget/ImageView;

    iput-object p7, p0, Lcom/gathin/tvhome/AppleTvScreensaver$3;->val$image2:Landroid/widget/ImageView;

    iput-object p8, p0, Lcom/gathin/tvhome/AppleTvScreensaver$3;->val$videoView:Lcom/gathin/tvhome/AmbientVideoView;

    iput-object p9, p0, Lcom/gathin/tvhome/AppleTvScreensaver$3;->val$imdbBadge:Landroid/widget/TextView;

    iput-object p10, p0, Lcom/gathin/tvhome/AppleTvScreensaver$3;->val$screensaverHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 162
    iget-object v0, p0, Lcom/gathin/tvhome/AppleTvScreensaver$3;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/gathin/tvhome/AppleTvScreensaver$3;->val$imdbItems:Ljava/util/List;

    iget-object v2, p0, Lcom/gathin/tvhome/AppleTvScreensaver$3;->val$scenes:Ljava/util/List;

    iget-object v3, p0, Lcom/gathin/tvhome/AppleTvScreensaver$3;->val$index:[I

    iget-object v4, p0, Lcom/gathin/tvhome/AppleTvScreensaver$3;->val$activeImageIs1:[Z

    iget-object v5, p0, Lcom/gathin/tvhome/AppleTvScreensaver$3;->val$image1:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/gathin/tvhome/AppleTvScreensaver$3;->val$image2:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/gathin/tvhome/AppleTvScreensaver$3;->val$videoView:Lcom/gathin/tvhome/AmbientVideoView;

    iget-object v8, p0, Lcom/gathin/tvhome/AppleTvScreensaver$3;->val$imdbBadge:Landroid/widget/TextView;

    invoke-static/range {v0 .. v8}, Lcom/gathin/tvhome/AppleTvScreensaver;->access$000(Landroid/content/Context;Ljava/util/List;Ljava/util/List;[I[ZLandroid/widget/ImageView;Landroid/widget/ImageView;Lcom/gathin/tvhome/AmbientVideoView;Landroid/widget/TextView;)V

    .line 163
    iget-object v0, p0, Lcom/gathin/tvhome/AppleTvScreensaver$3;->val$screensaverHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x36b0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    return-void
.end method
