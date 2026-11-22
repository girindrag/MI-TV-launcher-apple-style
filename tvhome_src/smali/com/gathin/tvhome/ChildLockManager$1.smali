.class Lcom/gathin/tvhome/ChildLockManager$1;
.super Ljava/lang/Object;
.source "ChildLockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/ChildLockManager;->handleOpen(Lcom/gathin/tvhome/MainActivity;Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/gathin/tvhome/MainActivity;

.field final synthetic val$appName:Ljava/lang/String;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;Lcom/gathin/tvhome/MainActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$1;->val$intent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/gathin/tvhome/ChildLockManager$1;->val$activity:Lcom/gathin/tvhome/MainActivity;

    iput-object p3, p0, Lcom/gathin/tvhome/ChildLockManager$1;->val$appName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/gathin/tvhome/ChildLockManager$1;->val$intent:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 147
    iget-object v0, p0, Lcom/gathin/tvhome/ChildLockManager$1;->val$activity:Lcom/gathin/tvhome/MainActivity;

    iget-object v1, p0, Lcom/gathin/tvhome/ChildLockManager$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/gathin/tvhome/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    iget-object v0, p0, Lcom/gathin/tvhome/ChildLockManager$1;->val$activity:Lcom/gathin/tvhome/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gathin/tvhome/ChildLockManager$1;->val$appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 151
    :goto_0
    return-void
.end method
