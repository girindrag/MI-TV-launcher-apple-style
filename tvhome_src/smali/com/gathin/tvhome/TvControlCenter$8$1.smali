.class Lcom/gathin/tvhome/TvControlCenter$8$1;
.super Ljava/lang/Object;
.source "TvControlCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/TvControlCenter$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gathin/tvhome/TvControlCenter$8;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/gathin/tvhome/TvControlCenter$8;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 264
    iput-object p2, p0, Lcom/gathin/tvhome/TvControlCenter$8$1;->val$activity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/gathin/tvhome/TvControlCenter$8$1;->this$0:Lcom/gathin/tvhome/TvControlCenter$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/gathin/tvhome/TvControlCenter$8$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/gathin/tvhome/ChildLockManager;->openParentalHub(Landroid/app/Activity;)V

    .line 268
    return-void
.end method
