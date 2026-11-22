.class Lcom/gathin/tvhome/HeySiriVoiceManager$1;
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

    .line 52
    iput-object p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$1;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$1;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$000(Lcom/gathin/tvhome/HeySiriVoiceManager;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$1;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$100(Lcom/gathin/tvhome/HeySiriVoiceManager;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$1;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$200(Lcom/gathin/tvhome/HeySiriVoiceManager;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$1;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$300(Lcom/gathin/tvhome/HeySiriVoiceManager;)Z

    move-result v0

    const v1, 0x3cf5c28f    # 0.03f

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$1;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v0, v1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$416(Lcom/gathin/tvhome/HeySiriVoiceManager;F)F

    .line 58
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$1;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$400(Lcom/gathin/tvhome/HeySiriVoiceManager;)F

    move-result v0

    const/high16 v1, 0x3fa00000    # 1.25f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$1;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$302(Lcom/gathin/tvhome/HeySiriVoiceManager;Z)Z

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$1;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v0, v1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$424(Lcom/gathin/tvhome/HeySiriVoiceManager;F)F

    .line 61
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$1;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$400(Lcom/gathin/tvhome/HeySiriVoiceManager;)F

    move-result v0

    const v1, 0x3f866666    # 1.05f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$1;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$302(Lcom/gathin/tvhome/HeySiriVoiceManager;Z)Z

    .line 63
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$1;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$100(Lcom/gathin/tvhome/HeySiriVoiceManager;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$1;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$400(Lcom/gathin/tvhome/HeySiriVoiceManager;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 64
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$1;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$100(Lcom/gathin/tvhome/HeySiriVoiceManager;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$1;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$400(Lcom/gathin/tvhome/HeySiriVoiceManager;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 65
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$1;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$500(Lcom/gathin/tvhome/HeySiriVoiceManager;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    return-void

    .line 55
    :cond_3
    :goto_1
    return-void
.end method
