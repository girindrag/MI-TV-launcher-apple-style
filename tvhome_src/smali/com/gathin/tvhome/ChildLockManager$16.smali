.class Lcom/gathin/tvhome/ChildLockManager$16;
.super Ljava/lang/Object;
.source "ChildLockManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/ChildLockManager;->promptNewPin(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$entered:Ljava/lang/StringBuilder;

.field final synthetic val$savePin:Ljava/lang/Runnable;

.field final synthetic val$updateDots:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 788
    iput-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$16;->val$entered:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lcom/gathin/tvhome/ChildLockManager$16;->val$updateDots:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/gathin/tvhome/ChildLockManager$16;->val$savePin:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/gathin/tvhome/ChildLockManager$16;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 791
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_4

    .line 792
    const/4 p1, 0x7

    const/4 p3, 0x4

    const/4 v0, 0x1

    if-lt p2, p1, :cond_1

    const/16 v1, 0x10

    if-gt p2, v1, :cond_1

    .line 793
    sub-int/2addr p2, p1

    .line 794
    iget-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$16;->val$entered:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-ge p1, p3, :cond_0

    .line 795
    iget-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$16;->val$entered:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 796
    iget-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$16;->val$updateDots:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 797
    iget-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$16;->val$entered:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-ne p1, p3, :cond_0

    .line 798
    iget-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$16;->val$savePin:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 801
    :cond_0
    return v0

    .line 802
    :cond_1
    const/16 p1, 0x43

    if-ne p2, p1, :cond_3

    .line 803
    iget-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$16;->val$entered:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 804
    iget-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$16;->val$entered:Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/gathin/tvhome/ChildLockManager$16;->val$entered:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 805
    iget-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$16;->val$updateDots:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 807
    :cond_2
    return v0

    .line 808
    :cond_3
    if-ne p2, p3, :cond_4

    .line 809
    iget-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$16;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 810
    return v0

    .line 813
    :cond_4
    const/4 p1, 0x0

    return p1
.end method
