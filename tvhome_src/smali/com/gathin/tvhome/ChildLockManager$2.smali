.class Lcom/gathin/tvhome/ChildLockManager$2;
.super Ljava/lang/Object;
.source "ChildLockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/ChildLockManager;->onChildLockButtonClicked(Lcom/gathin/tvhome/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/gathin/tvhome/MainActivity;


# direct methods
.method constructor <init>(Lcom/gathin/tvhome/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lcom/gathin/tvhome/ChildLockManager$2;->val$activity:Lcom/gathin/tvhome/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/gathin/tvhome/ChildLockManager$2;->val$activity:Lcom/gathin/tvhome/MainActivity;

    invoke-static {v0}, Lcom/gathin/tvhome/ChildLockManager;->openParentalHub(Landroid/app/Activity;)V

    .line 164
    return-void
.end method
