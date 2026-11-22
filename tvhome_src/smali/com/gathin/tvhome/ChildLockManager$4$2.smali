.class Lcom/gathin/tvhome/ChildLockManager$4$2;
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

.field final synthetic val$entered:Ljava/lang/StringBuilder;

.field final synthetic val$updateDots:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/gathin/tvhome/ChildLockManager$4;Ljava/lang/StringBuilder;Ljava/lang/Runnable;)V
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

    .line 267
    iput-object p2, p0, Lcom/gathin/tvhome/ChildLockManager$4$2;->val$entered:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/gathin/tvhome/ChildLockManager$4$2;->val$updateDots:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$4$2;->this$0:Lcom/gathin/tvhome/ChildLockManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/gathin/tvhome/ChildLockManager$4$2;->val$entered:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 271
    iget-object v0, p0, Lcom/gathin/tvhome/ChildLockManager$4$2;->val$updateDots:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 272
    return-void
.end method
