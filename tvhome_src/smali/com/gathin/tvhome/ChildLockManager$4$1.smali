.class Lcom/gathin/tvhome/ChildLockManager$4$1;
.super Ljava/lang/Object;
.source "ChildLockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/ChildLockManager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gathin/tvhome/ChildLockManager$4;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$onCorrectPin:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/gathin/tvhome/ChildLockManager$4;Landroid/app/Dialog;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 256
    iput-object p2, p0, Lcom/gathin/tvhome/ChildLockManager$4$1;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/gathin/tvhome/ChildLockManager$4$1;->val$onCorrectPin:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$4$1;->this$0:Lcom/gathin/tvhome/ChildLockManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/gathin/tvhome/ChildLockManager$4$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 260
    :goto_0
    iget-object v0, p0, Lcom/gathin/tvhome/ChildLockManager$4$1;->val$onCorrectPin:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gathin/tvhome/ChildLockManager$4$1;->val$onCorrectPin:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 261
    :cond_0
    return-void
.end method
