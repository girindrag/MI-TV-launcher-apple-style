.class Lcom/gathin/tvhome/AppCategoryManager$3;
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

.field final synthetic val$isHidden:Z

.field final synthetic val$onStateChanged:Ljava/lang/Runnable;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;Landroid/app/Dialog;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/gathin/tvhome/AppCategoryManager$3;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/gathin/tvhome/AppCategoryManager$3;->val$packageName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/gathin/tvhome/AppCategoryManager$3;->val$isHidden:Z

    iput-object p4, p0, Lcom/gathin/tvhome/AppCategoryManager$3;->val$appLabel:Ljava/lang/String;

    iput-object p5, p0, Lcom/gathin/tvhome/AppCategoryManager$3;->val$dialog:Landroid/app/Dialog;

    iput-object p6, p0, Lcom/gathin/tvhome/AppCategoryManager$3;->val$onStateChanged:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 146
    iget-object p1, p0, Lcom/gathin/tvhome/AppCategoryManager$3;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/gathin/tvhome/AppCategoryManager$3;->val$packageName:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/gathin/tvhome/AppCategoryManager$3;->val$isHidden:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/gathin/tvhome/AppCategoryManager;->setHidden(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 147
    iget-object p1, p0, Lcom/gathin/tvhome/AppCategoryManager$3;->val$activity:Landroid/app/Activity;

    iget-boolean v0, p0, Lcom/gathin/tvhome/AppCategoryManager$3;->val$isHidden:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gathin/tvhome/AppCategoryManager$3;->val$appLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " restored to dock"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gathin/tvhome/AppCategoryManager$3;->val$appLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hidden from dock"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 148
    iget-object p1, p0, Lcom/gathin/tvhome/AppCategoryManager$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 149
    iget-object p1, p0, Lcom/gathin/tvhome/AppCategoryManager$3;->val$onStateChanged:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/gathin/tvhome/AppCategoryManager$3;->val$onStateChanged:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 150
    :cond_1
    return-void
.end method
