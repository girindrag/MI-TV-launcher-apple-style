.class Lcom/gathin/tvhome/AppleTvScreensaver$1;
.super Ljava/lang/Object;
.source "AppleTvScreensaver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/AppleTvScreensaver;->resetIdleTimer(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/gathin/tvhome/AppleTvScreensaver$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/gathin/tvhome/AppleTvScreensaver$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/gathin/tvhome/AppleTvScreensaver;->launchScreensaver(Landroid/app/Activity;)V

    .line 73
    return-void
.end method
