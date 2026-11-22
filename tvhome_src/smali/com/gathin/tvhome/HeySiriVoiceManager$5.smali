.class Lcom/gathin/tvhome/HeySiriVoiceManager$5;
.super Ljava/lang/Object;
.source "HeySiriVoiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/HeySiriVoiceManager;->startContinuousListening()V
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

    .line 168
    iput-object p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$5;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$5;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$900(Lcom/gathin/tvhome/HeySiriVoiceManager;)Landroid/speech/SpeechRecognizer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 174
    :try_start_1
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$5;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$900(Lcom/gathin/tvhome/HeySiriVoiceManager;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 175
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$5;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$900(Lcom/gathin/tvhome/HeySiriVoiceManager;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 177
    :try_start_2
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$5;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$902(Lcom/gathin/tvhome/HeySiriVoiceManager;Landroid/speech/SpeechRecognizer;)Landroid/speech/SpeechRecognizer;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$5;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    iget-object v1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$5;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$1000(Lcom/gathin/tvhome/HeySiriVoiceManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$902(Lcom/gathin/tvhome/HeySiriVoiceManager;Landroid/speech/SpeechRecognizer;)Landroid/speech/SpeechRecognizer;

    .line 181
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$5;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$900(Lcom/gathin/tvhome/HeySiriVoiceManager;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    new-instance v1, Lcom/gathin/tvhome/HeySiriVoiceManager$5$1;

    invoke-direct {v1, p0}, Lcom/gathin/tvhome/HeySiriVoiceManager$5$1;-><init>(Lcom/gathin/tvhome/HeySiriVoiceManager$5;)V

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 242
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string v1, "android.speech.extra.LANGUAGE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 245
    const-string v1, "android.speech.extra.MAX_RESULTS"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    const-string v1, "android.speech.extra.PARTIAL_RESULTS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 247
    iget-object v1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$5;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$900(Lcom/gathin/tvhome/HeySiriVoiceManager;)Landroid/speech/SpeechRecognizer;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 253
    goto :goto_1

    .line 248
    :catch_1
    move-exception v0

    .line 249
    const-string v1, "HeySiriVoiceManager"

    const-string v2, "Error in startListening"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$5;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$700(Lcom/gathin/tvhome/HeySiriVoiceManager;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$5;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$000(Lcom/gathin/tvhome/HeySiriVoiceManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$5;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$500(Lcom/gathin/tvhome/HeySiriVoiceManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$5;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$1200(Lcom/gathin/tvhome/HeySiriVoiceManager;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 254
    :cond_1
    :goto_1
    return-void
.end method
