.class Lcom/gathin/tvhome/ChildLockManager$13;
.super Ljava/lang/Object;
.source "ChildLockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/ChildLockManager;->promptNewPin(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$entered:Ljava/lang/StringBuilder;

.field final synthetic val$tvDots:Landroid/widget/TextView;

.field final synthetic val$tvSub:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;Landroid/app/Activity;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 697
    iput-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$13;->val$entered:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lcom/gathin/tvhome/ChildLockManager$13;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/gathin/tvhome/ChildLockManager$13;->val$tvDots:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/gathin/tvhome/ChildLockManager$13;->val$tvSub:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/gathin/tvhome/ChildLockManager$13;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 700
    iget-object v0, p0, Lcom/gathin/tvhome/ChildLockManager$13;->val$entered:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 701
    iget-object v1, p0, Lcom/gathin/tvhome/ChildLockManager$13;->val$activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/gathin/tvhome/ChildLockManager;->setPin(Landroid/content/Context;Ljava/lang/String;)V

    .line 702
    iget-object v1, p0, Lcom/gathin/tvhome/ChildLockManager$13;->val$tvDots:Landroid/widget/TextView;

    const-string v2, "#4ade80"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 703
    iget-object v1, p0, Lcom/gathin/tvhome/ChildLockManager$13;->val$tvSub:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2705 New PIN Saved: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    iget-object v0, p0, Lcom/gathin/tvhome/ChildLockManager$13;->val$tvSub:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 705
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/gathin/tvhome/ChildLockManager$13$1;

    iget-object v2, p0, Lcom/gathin/tvhome/ChildLockManager$13;->val$dialog:Landroid/app/Dialog;

    invoke-direct {v1, p0, v2}, Lcom/gathin/tvhome/ChildLockManager$13$1;-><init>(Lcom/gathin/tvhome/ChildLockManager$13;Landroid/app/Dialog;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 711
    return-void
.end method
