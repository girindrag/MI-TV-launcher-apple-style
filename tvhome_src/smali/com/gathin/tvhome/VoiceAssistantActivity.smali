.class public Lcom/gathin/tvhome/VoiceAssistantActivity;
.super Landroid/app/Activity;
.source "VoiceAssistantActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceAssistant"


# instance fields
.field private chipsContainer:Landroid/widget/LinearLayout;

.field private isDestroyed:Z

.field private isListening:Z

.field private mainHandler:Landroid/os/Handler;

.field private pulseGrowing:Z

.field private pulseRunnable:Ljava/lang/Runnable;

.field private pulseScale:F

.field private responseView:Landroid/widget/TextView;

.field private rootLayout:Landroid/widget/FrameLayout;

.field private siriOrb:Landroid/view/View;

.field private speechRecognizer:Landroid/speech/SpeechRecognizer;

.field private textToSpeech:Landroid/speech/tts/TextToSpeech;

.field private titleView:Landroid/widget/TextView;

.field private transcriptView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->mainHandler:Landroid/os/Handler;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->isListening:Z

    .line 51
    iput-boolean v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->isDestroyed:Z

    .line 54
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->pulseScale:F

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->pulseGrowing:Z

    .line 56
    new-instance v0, Lcom/gathin/tvhome/VoiceAssistantActivity$1;

    invoke-direct {v0, p0}, Lcom/gathin/tvhome/VoiceAssistantActivity$1;-><init>(Lcom/gathin/tvhome/VoiceAssistantActivity;)V

    iput-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->pulseRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/gathin/tvhome/VoiceAssistantActivity;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->isDestroyed:Z

    return p0
.end method

.method static synthetic access$100(Lcom/gathin/tvhome/VoiceAssistantActivity;)Landroid/view/View;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->siriOrb:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/gathin/tvhome/VoiceAssistantActivity;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->startListening()V

    return-void
.end method

.method static synthetic access$200(Lcom/gathin/tvhome/VoiceAssistantActivity;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->pulseGrowing:Z

    return p0
.end method

.method static synthetic access$202(Lcom/gathin/tvhome/VoiceAssistantActivity;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->pulseGrowing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/gathin/tvhome/VoiceAssistantActivity;)F
    .locals 0

    .line 37
    iget p0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->pulseScale:F

    return p0
.end method

.method static synthetic access$302(Lcom/gathin/tvhome/VoiceAssistantActivity;F)F
    .locals 0

    .line 37
    iput p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->pulseScale:F

    return p1
.end method

.method static synthetic access$316(Lcom/gathin/tvhome/VoiceAssistantActivity;F)F
    .locals 1

    .line 37
    iget v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->pulseScale:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->pulseScale:F

    return v0
.end method

.method static synthetic access$324(Lcom/gathin/tvhome/VoiceAssistantActivity;F)F
    .locals 1

    .line 37
    iget v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->pulseScale:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->pulseScale:F

    return v0
.end method

.method static synthetic access$400(Lcom/gathin/tvhome/VoiceAssistantActivity;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/gathin/tvhome/VoiceAssistantActivity;)Landroid/speech/tts/TextToSpeech;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object p0
.end method

.method static synthetic access$602(Lcom/gathin/tvhome/VoiceAssistantActivity;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->isListening:Z

    return p1
.end method

.method static synthetic access$700(Lcom/gathin/tvhome/VoiceAssistantActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/gathin/tvhome/VoiceAssistantActivity;->updateStatus(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/gathin/tvhome/VoiceAssistantActivity;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->transcriptView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/gathin/tvhome/VoiceAssistantActivity;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    return-object p0
.end method

.method private addChip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 179
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 180
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    const/high16 p1, 0x41400000    # 12.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 182
    const-string p1, "#E2E8F0"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    const-string p1, "sans-serif-medium"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 184
    const/16 p1, 0x10

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result v2

    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result p1

    invoke-direct {p0, v3}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v4, p1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 185
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 186
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 188
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 189
    const-string v3, "#253347"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 190
    const/16 v3, 0x14

    invoke-direct {p0, v3}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 191
    invoke-direct {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result p1

    const-string v4, "#3B4D66"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, p1, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 193
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 194
    const-string v4, "#38BDF8"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 195
    invoke-direct {p0, v3}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 196
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 198
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 200
    new-instance v3, Lcom/gathin/tvhome/VoiceAssistantActivity$2;

    invoke-direct {v3, p0, v0, p1, v2}, Lcom/gathin/tvhome/VoiceAssistantActivity$2;-><init>(Lcom/gathin/tvhome/VoiceAssistantActivity;Landroid/widget/TextView;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 217
    new-instance p1, Lcom/gathin/tvhome/VoiceAssistantActivity$3;

    invoke-direct {p1, p0, p2}, Lcom/gathin/tvhome/VoiceAssistantActivity$3;-><init>(Lcom/gathin/tvhome/VoiceAssistantActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 227
    const/4 p2, 0x6

    invoke-direct {p0, p2}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, p2}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result p2

    invoke-virtual {p1, v2, v1, p2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 228
    iget-object p2, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->chipsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    return-void
.end method

.method private dp(I)I
    .locals 1

    .line 634
    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->getResources()Landroid/content/res/Resources;

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

.method private finishWithDelay(J)V
    .locals 2

    .line 625
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gathin/tvhome/VoiceAssistantActivity$9;

    invoke-direct {v1, p0}, Lcom/gathin/tvhome/VoiceAssistantActivity$9;-><init>(Lcom/gathin/tvhome/VoiceAssistantActivity;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 631
    return-void
.end method

.method private initSpeechRecognizer()V
    .locals 3

    .line 254
    invoke-static {p0}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    :try_start_0
    invoke-static {p0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 257
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    new-instance v1, Lcom/gathin/tvhome/VoiceAssistantActivity$5;

    invoke-direct {v1, p0}, Lcom/gathin/tvhome/VoiceAssistantActivity$5;-><init>(Lcom/gathin/tvhome/VoiceAssistantActivity;)V

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 323
    invoke-direct {p0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->startListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    const-string v1, "VoiceAssistant"

    const-string v2, "Error initializing speech recognizer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    const-string v0, "Voice Ready"

    const-string v1, "Microphone available. Choose an action below or speak."

    invoke-direct {p0, v0, v1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->updateStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :goto_0
    goto :goto_1

    .line 329
    :cond_0
    const-string v0, "Voice Assistant Ready"

    const-string v1, "Select an action chip below using your TV remote."

    invoke-direct {p0, v0, v1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->updateStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :goto_1
    return-void
.end method

.method private initTTS()V
    .locals 2

    .line 232
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/gathin/tvhome/VoiceAssistantActivity$4;

    invoke-direct {v1, p0}, Lcom/gathin/tvhome/VoiceAssistantActivity$4;-><init>(Lcom/gathin/tvhome/VoiceAssistantActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 241
    return-void
.end method

.method private launchAppPackage(Ljava/lang/String;)V
    .locals 3

    .line 612
    :try_start_0
    invoke-virtual {p0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 613
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 614
    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 615
    :cond_0
    if-eqz v1, :cond_1

    .line 616
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 617
    invoke-virtual {p0, v1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :cond_1
    goto :goto_0

    .line 619
    :catch_0
    move-exception v0

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to launch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "VoiceAssistant"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 622
    :goto_0
    return-void
.end method

.method private searchAndLaunchApp(Ljava/lang/String;)Z
    .locals 5

    .line 586
    const-string v0, ""

    :try_start_0
    invoke-virtual {p0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 587
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 588
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

    .line 590
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 591
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 592
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 593
    :cond_0
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 594
    if-nez v3, :cond_1

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 595
    :cond_1
    if-eqz v3, :cond_2

    .line 596
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\ud83d\ude80 Launching "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "..."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
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

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->speakResponse(Ljava/lang/String;)V

    .line 598
    const/high16 p1, 0x10000000

    invoke-virtual {v3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 599
    invoke-virtual {p0, v3}, Lcom/gathin/tvhome/VoiceAssistantActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    const/4 p1, 0x1

    return p1

    .line 603
    :cond_2
    goto :goto_0

    .line 606
    :cond_3
    goto :goto_1

    .line 604
    :catch_0
    move-exception p1

    .line 605
    const-string v0, "VoiceAssistant"

    const-string v1, "Error matching app"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 607
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method private speakResponse(Ljava/lang/String;)V
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    const-string v1, "TV_VOICE_RESP"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    goto :goto_0

    .line 247
    :catch_0
    move-exception p1

    .line 248
    const-string v0, "VoiceAssistant"

    const-string v1, "TTS speak error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    :cond_0
    :goto_0
    return-void
.end method

.method private startListening()V
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v0, :cond_0

    return-void

    .line 336
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string v1, "android.speech.extra.LANGUAGE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 339
    const-string v1, "android.speech.extra.MAX_RESULTS"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    const-string v1, "android.speech.extra.PARTIAL_RESULTS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 341
    iget-object v1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v1, v0}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    const-string v1, "VoiceAssistant"

    const-string v2, "Error startListening"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    :goto_0
    return-void
.end method

.method private updateStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gathin/tvhome/VoiceAssistantActivity$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/gathin/tvhome/VoiceAssistantActivity$6;-><init>(Lcom/gathin/tvhome/VoiceAssistantActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 355
    return-void
.end method


# virtual methods
.method public executeVoiceCommand(Ljava/lang/String;)V
    .locals 8

    .line 358
    if-eqz p1, :cond_32

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_14

    .line 359
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing voice command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VoiceAssistant"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->transcriptView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u201c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u201d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    const-string v1, "hey siri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "siri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "ok google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "alexa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "hello"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "who are you"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_13

    .line 379
    :cond_1
    const-string v1, "clean ram"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, 0x7d0

    const/4 v4, 0x1

    if-nez v1, :cond_2e

    const-string v1, "boost"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "optimize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "free ram"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "clear memory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "speed up"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_11

    .line 398
    :cond_2
    const-string v1, "youtube"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v5, 0x5dc

    if-nez v1, :cond_2d

    const-string v1, "yt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_10

    .line 407
    :cond_3
    const-string v1, "netflix"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 408
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    const-string v0, "\ud83c\udfac Opening Netflix..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    const-string p1, "Opening Netflix"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->speakResponse(Ljava/lang/String;)V

    .line 410
    const-string p1, "com.netflix.ninja"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->launchAppPackage(Ljava/lang/String;)V

    .line 411
    invoke-direct {p0, v5, v6}, Lcom/gathin/tvhome/VoiceAssistantActivity;->finishWithDelay(J)V

    .line 412
    return-void

    .line 416
    :cond_4
    const-string v1, "prime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_f

    .line 425
    :cond_5
    const-string v1, "hotstar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "disney"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_e

    .line 434
    :cond_6
    const-string v1, "sonyliv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "sony"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_d

    .line 443
    :cond_7
    const-string v1, "zee"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "zee5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_c

    .line 452
    :cond_8
    const-string v1, "airtel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "xstream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_b

    .line 461
    :cond_9
    const-string v1, "screensaver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "screen saver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "aerial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto/16 :goto_a

    .line 475
    :cond_a
    const-string v1, "sleep"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "timer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_6

    .line 488
    :cond_b
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 489
    const-string v2, "mute"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "unmute"

    const/4 v7, 0x3

    if-eqz v2, :cond_d

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 490
    if-eqz v1, :cond_c

    .line 491
    const/16 p1, -0x64

    invoke-virtual {v1, v7, p1, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 493
    :cond_c
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    const-string v0, "\ud83d\udd07 TV Volume Muted"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    const-string p1, "TV muted"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->speakResponse(Ljava/lang/String;)V

    .line 495
    invoke-direct {p0, v5, v6}, Lcom/gathin/tvhome/VoiceAssistantActivity;->finishWithDelay(J)V

    .line 496
    return-void

    .line 498
    :cond_d
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 499
    if-eqz v1, :cond_e

    .line 500
    const/16 p1, 0x64

    invoke-virtual {v1, v7, p1, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 502
    :cond_e
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    const-string v0, "\ud83d\udd0a TV Volume Unmuted"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    const-string p1, "Sound restored"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->speakResponse(Ljava/lang/String;)V

    .line 504
    invoke-direct {p0, v5, v6}, Lcom/gathin/tvhome/VoiceAssistantActivity;->finishWithDelay(J)V

    .line 505
    return-void

    .line 507
    :cond_f
    const-string v2, "volume up"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "louder"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "increase volume"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_5

    .line 516
    :cond_10
    const-string v2, "volume down"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "quieter"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "lower volume"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto/16 :goto_4

    .line 527
    :cond_11
    const-string v1, "time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 528
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "h:mm a"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The current time is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 530
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ud83d\udd52 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    invoke-direct {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->speakResponse(Ljava/lang/String;)V

    .line 532
    return-void

    .line 534
    :cond_12
    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "day"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto/16 :goto_3

    .line 543
    :cond_13
    const-string v1, "weather"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 544
    nop

    .line 545
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\ud83c\udf24\ufe0f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "The weather is currently clear and pleasant at 24 degrees Celsius."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    invoke-direct {p0, v1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->speakResponse(Ljava/lang/String;)V

    .line 547
    return-void

    .line 551
    :cond_14
    const-string v1, "trending"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "movie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "show"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "imdb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_2

    .line 561
    :cond_15
    const-string v1, "setting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_0

    .line 572
    :cond_16
    invoke-direct {p0, v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->searchAndLaunchApp(Ljava/lang/String;)Z

    move-result v0

    .line 573
    if-eqz v0, :cond_17

    .line 574
    invoke-direct {p0, v5, v6}, Lcom/gathin/tvhome/VoiceAssistantActivity;->finishWithDelay(J)V

    .line 575
    return-void

    .line 579
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "I couldn\'t find a command for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'. Try \'Open YouTube\', \'Clean RAM\', or choose a chip."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 580
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    invoke-direct {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->speakResponse(Ljava/lang/String;)V

    .line 582
    return-void

    .line 562
    :cond_18
    :goto_0
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    const-string v0, "\u2699\ufe0f Opening Android TV Settings..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    const-string p1, "Opening Settings"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->speakResponse(Ljava/lang/String;)V

    .line 565
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 566
    :catch_0
    move-exception p1

    :goto_1
    nop

    .line 567
    invoke-direct {p0, v5, v6}, Lcom/gathin/tvhome/VoiceAssistantActivity;->finishWithDelay(J)V

    .line 568
    return-void

    .line 552
    :cond_19
    :goto_2
    invoke-static {}, Lcom/gathin/tvhome/ImdbScreensaverManager;->getCachedTopTitle()Ljava/lang/String;

    move-result-object p1

    .line 553
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1a
    const-string p1, "The Penguin, Dune Part Two, and Gladiator II"

    .line 554
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trending on IMDb right now: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 555
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ud83c\udf7f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    invoke-direct {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->speakResponse(Ljava/lang/String;)V

    .line 557
    return-void

    .line 535
    :cond_1c
    :goto_3
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "EEEE, MMMM d"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Today is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 537
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ud83d\udcc5 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    invoke-direct {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->speakResponse(Ljava/lang/String;)V

    .line 539
    return-void

    .line 517
    :cond_1d
    :goto_4
    if-eqz v1, :cond_1e

    .line 518
    const/4 p1, -0x1

    invoke-virtual {v1, v7, p1, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 520
    :cond_1e
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    const-string v0, "\ud83d\udd09 Volume Decreased"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    const-string p1, "Volume down"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->speakResponse(Ljava/lang/String;)V

    .line 522
    invoke-direct {p0, v5, v6}, Lcom/gathin/tvhome/VoiceAssistantActivity;->finishWithDelay(J)V

    .line 523
    return-void

    .line 508
    :cond_1f
    :goto_5
    if-eqz v1, :cond_20

    .line 509
    invoke-virtual {v1, v7, v4, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 511
    :cond_20
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    const-string v0, "\ud83d\udd0a Volume Increased"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    const-string p1, "Volume up"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->speakResponse(Ljava/lang/String;)V

    .line 513
    invoke-direct {p0, v5, v6}, Lcom/gathin/tvhome/VoiceAssistantActivity;->finishWithDelay(J)V

    .line 514
    return-void

    .line 476
    :cond_21
    :goto_6
    nop

    .line 477
    const-string p1, "15"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_22

    const/16 p1, 0xf

    goto :goto_9

    .line 478
    :cond_22
    const-string p1, "60"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_26

    const-string p1, "1 hour"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_26

    const-string p1, "one hour"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_8

    .line 479
    :cond_23
    const-string p1, "120"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_25

    const-string p1, "2 hours"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_25

    const-string p1, "two hours"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_7

    :cond_24
    const/16 p1, 0x1e

    goto :goto_9

    :cond_25
    :goto_7
    const/16 p1, 0x78

    goto :goto_9

    .line 478
    :cond_26
    :goto_8
    const/16 p1, 0x3c

    .line 481
    :goto_9
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u23f0 Sleep timer set for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " minutes"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sleep timer set for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->speakResponse(Ljava/lang/String;)V

    .line 483
    invoke-direct {p0, v2, v3}, Lcom/gathin/tvhome/VoiceAssistantActivity;->finishWithDelay(J)V

    .line 484
    return-void

    .line 462
    :cond_27
    :goto_a
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    const-string v0, "\ud83c\udf0c Starting 4K Apple Screensaver..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    const-string p1, "Starting 4K screensaver"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->speakResponse(Ljava/lang/String;)V

    .line 464
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/gathin/tvhome/VoiceAssistantActivity$8;

    invoke-direct {v0, p0}, Lcom/gathin/tvhome/VoiceAssistantActivity$8;-><init>(Lcom/gathin/tvhome/VoiceAssistantActivity;)V

    const-wide/16 v1, 0x4b0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 471
    return-void

    .line 453
    :cond_28
    :goto_b
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    const-string v0, "\ud83d\udce1 Opening Airtel Xstream..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    const-string p1, "Opening Airtel Xstream"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->speakResponse(Ljava/lang/String;)V

    .line 455
    const-string p1, "tv.airtel.xstream.tvapp"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->launchAppPackage(Ljava/lang/String;)V

    .line 456
    invoke-direct {p0, v5, v6}, Lcom/gathin/tvhome/VoiceAssistantActivity;->finishWithDelay(J)V

    .line 457
    return-void

    .line 444
    :cond_29
    :goto_c
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    const-string v0, "\ud83d\udcfa Opening Zee5..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    const-string p1, "Opening Zee5"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->speakResponse(Ljava/lang/String;)V

    .line 446
    const-string p1, "com.graymatrix.did"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->launchAppPackage(Ljava/lang/String;)V

    .line 447
    invoke-direct {p0, v5, v6}, Lcom/gathin/tvhome/VoiceAssistantActivity;->finishWithDelay(J)V

    .line 448
    return-void

    .line 435
    :cond_2a
    :goto_d
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    const-string v0, "\ud83d\udcfa Opening SonyLIV..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    const-string p1, "Opening Sony LIV"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->speakResponse(Ljava/lang/String;)V

    .line 437
    const-string p1, "com.sonyliv"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->launchAppPackage(Ljava/lang/String;)V

    .line 438
    invoke-direct {p0, v5, v6}, Lcom/gathin/tvhome/VoiceAssistantActivity;->finishWithDelay(J)V

    .line 439
    return-void

    .line 426
    :cond_2b
    :goto_e
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    const-string v0, "\u2b50 Opening Disney+ Hotstar..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    const-string p1, "Opening Hotstar"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->speakResponse(Ljava/lang/String;)V

    .line 428
    const-string p1, "in.startv.hotstar"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->launchAppPackage(Ljava/lang/String;)V

    .line 429
    invoke-direct {p0, v5, v6}, Lcom/gathin/tvhome/VoiceAssistantActivity;->finishWithDelay(J)V

    .line 430
    return-void

    .line 417
    :cond_2c
    :goto_f
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    const-string v0, "\ud83d\udce6 Opening Amazon Prime Video..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    const-string p1, "Opening Prime Video"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->speakResponse(Ljava/lang/String;)V

    .line 419
    const-string p1, "com.amazon.amazonvideo.livingroom"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->launchAppPackage(Ljava/lang/String;)V

    .line 420
    invoke-direct {p0, v5, v6}, Lcom/gathin/tvhome/VoiceAssistantActivity;->finishWithDelay(J)V

    .line 421
    return-void

    .line 399
    :cond_2d
    :goto_10
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    const-string v0, "\ud83d\udd34 Opening YouTube TV..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    const-string p1, "Opening YouTube"

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->speakResponse(Ljava/lang/String;)V

    .line 401
    invoke-static {p0}, Lcom/gathin/tvhome/TvKeyHandler;->launchYouTube(Landroid/content/Context;)V

    .line 402
    invoke-direct {p0, v5, v6}, Lcom/gathin/tvhome/VoiceAssistantActivity;->finishWithDelay(J)V

    .line 403
    return-void

    .line 380
    :cond_2e
    :goto_11
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    const-string v0, "\ud83d\ude80 Boosting TV performance and clearing RAM..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    const-string p1, "RAM optimized. Background tasks cleared."

    invoke-direct {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->speakResponse(Ljava/lang/String;)V

    .line 383
    :try_start_1
    const-string p1, "activity"

    invoke-virtual {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 384
    if-eqz p1, :cond_30

    .line 385
    invoke-virtual {p0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 386
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 387
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v4

    if-nez v5, :cond_2f

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 388
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 390
    :cond_2f
    goto :goto_12

    .line 392
    :catch_1
    move-exception p1

    :cond_30
    nop

    .line 393
    invoke-direct {p0, v2, v3}, Lcom/gathin/tvhome/VoiceAssistantActivity;->finishWithDelay(J)V

    .line 394
    return-void

    .line 366
    :cond_31
    :goto_13
    nop

    .line 367
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    const-string v0, "I am your Apple TV Voice Assistant, ready to control your Mi TV! What would you like to do?"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    invoke-direct {p0, v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->speakResponse(Ljava/lang/String;)V

    .line 369
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/gathin/tvhome/VoiceAssistantActivity$7;

    invoke-direct {v0, p0}, Lcom/gathin/tvhome/VoiceAssistantActivity$7;-><init>(Lcom/gathin/tvhome/VoiceAssistantActivity;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 375
    return-void

    .line 358
    :cond_32
    :goto_14
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->rootLayout:Landroid/widget/FrameLayout;

    .line 79
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->rootLayout:Landroid/widget/FrameLayout;

    const-string v0, "#E6080C15"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 80
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->rootLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 83
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 84
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 85
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 86
    const/16 v2, 0x28

    invoke-direct {p0, v2}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result v3

    const/16 v4, 0x24

    invoke-direct {p0, v4}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v2}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, v4}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result v4

    invoke-virtual {p1, v3, v5, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 88
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 89
    const-string v3, "#331E293B"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 90
    const/16 v3, 0x1c

    invoke-direct {p0, v3}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 91
    invoke-direct {p0, v1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result v3

    const-string v4, "#44FFFFFF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 92
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 94
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x2f8

    invoke-direct {p0, v3}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 95
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 96
    iget-object v5, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->rootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->siriOrb:Landroid/view/View;

    .line 100
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 101
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 102
    nop

    .line 103
    const-string v5, "#38BDF8"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    .line 104
    const-string v7, "#A855F7"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    .line 105
    const-string v8, "#EC4899"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    filled-new-array {v6, v7, v8}, [I

    move-result-object v6

    .line 102
    invoke-virtual {v2, v6}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 107
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 108
    const/16 v6, 0x2d

    invoke-direct {p0, v6}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 109
    iget-object v6, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->siriOrb:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 111
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x5a

    invoke-direct {p0, v6}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result v7

    invoke-direct {p0, v6}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result v6

    invoke-direct {v2, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 112
    const/16 v6, 0x12

    invoke-direct {p0, v6}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 113
    iget-object v6, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->siriOrb:Landroid/view/View;

    invoke-virtual {p1, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->titleView:Landroid/widget/TextView;

    .line 117
    iget-object v2, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->titleView:Landroid/widget/TextView;

    const-string v6, "SIRI VOICE ASSISTANT"

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v2, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->titleView:Landroid/widget/TextView;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 119
    iget-object v2, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->titleView:Landroid/widget/TextView;

    const-string v6, "#94A3B8"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object v2, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->titleView:Landroid/widget/TextView;

    const-string v6, "sans-serif-medium"

    invoke-static {v6, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 121
    iget-object v2, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->titleView:Landroid/widget/TextView;

    const v6, 0x3e4ccccd    # 0.2f

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 122
    iget-object v2, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
    iget-object v2, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->transcriptView:Landroid/widget/TextView;

    .line 127
    iget-object v2, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->transcriptView:Landroid/widget/TextView;

    const-string v6, "Listening... Say a command or choose below"

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v2, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->transcriptView:Landroid/widget/TextView;

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 129
    iget-object v2, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->transcriptView:Landroid/widget/TextView;

    const-string v6, "#F8FAFC"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object v2, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->transcriptView:Landroid/widget/TextView;

    const-string v6, "sans-serif"

    invoke-static {v6, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 131
    iget-object v1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->transcriptView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 132
    iget-object v1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->transcriptView:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result v6

    const/16 v7, 0xa

    invoke-direct {p0, v7}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result v8

    invoke-direct {p0, v2}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result v9

    const/16 v10, 0x8

    invoke-direct {p0, v10}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result v10

    invoke-virtual {v1, v6, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 133
    iget-object v1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->transcriptView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    .line 137
    iget-object v1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    const-string v6, "Try saying: \'Hey Siri\', \'Open YouTube\', \'Clean RAM\', \'Sleep 30 min\'..."

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    const/high16 v6, 0x41500000    # 13.0f

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 139
    iget-object v1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    iget-object v1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 141
    iget-object v1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result v5

    const/16 v6, 0x14

    invoke-direct {p0, v6}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result v6

    invoke-virtual {v1, v3, v0, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 142
    iget-object v1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->responseView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 145
    new-instance v1, Landroid/widget/HorizontalScrollView;

    invoke-direct {v1, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 146
    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 147
    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->setClipToPadding(Z)V

    .line 148
    invoke-direct {p0, v7}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v7}, Lcom/gathin/tvhome/VoiceAssistantActivity;->dp(I)I

    move-result v5

    invoke-virtual {v1, v3, v0, v5, v0}, Landroid/widget/HorizontalScrollView;->setPadding(IIII)V

    .line 150
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->chipsContainer:Landroid/widget/LinearLayout;

    .line 151
    iget-object v3, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->chipsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 152
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->chipsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 153
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->chipsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 154
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    const-string p1, "\ud83d\ude80 Boost RAM"

    const-string v0, "clean ram"

    invoke-direct {p0, p1, v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->addChip(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string p1, "\ud83d\udd34 YouTube"

    const-string v0, "open youtube"

    invoke-direct {p0, p1, v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->addChip(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string p1, "\ud83c\udfac Screensaver"

    const-string v0, "screensaver"

    invoke-direct {p0, p1, v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->addChip(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string p1, "\u23f0 30m Sleep"

    const-string v0, "sleep 30 minutes"

    invoke-direct {p0, p1, v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->addChip(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string p1, "\ud83c\udf7f Trending Movies"

    const-string v0, "trending movies"

    invoke-direct {p0, p1, v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->addChip(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string p1, "\ud83d\udd07 Mute TV"

    const-string v0, "mute"

    invoke-direct {p0, p1, v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->addChip(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string p1, "\u2699\ufe0f Settings"

    const-string v0, "open settings"

    invoke-direct {p0, p1, v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->addChip(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string p1, "\ud83d\udd52 Time & Date"

    const-string v0, "time"

    invoke-direct {p0, p1, v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->addChip(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->rootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lcom/gathin/tvhome/VoiceAssistantActivity;->setContentView(Landroid/view/View;)V

    .line 169
    invoke-direct {p0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->initTTS()V

    .line 172
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->mainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->pulseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    invoke-direct {p0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->initSpeechRecognizer()V

    .line 176
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 648
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 649
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->isDestroyed:Z

    .line 650
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 651
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    .line 653
    iput-object v1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 657
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 658
    iput-object v1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 660
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 639
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->finish()V

    .line 641
    const/4 p1, 0x1

    return p1

    .line 643
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
