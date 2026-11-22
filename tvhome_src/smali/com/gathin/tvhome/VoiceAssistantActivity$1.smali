.class Lcom/gathin/tvhome/VoiceAssistantActivity$1;
.super Ljava/lang/Object;
.source "VoiceAssistantActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gathin/tvhome/VoiceAssistantActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;


# direct methods
.method constructor <init>(Lcom/gathin/tvhome/VoiceAssistantActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$1;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$1;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-static {v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$000(Lcom/gathin/tvhome/VoiceAssistantActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$1;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-static {v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$100(Lcom/gathin/tvhome/VoiceAssistantActivity;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$1;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-static {v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$200(Lcom/gathin/tvhome/VoiceAssistantActivity;)Z

    move-result v0

    const v1, 0x3d23d70a    # 0.04f

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$1;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-static {v0, v1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$316(Lcom/gathin/tvhome/VoiceAssistantActivity;F)F

    .line 62
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$1;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-static {v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$300(Lcom/gathin/tvhome/VoiceAssistantActivity;)F

    move-result v0

    const/high16 v1, 0x3fa00000    # 1.25f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$1;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$202(Lcom/gathin/tvhome/VoiceAssistantActivity;Z)Z

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$1;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-static {v0, v1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$324(Lcom/gathin/tvhome/VoiceAssistantActivity;F)F

    .line 65
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$1;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-static {v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$300(Lcom/gathin/tvhome/VoiceAssistantActivity;)F

    move-result v0

    const v1, 0x3f733333    # 0.95f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$1;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$202(Lcom/gathin/tvhome/VoiceAssistantActivity;Z)Z

    .line 67
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$1;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-static {v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$100(Lcom/gathin/tvhome/VoiceAssistantActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$1;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-static {v1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$300(Lcom/gathin/tvhome/VoiceAssistantActivity;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 68
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$1;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-static {v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$100(Lcom/gathin/tvhome/VoiceAssistantActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$1;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-static {v1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$300(Lcom/gathin/tvhome/VoiceAssistantActivity;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 69
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$1;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-static {v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$400(Lcom/gathin/tvhome/VoiceAssistantActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    return-void

    .line 59
    :cond_3
    :goto_1
    return-void
.end method
