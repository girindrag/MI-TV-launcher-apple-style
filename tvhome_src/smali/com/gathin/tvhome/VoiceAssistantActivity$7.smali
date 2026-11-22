.class Lcom/gathin/tvhome/VoiceAssistantActivity$7;
.super Ljava/lang/Object;
.source "VoiceAssistantActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/VoiceAssistantActivity;->updateStatus(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

.field final synthetic val$response:Ljava/lang/String;

.field final synthetic val$transcript:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gathin/tvhome/VoiceAssistantActivity;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 356
    iput-object p2, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$7;->val$transcript:Ljava/lang/String;

    iput-object p3, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$7;->val$response:Ljava/lang/String;

    iput-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$7;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$7;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-static {v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$900(Lcom/gathin/tvhome/VoiceAssistantActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$7;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-static {v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$900(Lcom/gathin/tvhome/VoiceAssistantActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$7;->val$transcript:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$7;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-static {v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$1000(Lcom/gathin/tvhome/VoiceAssistantActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$7;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-static {v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$1000(Lcom/gathin/tvhome/VoiceAssistantActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$7;->val$response:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    :cond_1
    return-void
.end method
