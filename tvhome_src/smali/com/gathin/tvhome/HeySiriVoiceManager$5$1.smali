.class Lcom/gathin/tvhome/HeySiriVoiceManager$5$1;
.super Ljava/lang/Object;
.source "HeySiriVoiceManager.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/HeySiriVoiceManager$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gathin/tvhome/HeySiriVoiceManager$5;


# direct methods
.method constructor <init>(Lcom/gathin/tvhome/HeySiriVoiceManager$5;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$5$1;->this$1:Lcom/gathin/tvhome/HeySiriVoiceManager$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 2

    .line 190
    const-string v0, "HeySiriVoiceManager"

    const-string v1, "User started speaking"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0

    .line 197
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$5$1;->this$1:Lcom/gathin/tvhome/HeySiriVoiceManager$5;

    iget-object v0, v0, Lcom/gathin/tvhome/HeySiriVoiceManager$5;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$1102(Lcom/gathin/tvhome/HeySiriVoiceManager;Z)Z

    .line 202
    return-void
.end method

.method public onError(I)V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$5$1;->this$1:Lcom/gathin/tvhome/HeySiriVoiceManager$5;

    iget-object v0, v0, Lcom/gathin/tvhome/HeySiriVoiceManager$5;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$1102(Lcom/gathin/tvhome/HeySiriVoiceManager;Z)Z

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpeechRecognizer error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeySiriVoiceManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$5$1;->this$1:Lcom/gathin/tvhome/HeySiriVoiceManager$5;

    iget-object p1, p1, Lcom/gathin/tvhome/HeySiriVoiceManager$5;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$700(Lcom/gathin/tvhome/HeySiriVoiceManager;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$5$1;->this$1:Lcom/gathin/tvhome/HeySiriVoiceManager$5;

    iget-object p1, p1, Lcom/gathin/tvhome/HeySiriVoiceManager$5;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$000(Lcom/gathin/tvhome/HeySiriVoiceManager;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$5$1;->this$1:Lcom/gathin/tvhome/HeySiriVoiceManager$5;

    iget-object p1, p1, Lcom/gathin/tvhome/HeySiriVoiceManager$5;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$500(Lcom/gathin/tvhome/HeySiriVoiceManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$5$1;->this$1:Lcom/gathin/tvhome/HeySiriVoiceManager$5;

    iget-object v0, v0, Lcom/gathin/tvhome/HeySiriVoiceManager$5;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$1200(Lcom/gathin/tvhome/HeySiriVoiceManager;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    :cond_0
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0

    .line 239
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 1

    .line 229
    const-string v0, "results_recognition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 230
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 232
    const-string v0, "siri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "alexa"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "google"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$5$1;->this$1:Lcom/gathin/tvhome/HeySiriVoiceManager$5;

    iget-object p1, p1, Lcom/gathin/tvhome/HeySiriVoiceManager$5;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$1400(Lcom/gathin/tvhome/HeySiriVoiceManager;)V

    .line 236
    :cond_1
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 1

    .line 184
    iget-object p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$5$1;->this$1:Lcom/gathin/tvhome/HeySiriVoiceManager$5;

    iget-object p1, p1, Lcom/gathin/tvhome/HeySiriVoiceManager$5;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$1102(Lcom/gathin/tvhome/HeySiriVoiceManager;Z)Z

    .line 185
    const-string p1, "HeySiriVoiceManager"

    const-string v0, "SpeechRecognizer ready for speech"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$5$1;->this$1:Lcom/gathin/tvhome/HeySiriVoiceManager$5;

    iget-object v0, v0, Lcom/gathin/tvhome/HeySiriVoiceManager$5;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$1102(Lcom/gathin/tvhome/HeySiriVoiceManager;Z)Z

    .line 217
    const-string v0, "results_recognition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 218
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$5$1;->this$1:Lcom/gathin/tvhome/HeySiriVoiceManager$5;

    iget-object v0, v0, Lcom/gathin/tvhome/HeySiriVoiceManager$5;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$1300(Lcom/gathin/tvhome/HeySiriVoiceManager;Ljava/lang/String;)V

    .line 222
    :cond_0
    iget-object p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$5$1;->this$1:Lcom/gathin/tvhome/HeySiriVoiceManager$5;

    iget-object p1, p1, Lcom/gathin/tvhome/HeySiriVoiceManager$5;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$700(Lcom/gathin/tvhome/HeySiriVoiceManager;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$5$1;->this$1:Lcom/gathin/tvhome/HeySiriVoiceManager$5;

    iget-object p1, p1, Lcom/gathin/tvhome/HeySiriVoiceManager$5;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$000(Lcom/gathin/tvhome/HeySiriVoiceManager;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 223
    iget-object p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$5$1;->this$1:Lcom/gathin/tvhome/HeySiriVoiceManager$5;

    iget-object p1, p1, Lcom/gathin/tvhome/HeySiriVoiceManager$5;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$500(Lcom/gathin/tvhome/HeySiriVoiceManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$5$1;->this$1:Lcom/gathin/tvhome/HeySiriVoiceManager$5;

    iget-object v0, v0, Lcom/gathin/tvhome/HeySiriVoiceManager$5;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$1200(Lcom/gathin/tvhome/HeySiriVoiceManager;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 225
    :cond_1
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 0

    .line 194
    return-void
.end method
