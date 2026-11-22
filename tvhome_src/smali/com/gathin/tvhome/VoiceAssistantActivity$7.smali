.class Lcom/gathin/tvhome/VoiceAssistantActivity$7;
.super Ljava/lang/Object;
.source "VoiceAssistantActivity.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/VoiceAssistantActivity;->initSpeechRecognizer()V
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

    .line 317
    iput-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$7;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$7;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    const v1, 0x3f99999a    # 1.2f

    invoke-static {v0, v1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$302(Lcom/gathin/tvhome/VoiceAssistantActivity;F)F

    .line 327
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0

    .line 340
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$7;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$702(Lcom/gathin/tvhome/VoiceAssistantActivity;Z)Z

    .line 345
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$7;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    const-string v1, "Processing..."

    const-string v2, "Analyzing command..."

    invoke-static {v0, v1, v2}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$800(Lcom/gathin/tvhome/VoiceAssistantActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public onError(I)V
    .locals 2

    .line 350
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$7;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$702(Lcom/gathin/tvhome/VoiceAssistantActivity;Z)Z

    .line 351
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$7;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    const-string v0, "Listening Paused"

    const-string v1, "Tap \'\ud83c\udf99\ufe0f Speak Now\' or choose a chip below."

    invoke-static {p1, v0, v1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$800(Lcom/gathin/tvhome/VoiceAssistantActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0

    .line 374
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 3

    .line 367
    const-string v0, "results_recognition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 368
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$7;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-static {v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$900(Lcom/gathin/tvhome/VoiceAssistantActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u201c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\u201d"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    :cond_0
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 2

    .line 320
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$7;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$702(Lcom/gathin/tvhome/VoiceAssistantActivity;Z)Z

    .line 321
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$7;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    const-string v0, "Listening..."

    const-string v1, "Say a command: \'Open YouTube\', \'Clean RAM\', \'Hey Siri\'..."

    invoke-static {p1, v0, v1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$800(Lcom/gathin/tvhome/VoiceAssistantActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$7;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$702(Lcom/gathin/tvhome/VoiceAssistantActivity;Z)Z

    .line 357
    const-string v0, "results_recognition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 358
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$7;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->executeVoiceCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_0
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$7;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    const-string v0, "Listening Paused"

    const-string v1, "No voice detected. Choose a chip below."

    invoke-static {p1, v0, v1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$800(Lcom/gathin/tvhome/VoiceAssistantActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :goto_0
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 2

    .line 331
    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$7;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-static {v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$100(Lcom/gathin/tvhome/VoiceAssistantActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 332
    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    .line 333
    const v0, 0x3fb33333    # 1.4f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    const p1, 0x3fb33333    # 1.4f

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$7;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-static {v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$100(Lcom/gathin/tvhome/VoiceAssistantActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 335
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$7;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-static {v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->access$100(Lcom/gathin/tvhome/VoiceAssistantActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 337
    :cond_1
    return-void
.end method
