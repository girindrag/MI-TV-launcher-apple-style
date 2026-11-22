.class public Lcom/gathin/tvhome/AppleTvScreensaver;
.super Ljava/lang/Object;
.source "AppleTvScreensaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gathin/tvhome/AppleTvScreensaver$AerialScene;
    }
.end annotation


# static fields
.field private static final IDLE_TIMEOUT_MS:J = 0x15f90L

.field private static final TAG:Ljava/lang/String; = "AppleTvScreensaver"

.field private static activeScreensaverDialog:Landroid/app/Dialog;

.field private static idleHandler:Landroid/os/Handler;

.field private static idleRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/gathin/tvhome/AppleTvScreensaver;->idleHandler:Landroid/os/Handler;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/gathin/tvhome/AppleTvScreensaver;->idleRunnable:Ljava/lang/Runnable;

    .line 35
    sput-object v0, Lcom/gathin/tvhome/AppleTvScreensaver;->activeScreensaverDialog:Landroid/app/Dialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/util/List;Ljava/util/List;[I[ZLandroid/widget/ImageView;Landroid/widget/ImageView;Lcom/gathin/tvhome/AmbientVideoView;Landroid/widget/TextView;)V
    .locals 0

    .line 29
    invoke-static/range {p0 .. p8}, Lcom/gathin/tvhome/AppleTvScreensaver;->displayNextScreensaverItem(Landroid/content/Context;Ljava/util/List;Ljava/util/List;[I[ZLandroid/widget/ImageView;Landroid/widget/ImageView;Lcom/gathin/tvhome/AmbientVideoView;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$102(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 29
    sput-object p0, Lcom/gathin/tvhome/AppleTvScreensaver;->activeScreensaverDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method private static displayNextScreensaverItem(Landroid/content/Context;Ljava/util/List;Ljava/util/List;[I[ZLandroid/widget/ImageView;Landroid/widget/ImageView;Lcom/gathin/tvhome/AmbientVideoView;Landroid/widget/TextView;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/gathin/tvhome/AppleTvScreensaver$AerialScene;",
            ">;[I[Z",
            "Landroid/widget/ImageView;",
            "Landroid/widget/ImageView;",
            "Lcom/gathin/tvhome/AmbientVideoView;",
            "Landroid/widget/TextView;",
            ")V"
        }
    .end annotation

    .line 225
    move-object/from16 v0, p8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 226
    aget v4, p3, v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    rem-int/2addr v4, v5

    .line 227
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;

    .line 228
    invoke-virtual {p1, p0}, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;->getLocalFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 230
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    cmp-long v8, v4, v6

    if-lez v8, :cond_3

    .line 231
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 232
    if-eqz p0, :cond_3

    .line 233
    aget-boolean p2, p4, v3

    if-eqz p2, :cond_0

    move-object p2, p6

    goto :goto_0

    :cond_0
    move-object p2, p5

    .line 234
    :goto_0
    aget-boolean v4, p4, v3

    if-eqz v4, :cond_1

    move-object v4, p5

    goto :goto_1

    :cond_1
    move-object v4, p6

    .line 236
    :goto_1
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 237
    invoke-virtual {p2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v5, 0x4b0

    invoke-virtual {p0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 238
    invoke-virtual {v4}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 239
    aget-boolean p0, p4, v3

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    aput-boolean p0, p4, v3

    .line 242
    invoke-virtual {p1}, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;->getBadgeText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0x258

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 246
    aget p0, p3, v3

    add-int/2addr p0, v1

    aput p0, p3, v3

    .line 247
    return-void

    .line 253
    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    .line 254
    aget p0, p3, v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    rem-int/2addr p0, p1

    .line 255
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gathin/tvhome/AppleTvScreensaver$AerialScene;

    .line 256
    iget-object p0, p0, Lcom/gathin/tvhome/AppleTvScreensaver$AerialScene;->packageName:Ljava/lang/String;

    move-object/from16 p1, p7

    invoke-virtual {p1, p0}, Lcom/gathin/tvhome/AmbientVideoView;->playForPackage(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p5}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0x320

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 258
    invoke-virtual {p6}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 259
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    aget p0, p3, v3

    add-int/2addr p0, v1

    aput p0, p3, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 262
    :catch_0
    move-exception v0

    move-object p0, v0

    .line 263
    const-string p1, "AppleTvScreensaver"

    const-string p2, "Error displaying screensaver item"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 264
    :cond_4
    :goto_3
    nop

    .line 265
    :goto_4
    return-void
.end method

.method public static getDailyPlaylist()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gathin/tvhome/AppleTvScreensaver$AerialScene;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    new-instance v1, Lcom/gathin/tvhome/AppleTvScreensaver$AerialScene;

    const-string v2, "com.apple.atve.androidtv.appletv"

    invoke-direct {v1, v2}, Lcom/gathin/tvhome/AppleTvScreensaver$AerialScene;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v1, Lcom/gathin/tvhome/AppleTvScreensaver$AerialScene;

    const-string v2, "in.startv.hotstar"

    invoke-direct {v1, v2}, Lcom/gathin/tvhome/AppleTvScreensaver$AerialScene;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v1, Lcom/gathin/tvhome/AppleTvScreensaver$AerialScene;

    const-string v2, "com.sonyliv"

    invoke-direct {v1, v2}, Lcom/gathin/tvhome/AppleTvScreensaver$AerialScene;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v1, Lcom/gathin/tvhome/AppleTvScreensaver$AerialScene;

    const-string v2, "com.amazon.amazonvideo.livingroom"

    invoke-direct {v1, v2}, Lcom/gathin/tvhome/AppleTvScreensaver$AerialScene;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Lcom/gathin/tvhome/AppleTvScreensaver$AerialScene;

    const-string v2, "com.mxtech.videoplayer.television"

    invoke-direct {v1, v2}, Lcom/gathin/tvhome/AppleTvScreensaver$AerialScene;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v1, Lcom/gathin/tvhome/AppleTvScreensaver$AerialScene;

    const-string v2, "com.google.android.youtube.tv"

    invoke-direct {v1, v2}, Lcom/gathin/tvhome/AppleTvScreensaver$AerialScene;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v1, Lcom/gathin/tvhome/AppleTvScreensaver$AerialScene;

    const-string v2, "com.netflix.ninja"

    invoke-direct {v1, v2}, Lcom/gathin/tvhome/AppleTvScreensaver$AerialScene;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-object v0
.end method

.method public static launchScreensaver(Landroid/app/Activity;)V
    .locals 15

    .line 79
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 80
    :cond_0
    sget-object v0, Lcom/gathin/tvhome/AppleTvScreensaver;->activeScreensaverDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/gathin/tvhome/AppleTvScreensaver;->activeScreensaverDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 83
    :cond_1
    invoke-static {p0}, Lcom/gathin/tvhome/ImdbScreensaverManager;->checkAndSyncDaily(Landroid/content/Context;)V

    .line 85
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x103000a

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 86
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 87
    sput-object v0, Lcom/gathin/tvhome/AppleTvScreensaver;->activeScreensaverDialog:Landroid/app/Dialog;

    .line 89
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 90
    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 93
    new-instance v11, Lcom/gathin/tvhome/AmbientVideoView;

    invoke-direct {v11, p0}, Lcom/gathin/tvhome/AmbientVideoView;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v11, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 98
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 99
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v9, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 102
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 103
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 104
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v10, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 108
    const-string v6, "#f8fafc"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    const/high16 v7, 0x42280000    # 42.0f

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 110
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 111
    const/high16 v7, 0x41400000    # 12.0f

    const/high16 v8, 0x40400000    # 3.0f

    invoke-virtual {v5, v7, v4, v8, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 113
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 114
    const v7, 0x800035

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 115
    const/16 v7, 0x28

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 116
    const/16 v7, 0x3c

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 117
    invoke-virtual {v2, v5, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v8, "h:mm a"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-direct {v3, v8, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 120
    new-instance v14, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v14, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 122
    new-instance v8, Lcom/gathin/tvhome/AppleTvScreensaver$2;

    invoke-direct {v8, v5, v3, v14}, Lcom/gathin/tvhome/AppleTvScreensaver$2;-><init>(Landroid/widget/TextView;Ljava/text/SimpleDateFormat;Landroid/os/Handler;)V

    .line 129
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 132
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 133
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 135
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 136
    const/16 v3, 0x20

    const/16 v5, 0x10

    invoke-virtual {v12, v3, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 138
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 139
    const-string v5, "#80000000"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 140
    const/high16 v5, 0x41f00000    # 30.0f

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 141
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 142
    const/16 v3, 0x8

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 145
    const v4, 0x800053

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 146
    const/16 v4, 0x32

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 147
    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 148
    invoke-virtual {v2, v12, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    invoke-static {p0}, Lcom/gathin/tvhome/ImdbScreensaverManager;->getCachedItems(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 152
    invoke-static {}, Lcom/gathin/tvhome/AppleTvScreensaver;->getDailyPlaylist()Ljava/util/List;

    move-result-object v6

    .line 153
    const/4 v3, 0x0

    filled-new-array {v3}, [I

    move-result-object v7

    .line 154
    new-array v8, v1, [Z

    aput-boolean v1, v8, v3

    .line 157
    move-object v4, p0

    invoke-static/range {v4 .. v12}, Lcom/gathin/tvhome/AppleTvScreensaver;->displayNextScreensaverItem(Landroid/content/Context;Ljava/util/List;Ljava/util/List;[I[ZLandroid/widget/ImageView;Landroid/widget/ImageView;Lcom/gathin/tvhome/AmbientVideoView;Landroid/widget/TextView;)V

    .line 159
    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    new-instance v4, Lcom/gathin/tvhome/AppleTvScreensaver$3;

    invoke-direct/range {v4 .. v14}, Lcom/gathin/tvhome/AppleTvScreensaver$3;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;[I[ZLandroid/widget/ImageView;Landroid/widget/ImageView;Lcom/gathin/tvhome/AmbientVideoView;Landroid/widget/TextView;Landroid/os/Handler;)V

    .line 166
    move-object p0, v4

    move-object v4, v5

    const-wide/16 v5, 0x36b0

    invoke-virtual {v14, p0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 169
    new-instance p0, Lcom/gathin/tvhome/AppleTvScreensaver$4;

    invoke-direct {p0, v14, v0, v4}, Lcom/gathin/tvhome/AppleTvScreensaver$4;-><init>(Landroid/os/Handler;Landroid/app/Dialog;Landroid/app/Activity;)V

    .line 183
    new-instance v1, Lcom/gathin/tvhome/AppleTvScreensaver$5;

    invoke-direct {v1, p0}, Lcom/gathin/tvhome/AppleTvScreensaver$5;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 194
    new-instance v1, Lcom/gathin/tvhome/AppleTvScreensaver$6;

    invoke-direct {v1, p0}, Lcom/gathin/tvhome/AppleTvScreensaver$6;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    new-instance p0, Lcom/gathin/tvhome/AppleTvScreensaver$7;

    invoke-direct {p0, v14, v4}, Lcom/gathin/tvhome/AppleTvScreensaver$7;-><init>(Landroid/os/Handler;Landroid/app/Activity;)V

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 210
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 211
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 212
    return-void

    .line 79
    :cond_2
    :goto_0
    return-void
.end method

.method public static onUserActivity(Landroid/app/Activity;)V
    .locals 0

    .line 61
    invoke-static {p0}, Lcom/gathin/tvhome/AppleTvScreensaver;->resetIdleTimer(Landroid/app/Activity;)V

    .line 62
    return-void
.end method

.method public static resetIdleTimer(Landroid/app/Activity;)V
    .locals 3

    .line 65
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    sget-object v0, Lcom/gathin/tvhome/AppleTvScreensaver;->idleRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 67
    sget-object v0, Lcom/gathin/tvhome/AppleTvScreensaver;->idleHandler:Landroid/os/Handler;

    sget-object v1, Lcom/gathin/tvhome/AppleTvScreensaver;->idleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    :cond_1
    new-instance v0, Lcom/gathin/tvhome/AppleTvScreensaver$1;

    invoke-direct {v0, p0}, Lcom/gathin/tvhome/AppleTvScreensaver$1;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/gathin/tvhome/AppleTvScreensaver;->idleRunnable:Ljava/lang/Runnable;

    .line 75
    sget-object p0, Lcom/gathin/tvhome/AppleTvScreensaver;->idleHandler:Landroid/os/Handler;

    sget-object v0, Lcom/gathin/tvhome/AppleTvScreensaver;->idleRunnable:Ljava/lang/Runnable;

    const-wide/32 v1, 0x15f90

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76
    return-void

    .line 65
    :cond_2
    :goto_0
    return-void
.end method

.method public static startIdleWatcher(Landroid/app/Activity;)V
    .locals 0

    .line 57
    invoke-static {p0}, Lcom/gathin/tvhome/AppleTvScreensaver;->resetIdleTimer(Landroid/app/Activity;)V

    .line 58
    return-void
.end method
