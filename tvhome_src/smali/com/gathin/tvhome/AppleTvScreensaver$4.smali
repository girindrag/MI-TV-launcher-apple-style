.class Lcom/gathin/tvhome/AppleTvScreensaver$4;
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
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$screensaverHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/app/Dialog;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lcom/gathin/tvhome/AppleTvScreensaver$4;->val$screensaverHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/gathin/tvhome/AppleTvScreensaver$4;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/gathin/tvhome/AppleTvScreensaver$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/gathin/tvhome/AppleTvScreensaver$4;->val$screensaverHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/gathin/tvhome/AppleTvScreensaver$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/gathin/tvhome/AppleTvScreensaver$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 182
    :cond_0
    invoke-static {v1}, Lcom/gathin/tvhome/AppleTvScreensaver;->access$102(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 183
    iget-object v0, p0, Lcom/gathin/tvhome/AppleTvScreensaver$4;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/gathin/tvhome/AppleTvScreensaver;->resetIdleTimer(Landroid/app/Activity;)V

    .line 184
    return-void
.end method
