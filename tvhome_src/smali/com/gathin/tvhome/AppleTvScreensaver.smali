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
    .locals 12
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

    .line 229
    move-object v0, p1

    move-object v1, p2

    move-object/from16 v2, p8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 230
    aget v6, p3, v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    rem-int/2addr v6, v7

    .line 231
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;

    .line 232
    move-object v6, p0

    invoke-virtual {v0, p0}, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;->getLocalFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    .line 234
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x1388

    cmp-long v11, v7, v9

    if-lez v11, :cond_3

    .line 235
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 236
    if-eqz v6, :cond_3

    .line 237
    aget-boolean v1, p4, v5

    if-eqz v1, :cond_0

    move-object/from16 v1, p6

    goto :goto_0

    :cond_0
    move-object/from16 v1, p5

    .line 238
    :goto_0
    aget-boolean v7, p4, v5

    if-eqz v7, :cond_1

    move-object/from16 v7, p5

    goto :goto_1

    :cond_1
    move-object/from16 v7, p6

    .line 240
    :goto_1
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 241
    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v8, 0x4b0

    invoke-virtual {v1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 242
    invoke-virtual {v7}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 243
    aget-boolean v1, p4, v5

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    aput-boolean v1, p4, v5

    .line 246
    invoke-virtual {v0}, Lcom/gathin/tvhome/ImdbScreensaverManager$ImdbItem;->getBadgeText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    invoke-virtual/range {p8 .. p8}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 250
    aget v0, p3, v5

    add-int/2addr v0, v3

    aput v0, p3, v5

    .line 251
    return-void

    .line 266
    :catch_0
    move-exception v0

    goto :goto_3

    .line 257
    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 258
    aget v0, p3, v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    rem-int/2addr v0, v6

    .line 259
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gathin/tvhome/AppleTvScreensaver$AerialScene;

    .line 260
    iget-object v0, v0, Lcom/gathin/tvhome/AppleTvScreensaver$AerialScene;->packageName:Ljava/lang/String;

    move-object/from16 v1, p7

    invoke-virtual {v1, v0}, Lcom/gathin/tvhome/AmbientVideoView;->playForPackage(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p5 .. p5}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v6, 0x320

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 262
    invoke-virtual/range {p6 .. p6}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 263
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    aget v0, p3, v5

    add-int/2addr v0, v3

    aput v0, p3, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 267
    :goto_3
    const-string v1, "AppleTvScreensaver"

    const-string v2, "Error displaying screensaver item"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 268
    :cond_4
    :goto_4
    nop

    .line 269
    :goto_5
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
    .locals 21

    .line 83
    move-object/from16 v11, p0

    if-eqz v11, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 84
    :cond_0
    sget-object v0, Lcom/gathin/tvhome/AppleTvScreensaver;->activeScreensaverDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/gathin/tvhome/AppleTvScreensaver;->activeScreensaverDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 87
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/gathin/tvhome/ImdbScreensaverManager;->checkAndSyncDaily(Landroid/content/Context;)V

    .line 89
    new-instance v12, Landroid/app/Dialog;

    const v0, 0x103000a

    invoke-direct {v12, v11, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 90
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 91
    sput-object v12, Lcom/gathin/tvhome/AppleTvScreensaver;->activeScreensaverDialog:Landroid/app/Dialog;

    .line 93
    new-instance v13, Landroid/widget/FrameLayout;

    invoke-direct {v13, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 94
    const/high16 v1, -0x1000000

    invoke-virtual {v13, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 97
    new-instance v9, Lcom/gathin/tvhome/AmbientVideoView;

    invoke-direct {v9, v11}, Lcom/gathin/tvhome/AmbientVideoView;-><init>(Landroid/content/Context;)V

    .line 98
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v9, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 102
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 103
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v10, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v14, Landroid/widget/ImageView;

    invoke-direct {v14, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 106
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 107
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 108
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v14, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 112
    const-string v4, "#f8fafc"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    const/high16 v5, 0x42280000    # 42.0f

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 114
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 115
    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x40400000    # 3.0f

    invoke-virtual {v3, v5, v2, v6, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 117
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 118
    const v5, 0x800035

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 119
    const/16 v5, 0x28

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 120
    const/16 v5, 0x3c

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 121
    invoke-virtual {v13, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "h:mm a"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 124
    new-instance v15, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v15, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 126
    new-instance v6, Lcom/gathin/tvhome/AppleTvScreensaver$2;

    invoke-direct {v6, v3, v1, v15}, Lcom/gathin/tvhome/AppleTvScreensaver$2;-><init>(Landroid/widget/TextView;Ljava/text/SimpleDateFormat;Landroid/os/Handler;)V

    .line 133
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 136
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 137
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 139
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 140
    const/16 v1, 0x20

    const/16 v3, 0x10

    invoke-virtual {v8, v1, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 142
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 143
    const-string v3, "#80000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 144
    const/high16 v3, 0x41f00000    # 30.0f

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 145
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 146
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 149
    const v2, 0x800053

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 150
    const/16 v2, 0x32

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 151
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 152
    invoke-virtual {v13, v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    invoke-static/range {p0 .. p0}, Lcom/gathin/tvhome/ImdbScreensaverManager;->getCachedItems(Landroid/content/Context;)Ljava/util/List;

    move-result-object v16

    .line 156
    invoke-static {}, Lcom/gathin/tvhome/AppleTvScreensaver;->getDailyPlaylist()Ljava/util/List;

    move-result-object v17

    .line 157
    const/4 v1, 0x0

    filled-new-array {v1}, [I

    move-result-object v18

    .line 158
    new-array v7, v0, [Z

    aput-boolean v0, v7, v1

    .line 161
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object v4, v7

    move-object v5, v10

    move-object v6, v14

    move-object/from16 v19, v7

    move-object v7, v9

    move-object/from16 v20, v8

    invoke-static/range {v0 .. v8}, Lcom/gathin/tvhome/AppleTvScreensaver;->displayNextScreensaverItem(Landroid/content/Context;Ljava/util/List;Ljava/util/List;[I[ZLandroid/widget/ImageView;Landroid/widget/ImageView;Lcom/gathin/tvhome/AmbientVideoView;Landroid/widget/TextView;)V

    .line 163
    new-instance v8, Lcom/gathin/tvhome/AppleTvScreensaver$3;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object v6, v10

    move-object v7, v14

    move-object v14, v8

    move-object v8, v9

    move-object/from16 v9, v20

    move-object v10, v15

    invoke-direct/range {v0 .. v10}, Lcom/gathin/tvhome/AppleTvScreensaver$3;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;[I[ZLandroid/widget/ImageView;Landroid/widget/ImageView;Lcom/gathin/tvhome/AmbientVideoView;Landroid/widget/TextView;Landroid/os/Handler;)V

    .line 170
    const-wide/16 v0, 0x36b0

    invoke-virtual {v15, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    new-instance v0, Lcom/gathin/tvhome/AppleTvScreensaver$4;

    invoke-direct {v0, v15, v12, v11}, Lcom/gathin/tvhome/AppleTvScreensaver$4;-><init>(Landroid/os/Handler;Landroid/app/Dialog;Landroid/app/Activity;)V

    .line 187
    new-instance v1, Lcom/gathin/tvhome/AppleTvScreensaver$5;

    invoke-direct {v1, v0}, Lcom/gathin/tvhome/AppleTvScreensaver$5;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v12, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 198
    new-instance v1, Lcom/gathin/tvhome/AppleTvScreensaver$6;

    invoke-direct {v1, v0}, Lcom/gathin/tvhome/AppleTvScreensaver$6;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v13, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    new-instance v0, Lcom/gathin/tvhome/AppleTvScreensaver$7;

    invoke-direct {v0, v15, v11}, Lcom/gathin/tvhome/AppleTvScreensaver$7;-><init>(Landroid/os/Handler;Landroid/app/Activity;)V

    invoke-virtual {v12, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 214
    invoke-virtual {v12, v13}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 215
    invoke-virtual {v12}, Landroid/app/Dialog;->show()V

    .line 216
    return-void

    .line 83
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

.method public static showScreensaver(Landroid/app/Activity;)V
    .locals 0

    .line 79
    invoke-static {p0}, Lcom/gathin/tvhome/AppleTvScreensaver;->launchScreensaver(Landroid/app/Activity;)V

    .line 80
    return-void
.end method

.method public static startIdleWatcher(Landroid/app/Activity;)V
    .locals 0

    .line 57
    invoke-static {p0}, Lcom/gathin/tvhome/AppleTvScreensaver;->resetIdleTimer(Landroid/app/Activity;)V

    .line 58
    return-void
.end method
