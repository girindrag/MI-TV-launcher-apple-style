.class Lcom/gathin/tvhome/ChildLockManager$4;
.super Ljava/lang/Object;
.source "ChildLockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/ChildLockManager;->showPinDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$entered:Ljava/lang/StringBuilder;

.field final synthetic val$onCorrectPin:Ljava/lang/Runnable;

.field final synthetic val$targetPin:Ljava/lang/String;

.field final synthetic val$tvDots:Landroid/widget/TextView;

.field final synthetic val$tvSub:Landroid/widget/TextView;

.field final synthetic val$updateDots:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/app/Dialog;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 249
    iput-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$4;->val$entered:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lcom/gathin/tvhome/ChildLockManager$4;->val$targetPin:Ljava/lang/String;

    iput-object p3, p0, Lcom/gathin/tvhome/ChildLockManager$4;->val$tvDots:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/gathin/tvhome/ChildLockManager$4;->val$tvSub:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/gathin/tvhome/ChildLockManager$4;->val$dialog:Landroid/app/Dialog;

    iput-object p6, p0, Lcom/gathin/tvhome/ChildLockManager$4;->val$onCorrectPin:Ljava/lang/Runnable;

    iput-object p7, p0, Lcom/gathin/tvhome/ChildLockManager$4;->val$updateDots:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/gathin/tvhome/ChildLockManager$4;->val$entered:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gathin/tvhome/ChildLockManager$4;->val$targetPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 264
    iget-object v1, p0, Lcom/gathin/tvhome/ChildLockManager$4;->val$tvDots:Landroid/widget/TextView;

    .line 252
    if-eqz v0, :cond_0

    .line 253
    const-string v0, "#4ade80"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    iget-object v1, p0, Lcom/gathin/tvhome/ChildLockManager$4;->val$tvSub:Landroid/widget/TextView;

    const-string v2, "\u2705 Access Granted"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v1, p0, Lcom/gathin/tvhome/ChildLockManager$4;->val$tvSub:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/gathin/tvhome/ChildLockManager$4$1;

    iget-object v2, p0, Lcom/gathin/tvhome/ChildLockManager$4;->val$dialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/gathin/tvhome/ChildLockManager$4;->val$onCorrectPin:Ljava/lang/Runnable;

    invoke-direct {v1, p0, v2, v3}, Lcom/gathin/tvhome/ChildLockManager$4$1;-><init>(Lcom/gathin/tvhome/ChildLockManager$4;Landroid/app/Dialog;Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 264
    :cond_0
    const-string v0, "#ef4444"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    iget-object v1, p0, Lcom/gathin/tvhome/ChildLockManager$4;->val$tvSub:Landroid/widget/TextView;

    const-string v2, "\u274c Incorrect PIN. Try again."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v1, p0, Lcom/gathin/tvhome/ChildLockManager$4;->val$tvSub:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/gathin/tvhome/ChildLockManager$4$2;

    iget-object v2, p0, Lcom/gathin/tvhome/ChildLockManager$4;->val$entered:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/gathin/tvhome/ChildLockManager$4;->val$updateDots:Ljava/lang/Runnable;

    invoke-direct {v1, p0, v2, v3}, Lcom/gathin/tvhome/ChildLockManager$4$2;-><init>(Lcom/gathin/tvhome/ChildLockManager$4;Ljava/lang/StringBuilder;Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 275
    :goto_0
    return-void
.end method
