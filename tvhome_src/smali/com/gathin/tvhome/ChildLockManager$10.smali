.class Lcom/gathin/tvhome/ChildLockManager$10;
.super Ljava/lang/Object;
.source "ChildLockManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/ChildLockManager;->openParentalHub(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$cbEnable:Landroid/widget/CheckBox;

.field final synthetic val$checkBoxes:Ljava/util/List;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/CheckBox;Ljava/util/List;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 585
    iput-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$10;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/gathin/tvhome/ChildLockManager$10;->val$cbEnable:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/gathin/tvhome/ChildLockManager$10;->val$checkBoxes:Ljava/util/List;

    iput-object p4, p0, Lcom/gathin/tvhome/ChildLockManager$10;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 588
    iget-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$10;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/gathin/tvhome/ChildLockManager$10;->val$cbEnable:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/gathin/tvhome/ChildLockManager;->setEnabled(Landroid/content/Context;Z)V

    .line 589
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 590
    iget-object v0, p0, Lcom/gathin/tvhome/ChildLockManager$10;->val$checkBoxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 591
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 592
    invoke-virtual {v1}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 594
    :cond_0
    goto :goto_0

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/gathin/tvhome/ChildLockManager$10;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/gathin/tvhome/ChildLockManager;->setLockedPackages(Landroid/content/Context;Ljava/util/Set;)V

    .line 596
    iget-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$10;->val$activity:Landroid/app/Activity;

    const-string v0, "Child Lock Settings Saved!"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 597
    iget-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$10;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 598
    return-void
.end method
