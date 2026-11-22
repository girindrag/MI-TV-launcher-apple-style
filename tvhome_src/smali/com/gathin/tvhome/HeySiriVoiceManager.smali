.class public Lcom/gathin/tvhome/HeySiriVoiceManager;
.super Ljava/lang/Object;
.source "HeySiriVoiceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HeySiriVoiceManager"

.field private static instance:Lcom/gathin/tvhome/HeySiriVoiceManager;


# instance fields
.field private activity:Landroid/app/Activity;

.field private handler:Landroid/os/Handler;

.field private isAwaitingCommandAfterWake:Z

.field private isDestroyed:Z

.field private isListening:Z

.field private isPaused:Z

.field private isPulsing:Z

.field private originalBackground:Landroid/graphics/drawable/Drawable;

.field private pulseGrowing:Z

.field private pulseRunnable:Ljava/lang/Runnable;

.field private pulseScale:F

.field private resetHighlightRunnable:Ljava/lang/Runnable;

.field private restartListeningRunnable:Ljava/lang/Runnable;

.field private speechRecognizer:Landroid/speech/SpeechRecognizer;

.field private textToSpeech:Landroid/speech/tts/TextToSpeech;

.field private voiceToggleView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->handler:Landroid/os/Handler;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->isListening:Z

    .line 44
    iput-boolean v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->isDestroyed:Z

    .line 45
    iput-boolean v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->isPaused:Z

    .line 46
    iput-boolean v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->isAwaitingCommandAfterWake:Z

    .line 49
    iput-boolean v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->isPulsing:Z

    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->pulseScale:F

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->pulseGrowing:Z

    .line 52
    new-instance v0, Lcom/gathin/tvhome/HeySiriVoiceManager$1;

    invoke-direct {v0, p0}, Lcom/gathin/tvhome/HeySiriVoiceManager$1;-><init>(Lcom/gathin/tvhome/HeySiriVoiceManager;)V

    iput-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->pulseRunnable:Ljava/lang/Runnable;

    .line 69
    new-instance v0, Lcom/gathin/tvhome/HeySiriVoiceManager$2;

    invoke-direct {v0, p0}, Lcom/gathin/tvhome/HeySiriVoiceManager$2;-><init>(Lcom/gathin/tvhome/HeySiriVoiceManager;)V

    iput-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->resetHighlightRunnable:Ljava/lang/Runnable;

    .line 76
    new-instance v0, Lcom/gathin/tvhome/HeySiriVoiceManager$3;

    invoke-direct {v0, p0}, Lcom/gathin/tvhome/HeySiriVoiceManager$3;-><init>(Lcom/gathin/tvhome/HeySiriVoiceManager;)V

    iput-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->restartListeningRunnable:Ljava/lang/Runnable;

    .line 122
    iput-object p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->activity:Landroid/app/Activity;

    .line 123
    iput-object p2, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->voiceToggleView:Landroid/view/View;

    .line 124
    if-eqz p2, :cond_0

    .line 125
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->originalBackground:Landroid/graphics/drawable/Drawable;

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->initTTS()V

    .line 128
    invoke-virtual {p0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->startContinuousListening()V

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/gathin/tvhome/HeySiriVoiceManager;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->isDestroyed:Z

    return p0
.end method

.method static synthetic access$100(Lcom/gathin/tvhome/HeySiriVoiceManager;)Landroid/view/View;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->voiceToggleView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/gathin/tvhome/HeySiriVoiceManager;)Landroid/app/Activity;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/gathin/tvhome/HeySiriVoiceManager;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->isListening:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/gathin/tvhome/HeySiriVoiceManager;)Ljava/lang/Runnable;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->restartListeningRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/gathin/tvhome/HeySiriVoiceManager;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->handleSpeechText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/gathin/tvhome/HeySiriVoiceManager;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->highlightSiriListening()V

    return-void
.end method

.method static synthetic access$1500(Lcom/gathin/tvhome/HeySiriVoiceManager;I)I
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->dp(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/gathin/tvhome/HeySiriVoiceManager;)Ljava/lang/Runnable;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->pulseRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/gathin/tvhome/HeySiriVoiceManager;)Ljava/lang/Runnable;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->resetHighlightRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/gathin/tvhome/HeySiriVoiceManager;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->originalBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gathin/tvhome/HeySiriVoiceManager;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->isPulsing:Z

    return p0
.end method

.method static synthetic access$202(Lcom/gathin/tvhome/HeySiriVoiceManager;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->isPulsing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/gathin/tvhome/HeySiriVoiceManager;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->pulseGrowing:Z

    return p0
.end method

.method static synthetic access$302(Lcom/gathin/tvhome/HeySiriVoiceManager;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->pulseGrowing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/gathin/tvhome/HeySiriVoiceManager;)F
    .locals 0

    .line 31
    iget p0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->pulseScale:F

    return p0
.end method

.method static synthetic access$402(Lcom/gathin/tvhome/HeySiriVoiceManager;F)F
    .locals 0

    .line 31
    iput p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->pulseScale:F

    return p1
.end method

.method static synthetic access$416(Lcom/gathin/tvhome/HeySiriVoiceManager;F)F
    .locals 1

    .line 31
    iget v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->pulseScale:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->pulseScale:F

    return v0
.end method

.method static synthetic access$424(Lcom/gathin/tvhome/HeySiriVoiceManager;F)F
    .locals 1

    .line 31
    iget v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->pulseScale:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->pulseScale:F

    return v0
.end method

.method static synthetic access$500(Lcom/gathin/tvhome/HeySiriVoiceManager;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/gathin/tvhome/HeySiriVoiceManager;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->resetToggleToNormal()V

    return-void
.end method

.method static synthetic access$700(Lcom/gathin/tvhome/HeySiriVoiceManager;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->isPaused:Z

    return p0
.end method

.method static synthetic access$800(Lcom/gathin/tvhome/HeySiriVoiceManager;)Landroid/speech/tts/TextToSpeech;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object p0
.end method

.method static synthetic access$900(Lcom/gathin/tvhome/HeySiriVoiceManager;)Landroid/speech/SpeechRecognizer;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    return-object p0
.end method

.method static synthetic access$902(Lcom/gathin/tvhome/HeySiriVoiceManager;Landroid/speech/SpeechRecognizer;)Landroid/speech/SpeechRecognizer;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    return-object p1
.end method

.method private destroy()V
    .locals 2

    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->isDestroyed:Z

    .line 587
    invoke-virtual {p0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->stopListening()V

    .line 588
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 589
    invoke-direct {p0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->resetToggleToNormal()V

    .line 590
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 592
    :try_start_0
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 593
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 594
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 595
    iput-object v1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 597
    :cond_0
    return-void
.end method

.method private dp(I)I
    .locals 1

    .line 582
    int-to-float p1, p1

    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private executeCommand(Ljava/lang/String;)V
    .locals 5

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Executing command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeySiriVoiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-direct {p0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->highlightSuccessExecuting()V

    .line 322
    const-string v0, "clean ram"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_20

    const-string v0, "boost"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "optimize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "free ram"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "speed up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_b

    .line 339
    :cond_0
    const-string v0, "youtube"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "yt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_a

    .line 346
    :cond_1
    const-string v0, "screensaver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "aerial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "wallpaper"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_9

    .line 353
    :cond_2
    const-string v0, "sleep"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "timer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_5

    .line 363
    :cond_3
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->activity:Landroid/app/Activity;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 364
    const-string v2, "mute"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "unmute"

    const/4 v4, 0x3

    if-eqz v2, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 365
    if-eqz v0, :cond_4

    .line 366
    const/16 p1, -0x64

    invoke-virtual {v0, v4, p1, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 368
    :cond_4
    const-string p1, "Muted"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->speak(Ljava/lang/String;)V

    .line 369
    return-void

    .line 371
    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 372
    if-eqz v0, :cond_6

    .line 373
    const/16 p1, 0x64

    invoke-virtual {v0, v4, p1, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 375
    :cond_6
    const-string p1, "Sound on"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->speak(Ljava/lang/String;)V

    .line 376
    return-void

    .line 378
    :cond_7
    const-string v2, "volume up"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "louder"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_4

    .line 384
    :cond_8
    const-string v2, "volume down"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "quieter"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "lower volume"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto/16 :goto_3

    .line 392
    :cond_9
    const-string v0, "time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 393
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "h:mm a"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The time is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->speak(Ljava/lang/String;)V

    .line 395
    return-void

    .line 397
    :cond_a
    const-string v0, "date"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 398
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "EEEE, MMMM d"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Today is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->speak(Ljava/lang/String;)V

    .line 400
    return-void

    .line 404
    :cond_b
    const-string v0, "weather"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 405
    const-string p1, "Weather is clear, 24 degrees Celsius"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->speak(Ljava/lang/String;)V

    .line 406
    return-void

    .line 410
    :cond_c
    const-string v0, "netflix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 411
    const-string p1, "Opening Netflix"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->speak(Ljava/lang/String;)V

    .line 412
    const-string p1, "com.netflix.ninja"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->launchApp(Ljava/lang/String;)V

    .line 413
    return-void

    .line 415
    :cond_d
    const-string v0, "prime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "amazon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_2

    .line 420
    :cond_e
    const-string v0, "hotstar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "disney"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1

    .line 425
    :cond_f
    const-string v0, "settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 426
    const-string p1, "Opening Settings"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->speak(Ljava/lang/String;)V

    .line 428
    :try_start_0
    iget-object p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->activity:Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 429
    :catch_0
    move-exception p1

    :goto_0
    nop

    .line 430
    return-void

    .line 434
    :cond_10
    invoke-direct {p0, p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->searchAndLaunchApp(Ljava/lang/String;)Z

    move-result v0

    .line 435
    if-nez v0, :cond_11

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "I heard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->speak(Ljava/lang/String;)V

    .line 438
    :cond_11
    return-void

    .line 421
    :cond_12
    :goto_1
    const-string p1, "Opening Hotstar"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->speak(Ljava/lang/String;)V

    .line 422
    const-string p1, "in.startv.hotstar"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->launchApp(Ljava/lang/String;)V

    .line 423
    return-void

    .line 416
    :cond_13
    :goto_2
    const-string p1, "Opening Prime Video"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->speak(Ljava/lang/String;)V

    .line 417
    const-string p1, "com.amazon.amazonvideo.livingroom"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->launchApp(Ljava/lang/String;)V

    .line 418
    return-void

    .line 385
    :cond_14
    :goto_3
    if-eqz v0, :cond_15

    .line 386
    const/4 p1, -0x1

    invoke-virtual {v0, v4, p1, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 388
    :cond_15
    return-void

    .line 379
    :cond_16
    :goto_4
    if-eqz v0, :cond_17

    .line 380
    invoke-virtual {v0, v4, v1, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 382
    :cond_17
    return-void

    .line 354
    :cond_18
    :goto_5
    nop

    .line 355
    const-string v0, "15"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 p1, 0xf

    goto :goto_8

    .line 356
    :cond_19
    const-string v0, "60"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "1 hour"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "one hour"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_7

    .line 357
    :cond_1a
    const-string v0, "120"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "2 hours"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "two hours"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_6

    :cond_1b
    const/16 p1, 0x1e

    goto :goto_8

    :cond_1c
    :goto_6
    const/16 p1, 0x78

    goto :goto_8

    .line 356
    :cond_1d
    :goto_7
    const/16 p1, 0x3c

    .line 358
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sleep timer set for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " minutes"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->speak(Ljava/lang/String;)V

    .line 359
    return-void

    .line 347
    :cond_1e
    :goto_9
    const-string p1, "Starting screensaver"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->speak(Ljava/lang/String;)V

    .line 348
    iget-object p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/gathin/tvhome/AppleTvScreensaver;->launchScreensaver(Landroid/app/Activity;)V

    .line 349
    return-void

    .line 340
    :cond_1f
    :goto_a
    const-string p1, "Opening YouTube"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->speak(Ljava/lang/String;)V

    .line 341
    iget-object p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/gathin/tvhome/TvKeyHandler;->launchYouTube(Landroid/content/Context;)V

    .line 342
    return-void

    .line 323
    :cond_20
    :goto_b
    const-string p1, "RAM optimized"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->speak(Ljava/lang/String;)V

    .line 325
    :try_start_1
    iget-object p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->activity:Landroid/app/Activity;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 326
    if-eqz p1, :cond_22

    .line 327
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 328
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 329
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v1

    if-nez v3, :cond_21

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 330
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 332
    :cond_21
    goto :goto_c

    .line 334
    :catch_1
    move-exception p1

    :cond_22
    nop

    .line 335
    return-void
.end method

.method private handleSpeechText(Ljava/lang/String;)V
    .locals 8

    .line 270
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 271
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Heard speech: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeySiriVoiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v0, "hey siri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "alexa"

    const-string v4, "google"

    const-string v5, "ok google"

    const-string v6, "siri"

    const/4 v7, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 276
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 277
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 279
    :goto_1
    if-eqz v1, :cond_4

    .line 281
    invoke-direct {p0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->highlightSiriListening()V

    .line 284
    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 285
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 286
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 288
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 290
    iput-boolean v7, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->isAwaitingCommandAfterWake:Z

    .line 291
    const-string p1, "Yes?"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->speak(Ljava/lang/String;)V

    .line 292
    iget-object p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->resetHighlightRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 293
    iget-object p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->resetHighlightRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1770

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 294
    return-void

    .line 297
    :cond_3
    invoke-direct {p0, p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->executeCommand(Ljava/lang/String;)V

    .line 298
    return-void

    .line 303
    :cond_4
    iget-boolean v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->isAwaitingCommandAfterWake:Z

    if-eqz v0, :cond_5

    .line 304
    iput-boolean v2, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->isAwaitingCommandAfterWake:Z

    .line 305
    invoke-direct {p0, p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->executeCommand(Ljava/lang/String;)V

    .line 306
    return-void

    .line 310
    :cond_5
    const-string v0, "clean ram"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "boost"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "open youtube"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 311
    const-string v0, "screensaver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "mute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "sleep"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 312
    :cond_6
    invoke-direct {p0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->highlightSiriListening()V

    .line 313
    invoke-direct {p0, p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->executeCommand(Ljava/lang/String;)V

    .line 315
    :cond_7
    return-void

    .line 270
    :cond_8
    :goto_2
    return-void
.end method

.method private highlightSiriListening()V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->voiceToggleView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->resetHighlightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 489
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/gathin/tvhome/HeySiriVoiceManager$6;

    invoke-direct {v1, p0}, Lcom/gathin/tvhome/HeySiriVoiceManager$6;-><init>(Lcom/gathin/tvhome/HeySiriVoiceManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 518
    return-void
.end method

.method private highlightSuccessExecuting()V
    .locals 2

    .line 524
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->voiceToggleView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->resetHighlightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 527
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/gathin/tvhome/HeySiriVoiceManager$7;

    invoke-direct {v1, p0}, Lcom/gathin/tvhome/HeySiriVoiceManager$7;-><init>(Lcom/gathin/tvhome/HeySiriVoiceManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 549
    return-void
.end method

.method public static declared-synchronized init(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    const-class v0, Lcom/gathin/tvhome/HeySiriVoiceManager;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Lcom/gathin/tvhome/HeySiriVoiceManager;->instance:Lcom/gathin/tvhome/HeySiriVoiceManager;

    if-eqz v1, :cond_0

    .line 87
    sget-object v1, Lcom/gathin/tvhome/HeySiriVoiceManager;->instance:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-direct {v1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->destroy()V

    .line 89
    :cond_0
    new-instance v1, Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-direct {v1, p0, p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    sput-object v1, Lcom/gathin/tvhome/HeySiriVoiceManager;->instance:Lcom/gathin/tvhome/HeySiriVoiceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit v0

    return-void

    .line 85
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private initTTS()V
    .locals 3

    .line 132
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/gathin/tvhome/HeySiriVoiceManager$4;

    invoke-direct {v2, p0}, Lcom/gathin/tvhome/HeySiriVoiceManager$4;-><init>(Lcom/gathin/tvhome/HeySiriVoiceManager;)V

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 141
    return-void
.end method

.method private launchApp(Ljava/lang/String;)V
    .locals 3

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 443
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 444
    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 445
    :cond_0
    if-eqz v1, :cond_1

    .line 446
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 447
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :cond_1
    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error launching app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HeySiriVoiceManager"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    :goto_0
    return-void
.end method

.method public static declared-synchronized onDestroy()V
    .locals 2

    const-class v0, Lcom/gathin/tvhome/HeySiriVoiceManager;

    monitor-enter v0

    .line 109
    :try_start_0
    sget-object v1, Lcom/gathin/tvhome/HeySiriVoiceManager;->instance:Lcom/gathin/tvhome/HeySiriVoiceManager;

    if-eqz v1, :cond_0

    .line 110
    sget-object v1, Lcom/gathin/tvhome/HeySiriVoiceManager;->instance:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-direct {v1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->destroy()V

    .line 111
    const/4 v1, 0x0

    sput-object v1, Lcom/gathin/tvhome/HeySiriVoiceManager;->instance:Lcom/gathin/tvhome/HeySiriVoiceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_0
    monitor-exit v0

    return-void

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized onPause()V
    .locals 3

    const-class v0, Lcom/gathin/tvhome/HeySiriVoiceManager;

    monitor-enter v0

    .line 101
    :try_start_0
    sget-object v1, Lcom/gathin/tvhome/HeySiriVoiceManager;->instance:Lcom/gathin/tvhome/HeySiriVoiceManager;

    if-eqz v1, :cond_0

    .line 102
    sget-object v1, Lcom/gathin/tvhome/HeySiriVoiceManager;->instance:Lcom/gathin/tvhome/HeySiriVoiceManager;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/gathin/tvhome/HeySiriVoiceManager;->isPaused:Z

    .line 103
    sget-object v1, Lcom/gathin/tvhome/HeySiriVoiceManager;->instance:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-virtual {v1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->stopListening()V

    .line 104
    sget-object v1, Lcom/gathin/tvhome/HeySiriVoiceManager;->instance:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-direct {v1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->resetToggleToNormal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    monitor-exit v0

    return-void

    .line 100
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized onResume(Landroid/app/Activity;)V
    .locals 2

    const-class v0, Lcom/gathin/tvhome/HeySiriVoiceManager;

    monitor-enter v0

    .line 93
    :try_start_0
    sget-object v1, Lcom/gathin/tvhome/HeySiriVoiceManager;->instance:Lcom/gathin/tvhome/HeySiriVoiceManager;

    if-eqz v1, :cond_0

    .line 94
    sget-object v1, Lcom/gathin/tvhome/HeySiriVoiceManager;->instance:Lcom/gathin/tvhome/HeySiriVoiceManager;

    iput-object p0, v1, Lcom/gathin/tvhome/HeySiriVoiceManager;->activity:Landroid/app/Activity;

    .line 95
    sget-object p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->instance:Lcom/gathin/tvhome/HeySiriVoiceManager;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->isPaused:Z

    .line 96
    sget-object p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->instance:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-virtual {p0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->startContinuousListening()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    monitor-exit v0

    return-void

    .line 92
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private onToggleClicked()V
    .locals 1

    .line 154
    invoke-direct {p0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->highlightSiriListening()V

    .line 155
    const-string v0, "Listening"

    invoke-direct {p0, v0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->speak(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->startContinuousListening()V

    .line 157
    return-void
.end method

.method private resetToggleToNormal()V
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->voiceToggleView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 556
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->isPulsing:Z

    .line 557
    iput-boolean v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->isAwaitingCommandAfterWake:Z

    .line 559
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/gathin/tvhome/HeySiriVoiceManager$8;

    invoke-direct {v1, p0}, Lcom/gathin/tvhome/HeySiriVoiceManager$8;-><init>(Lcom/gathin/tvhome/HeySiriVoiceManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 579
    return-void
.end method

.method private searchAndLaunchApp(Ljava/lang/String;)Z
    .locals 5

    .line 456
    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 457
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 458
    const-string v3, "open"

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "launch"

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "start"

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 460
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 461
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 462
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 463
    :cond_0
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 464
    if-nez v3, :cond_1

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 465
    :cond_1
    if-eqz v3, :cond_2

    .line 466
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Opening "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->speak(Ljava/lang/String;)V

    .line 467
    const/high16 p1, 0x10000000

    invoke-virtual {v3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 468
    iget-object p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    const/4 p1, 0x1

    return p1

    .line 472
    :cond_2
    goto :goto_0

    .line 473
    :catch_0
    move-exception p1

    :cond_3
    nop

    .line 474
    const/4 p1, 0x0

    return p1
.end method

.method private speak(Ljava/lang/String;)V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    const-string v1, "HEY_SIRI_RESP"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    goto :goto_0

    .line 147
    :catch_0
    move-exception p1

    .line 148
    const-string v0, "HeySiriVoiceManager"

    const-string v1, "TTS speak error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    :cond_0
    :goto_0
    return-void
.end method

.method public static declared-synchronized toggleVoice(Landroid/app/Activity;)V
    .locals 1

    const-class p0, Lcom/gathin/tvhome/HeySiriVoiceManager;

    monitor-enter p0

    .line 116
    :try_start_0
    sget-object v0, Lcom/gathin/tvhome/HeySiriVoiceManager;->instance:Lcom/gathin/tvhome/HeySiriVoiceManager;

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lcom/gathin/tvhome/HeySiriVoiceManager;->instance:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-direct {v0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->onToggleClicked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_0
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public startContinuousListening()V
    .locals 2

    .line 160
    iget-boolean v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->isPaused:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->isDestroyed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->restartListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 163
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    const-string v0, "HeySiriVoiceManager"

    const-string v1, "Speech recognition not available on device"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/gathin/tvhome/HeySiriVoiceManager$5;

    invoke-direct {v1, p0}, Lcom/gathin/tvhome/HeySiriVoiceManager$5;-><init>(Lcom/gathin/tvhome/HeySiriVoiceManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 256
    return-void

    .line 160
    :cond_2
    :goto_0
    return-void
.end method

.method public stopListening()V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 262
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 266
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager;->isListening:Z

    .line 267
    return-void
.end method
