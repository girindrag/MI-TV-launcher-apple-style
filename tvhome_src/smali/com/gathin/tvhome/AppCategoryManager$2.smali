.class Lcom/gathin/tvhome/AppCategoryManager$2;
.super Ljava/lang/Object;
.source "AppCategoryManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/AppCategoryManager;->showAppContextMenu(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appLabel:Ljava/lang/String;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$isLocked:Z

.field final synthetic val$onStateChanged:Ljava/lang/Runnable;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;Landroid/app/Dialog;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/gathin/tvhome/AppCategoryManager$2;->val$activity:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/gathin/tvhome/AppCategoryManager$2;->val$isLocked:Z

    iput-object p3, p0, Lcom/gathin/tvhome/AppCategoryManager$2;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/gathin/tvhome/AppCategoryManager$2;->val$appLabel:Ljava/lang/String;

    iput-object p5, p0, Lcom/gathin/tvhome/AppCategoryManager$2;->val$dialog:Landroid/app/Dialog;

    iput-object p6, p0, Lcom/gathin/tvhome/AppCategoryManager$2;->val$onStateChanged:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 130
    iget-object p1, p0, Lcom/gathin/tvhome/AppCategoryManager$2;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/gathin/tvhome/ChildLockManager;->getLockedPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p1

    .line 131
    iget-boolean v0, p0, Lcom/gathin/tvhome/AppCategoryManager$2;->val$isLocked:Z

    .line 132
    iget-object v1, p0, Lcom/gathin/tvhome/AppCategoryManager$2;->val$packageName:Ljava/lang/String;

    .line 131
    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    :goto_0
    iget-object v0, p0, Lcom/gathin/tvhome/AppCategoryManager$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/gathin/tvhome/ChildLockManager;->setLockedPackages(Landroid/content/Context;Ljava/util/Set;)V

    .line 134
    iget-object p1, p0, Lcom/gathin/tvhome/AppCategoryManager$2;->val$activity:Landroid/app/Activity;

    iget-boolean v0, p0, Lcom/gathin/tvhome/AppCategoryManager$2;->val$isLocked:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unlocked "

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child Lock added to "

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gathin/tvhome/AppCategoryManager$2;->val$appLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 135
    iget-object p1, p0, Lcom/gathin/tvhome/AppCategoryManager$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 136
    iget-object p1, p0, Lcom/gathin/tvhome/AppCategoryManager$2;->val$onStateChanged:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/gathin/tvhome/AppCategoryManager$2;->val$onStateChanged:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 137
    :cond_2
    return-void
.end method
