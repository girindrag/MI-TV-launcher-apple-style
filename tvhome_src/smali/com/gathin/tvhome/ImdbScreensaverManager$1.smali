.class Lcom/gathin/tvhome/ImdbScreensaverManager$1;
.super Ljava/lang/Object;
.source "ImdbScreensaverManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/ImdbScreensaverManager;->checkAndSyncDaily(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$appCtx:Landroid/content/Context;

.field final synthetic val$today:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/gathin/tvhome/ImdbScreensaverManager$1;->val$appCtx:Landroid/content/Context;

    iput-object p2, p0, Lcom/gathin/tvhome/ImdbScreensaverManager$1;->val$today:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/gathin/tvhome/ImdbScreensaverManager$1;->val$appCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/gathin/tvhome/ImdbScreensaverManager$1;->val$today:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gathin/tvhome/ImdbScreensaverManager;->syncFromApi(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    return-void
.end method
