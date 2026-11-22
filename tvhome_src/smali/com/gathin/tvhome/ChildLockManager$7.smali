.class Lcom/gathin/tvhome/ChildLockManager$7;
.super Ljava/lang/Object;
.source "ChildLockManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/ChildLockManager;->showPinDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$checkPin:Ljava/lang/Runnable;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$entered:Ljava/lang/StringBuilder;

.field final synthetic val$updateDots:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 353
    iput-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$7;->val$entered:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lcom/gathin/tvhome/ChildLockManager$7;->val$updateDots:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/gathin/tvhome/ChildLockManager$7;->val$checkPin:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/gathin/tvhome/ChildLockManager$7;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 356
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_4

    .line 357
    const/4 p1, 0x7

    const/4 p3, 0x4

    const/4 v0, 0x1

    if-lt p2, p1, :cond_1

    const/16 v1, 0x10

    if-gt p2, v1, :cond_1

    .line 358
    sub-int/2addr p2, p1

    .line 359
    iget-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$7;->val$entered:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-ge p1, p3, :cond_0

    .line 360
    iget-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$7;->val$entered:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 361
    iget-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$7;->val$updateDots:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 362
    iget-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$7;->val$entered:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-ne p1, p3, :cond_0

    .line 363
    iget-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$7;->val$checkPin:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 366
    :cond_0
    return v0

    .line 367
    :cond_1
    const/16 p1, 0x43

    if-ne p2, p1, :cond_3

    .line 368
    iget-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$7;->val$entered:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 369
    iget-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$7;->val$entered:Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/gathin/tvhome/ChildLockManager$7;->val$entered:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 370
    iget-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$7;->val$updateDots:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 372
    :cond_2
    return v0

    .line 373
    :cond_3
    if-ne p2, p3, :cond_4

    .line 374
    iget-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$7;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 375
    return v0

    .line 378
    :cond_4
    const/4 p1, 0x0

    return p1
.end method
