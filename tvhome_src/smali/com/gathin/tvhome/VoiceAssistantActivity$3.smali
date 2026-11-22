.class Lcom/gathin/tvhome/VoiceAssistantActivity$3;
.super Ljava/lang/Object;
.source "VoiceAssistantActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/VoiceAssistantActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 186
    iput-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$3;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$3;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-static {v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$500(Lcom/gathin/tvhome/VoiceAssistantActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$3;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-static {v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$000(Lcom/gathin/tvhome/VoiceAssistantActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$3;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$502(Lcom/gathin/tvhome/VoiceAssistantActivity;Z)Z

    .line 191
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$3;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-virtual {v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->launchVoiceInput()V

    .line 193
    :cond_0
    return-void
.end method
