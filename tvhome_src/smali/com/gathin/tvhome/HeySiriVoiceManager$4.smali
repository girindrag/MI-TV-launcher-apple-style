.class Lcom/gathin/tvhome/HeySiriVoiceManager$4;
.super Ljava/lang/Object;
.source "HeySiriVoiceManager.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/HeySiriVoiceManager;->initTTS()V
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

    .line 132
    iput-object p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$4;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 1

    .line 135
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$4;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$800(Lcom/gathin/tvhome/HeySiriVoiceManager;)Landroid/speech/tts/TextToSpeech;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$4;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$800(Lcom/gathin/tvhome/HeySiriVoiceManager;)Landroid/speech/tts/TextToSpeech;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 137
    iget-object p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$4;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$800(Lcom/gathin/tvhome/HeySiriVoiceManager;)Landroid/speech/tts/TextToSpeech;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 139
    :cond_0
    return-void
.end method
