.class Lcom/gathin/tvhome/LivePreviewProvider$1;
.super Ljava/lang/Object;
.source "LivePreviewProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/LivePreviewProvider;->onLauncherCreated(Lcom/gathin/tvhome/MainActivity;)V
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

    .line 182
    iput-object p1, p0, Lcom/gathin/tvhome/LivePreviewProvider$1;->val$activity:Lcom/gathin/tvhome/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/gathin/tvhome/LivePreviewProvider$1;->val$activity:Lcom/gathin/tvhome/MainActivity;

    invoke-static {v0}, Lcom/gathin/tvhome/LivePreviewProvider;->initializeTvContractChannels(Landroid/content/Context;)V

    .line 186
    return-void
.end method
