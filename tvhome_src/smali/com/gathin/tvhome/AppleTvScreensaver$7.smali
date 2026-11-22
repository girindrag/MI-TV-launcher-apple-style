.class Lcom/gathin/tvhome/AppleTvScreensaver$7;
.super Ljava/lang/Object;
.source "AppleTvScreensaver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

.field final synthetic val$screensaverHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcom/gathin/tvhome/AppleTvScreensaver$7;->val$screensaverHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/gathin/tvhome/AppleTvScreensaver$7;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 208
    iget-object p1, p0, Lcom/gathin/tvhome/AppleTvScreensaver$7;->val$screensaverHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 209
    invoke-static {v0}, Lcom/gathin/tvhome/AppleTvScreensaver;->access$102(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 210
    iget-object p1, p0, Lcom/gathin/tvhome/AppleTvScreensaver$7;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/gathin/tvhome/AppleTvScreensaver;->resetIdleTimer(Landroid/app/Activity;)V

    .line 211
    return-void
.end method
