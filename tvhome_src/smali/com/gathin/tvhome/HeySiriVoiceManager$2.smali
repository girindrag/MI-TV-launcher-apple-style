.class Lcom/gathin/tvhome/HeySiriVoiceManager$2;
.super Ljava/lang/Object;
.source "HeySiriVoiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gathin/tvhome/HeySiriVoiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;


# direct methods
.method constructor <init>(Lcom/gathin/tvhome/HeySiriVoiceManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$2;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$2;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$600(Lcom/gathin/tvhome/HeySiriVoiceManager;)V

    .line 73
    return-void
.end method
