.class Lcom/gathin/tvhome/ChildLockManager$14;
.super Ljava/lang/Object;
.source "ChildLockManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/ChildLockManager;->promptNewPin(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$entered:Ljava/lang/StringBuilder;

.field final synthetic val$savePin:Ljava/lang/Runnable;

.field final synthetic val$updateDots:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 714
    iput-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$14;->val$entered:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lcom/gathin/tvhome/ChildLockManager$14;->val$updateDots:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/gathin/tvhome/ChildLockManager$14;->val$savePin:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 717
    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 718
    const-string v0, "Clear"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    iget-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$14;->val$entered:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 720
    iget-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$14;->val$updateDots:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 721
    :cond_0
    const-string v0, "\u232b"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 726
    iget-object v1, p0, Lcom/gathin/tvhome/ChildLockManager$14;->val$entered:Ljava/lang/StringBuilder;

    .line 721
    if-eqz v0, :cond_1

    .line 722
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 723
    iget-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$14;->val$entered:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/gathin/tvhome/ChildLockManager$14;->val$entered:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 724
    iget-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$14;->val$updateDots:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 726
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 727
    iget-object v0, p0, Lcom/gathin/tvhome/ChildLockManager$14;->val$entered:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    iget-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$14;->val$updateDots:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 729
    iget-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$14;->val$entered:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 730
    iget-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$14;->val$savePin:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 733
    :cond_2
    :goto_0
    return-void
.end method
