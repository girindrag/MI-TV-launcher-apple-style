.class public Lcom/gathin/tvhome/TvControlCenter;
.super Ljava/lang/Object;
.source "TvControlCenter.java"


# static fields
.field private static final KEY_AUDIO_MODE:Ljava/lang/String; = "audio_mode"

.field private static final KEY_PICTURE_MODE:Ljava/lang/String; = "picture_mode"

.field private static final PREFS_NAME:Ljava/lang/String; = "tv_control_center_prefs"

.field private static activeSleepTimerRunnable:Ljava/lang/Runnable;

.field private static sleepMinutesRemaining:I

.field private static timerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/gathin/tvhome/TvControlCenter;->activeSleepTimerRunnable:Ljava/lang/Runnable;

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/gathin/tvhome/TvControlCenter;->timerHandler:Landroid/os/Handler;

    .line 39
    const/4 v0, 0x0

    sput v0, Lcom/gathin/tvhome/TvControlCenter;->sleepMinutesRemaining:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;I)V
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lcom/gathin/tvhome/TvControlCenter;->setSleepTimer(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;)V
    .locals 0

    .line 31
    invoke-static {p0}, Lcom/gathin/tvhome/TvControlCenter;->cleanRam(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$202(I)I
    .locals 0

    .line 31
    sput p0, Lcom/gathin/tvhome/TvControlCenter;->sleepMinutesRemaining:I

    return p0
.end method

.method private static addSectionHeader(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 2

    .line 313
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 314
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    const-string p0, "#cbd5e1"

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 316
    const/high16 p0, 0x41700000    # 15.0f

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 317
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 318
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, p2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 319
    const/16 p2, 0xc

    iput p2, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 320
    const/16 p2, 0x8

    iput p2, p0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 321
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 323
    return-void
.end method

.method private static cleanRam(Landroid/app/Activity;)V
    .locals 12

    .line 358
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 359
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 360
    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 361
    iget-wide v2, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    .line 363
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 364
    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v6

    .line 365
    nop

    .line 366
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    .line 367
    iget v10, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v9, v10

    if-nez v9, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 368
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 369
    add-int/lit8 v7, v7, 0x1

    .line 371
    :cond_0
    goto :goto_0

    .line 373
    :cond_1
    new-instance v6, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v6}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 374
    invoke-virtual {v1, v6}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 375
    iget-wide v10, v6, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    div-long/2addr v10, v4

    .line 376
    sub-long/2addr v10, v2

    int-to-long v1, v7

    const-wide/16 v3, 0x1c

    mul-long v1, v1, v3

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2728 Boosted! Freed ~"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MB RAM ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " apps optimized)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    goto :goto_1

    .line 379
    :catchall_0
    move-exception v1

    .line 380
    const-string v1, "\u2728 System cache cleared and RAM optimized!"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 382
    :goto_1
    return-void
.end method

.method private static createChipButton(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/Button;
    .locals 6

    .line 385
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 386
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 387
    const/high16 p0, 0x41600000    # 14.0f

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTextSize(F)V

    .line 388
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 389
    const/16 p0, 0x11

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setGravity(I)V

    .line 390
    const/16 p0, 0xc

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1, p0, p1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 391
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setIncludeFontPadding(Z)V

    .line 392
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 393
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setFocusable(Z)V

    .line 395
    if-eqz p4, :cond_0

    const-string p0, "#0284c7"

    goto :goto_0

    :cond_0
    const-string p0, "#1e293b"

    :goto_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    .line 396
    const-string v1, "#38bdf8"

    if-eqz p4, :cond_1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_1
    const-string v2, "#475569"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 397
    :goto_1
    if-eqz p4, :cond_2

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    goto :goto_2

    :cond_2
    const-string p4, "#384860"

    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    .line 399
    :goto_2
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 400
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 401
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 402
    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 403
    const/4 v4, 0x3

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 405
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 406
    invoke-virtual {v4, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 407
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 408
    const/4 p0, 0x2

    invoke-virtual {v4, p0, p4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 410
    const p0, 0x101009c

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-virtual {v1, p0, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 411
    new-array p0, p1, [I

    invoke-virtual {v1, p0, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 412
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 413
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 415
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 416
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    return-object v0
.end method

.method private static createStyledButton(Landroid/content/Context;Ljava/lang/String;IIIIII)Landroid/widget/Button;
    .locals 5

    .line 423
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 424
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 425
    const/high16 p0, 0x41800000    # 16.0f

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTextSize(F)V

    .line 426
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 427
    const/16 p0, 0x11

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setGravity(I)V

    .line 428
    const/16 p0, 0x14

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1, p0, p1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 429
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setIncludeFontPadding(Z)V

    .line 430
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 431
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setFocusable(Z)V

    .line 433
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 434
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 435
    invoke-virtual {v2, p5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 436
    const/high16 p5, 0x41600000    # 14.0f

    invoke-virtual {v2, p5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 437
    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 439
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 440
    invoke-virtual {v3, p4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 441
    invoke-virtual {v3, p5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 442
    const-string p4, "#475569"

    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    const/4 p5, 0x2

    invoke-virtual {v3, p5, p4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 444
    const p4, 0x101009c

    filled-new-array {p4}, [I

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 445
    new-array v2, p1, [I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 446
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 448
    new-array v1, p1, [I

    new-array p5, p5, [[I

    filled-new-array {p4}, [I

    move-result-object p4

    aput-object p4, p5, p1

    aput-object v1, p5, p0

    .line 452
    filled-new-array {p7, p6}, [I

    move-result-object p0

    .line 456
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, p5, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 458
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 459
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    return-object v0
.end method

.method public static openControlCenter(Landroid/app/Activity;)V
    .locals 26

    .line 42
    move-object/from16 v0, p0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 44
    :cond_0
    new-instance v8, Landroid/app/Dialog;

    const v1, 0x103000a

    invoke-direct {v8, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 45
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 47
    new-instance v10, Landroid/widget/FrameLayout;

    invoke-direct {v10, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    const-string v1, "#d9090d16"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 50
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52
    const/16 v1, 0x30

    const/16 v2, 0x24

    invoke-virtual {v11, v1, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 54
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 55
    const-string v2, "#ee181f2c"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 56
    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 57
    const-string v2, "#384860"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/4 v12, 0x2

    invoke-virtual {v1, v12, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 58
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 60
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x384

    const/4 v13, -0x2

    invoke-direct {v1, v2, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 61
    const/16 v14, 0x11

    iput v14, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 62
    invoke-virtual {v10, v11, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 66
    const-string v2, "\u26a1 TV Control Center & Quick Tools"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const/4 v15, -0x1

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 69
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 70
    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 71
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 74
    const-string v2, "Sleep timer, RAM optimizer, display & audio quick modes"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const-string v2, "#94a3b8"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 77
    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 78
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v15, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 79
    const/4 v3, 0x4

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 80
    const/16 v4, 0x12

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 81
    invoke-virtual {v11, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x1cc

    invoke-direct {v2, v15, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 85
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u23f0 Sleep Timer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/gathin/tvhome/TvControlCenter;->sleepMinutesRemaining:I

    if-lez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " (Active: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/gathin/tvhome/TvControlCenter;->sleepMinutesRemaining:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "m left)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    const-string v6, ""

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v5}, Lcom/gathin/tvhome/TvControlCenter;->addSectionHeader(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 92
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 93
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 94
    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 95
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v15, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 96
    const/16 v16, 0x2

    const/16 v12, 0xe

    iput v12, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 97
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    const/16 v7, 0x3c

    const/16 v17, 0x4

    const/16 v3, 0x78

    const/16 v4, 0xf

    const/16 v18, 0x1

    const/16 v9, 0x1e

    filled-new-array {v6, v4, v9, v7, v3}, [I

    move-result-object v3

    .line 100
    const/4 v4, 0x5

    new-array v7, v4, [Ljava/lang/String;

    const-string v9, "Off"

    aput-object v9, v7, v6

    const-string v9, "15m"

    aput-object v9, v7, v18

    const-string v9, "30m"

    aput-object v9, v7, v16

    const-string v9, "60m"

    const/16 v19, 0x3

    aput-object v9, v7, v19

    const-string v9, "120m"

    aput-object v9, v7, v17

    .line 101
    const/4 v9, 0x0

    :goto_1
    const/16 v13, 0x38

    const/16 v15, 0xa

    if-ge v9, v4, :cond_4

    .line 102
    aget v4, v3, v9

    .line 103
    aget-object v6, v7, v9

    sget v14, Lcom/gathin/tvhome/TvControlCenter;->sleepMinutesRemaining:I

    if-ne v4, v14, :cond_2

    const/4 v14, 0x1

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    :goto_2
    const/16 v12, 0x82

    invoke-static {v0, v6, v12, v13, v14}, Lcom/gathin/tvhome/TvControlCenter;->createChipButton(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/Button;

    move-result-object v6

    .line 104
    new-instance v12, Lcom/gathin/tvhome/TvControlCenter$1;

    invoke-direct {v12, v0, v4, v8}, Lcom/gathin/tvhome/TvControlCenter$1;-><init>(Landroid/app/Activity;ILandroid/app/Dialog;)V

    invoke-virtual {v6, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-virtual {v6}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 112
    if-lez v9, :cond_3

    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 113
    :cond_3
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x5

    const/4 v6, 0x0

    const/16 v12, 0xe

    const/4 v13, -0x2

    const/16 v14, 0x11

    const/4 v15, -0x1

    goto :goto_1

    .line 116
    :cond_4
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    const-string v3, "\ud83d\ude80 System Performance & Memory"

    invoke-static {v0, v2, v3}, Lcom/gathin/tvhome/TvControlCenter;->addSectionHeader(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 120
    nop

    .line 121
    const-string v9, "#1e293b"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const-string v12, "#0284c7"

    move-object v3, v5

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 122
    const-string v6, "#38bdf8"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    .line 120
    move-object v7, v1

    const-string v1, "\u2728 Clean Background Tasks & Free RAM"

    move-object v14, v2

    const/4 v2, -0x1

    move-object/from16 v20, v3

    const/16 v3, 0x40

    move-object/from16 v22, v7

    const/4 v7, -0x1

    move-object v15, v14

    move-object/from16 v24, v20

    move-object/from16 v23, v22

    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-static/range {v0 .. v7}, Lcom/gathin/tvhome/TvControlCenter;->createStyledButton(Landroid/content/Context;Ljava/lang/String;IIIIII)Landroid/widget/Button;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 124
    const/16 v3, 0xe

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 125
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    new-instance v2, Lcom/gathin/tvhome/TvControlCenter$2;

    invoke-direct {v2, v0}, Lcom/gathin/tvhome/TvControlCenter$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual {v15, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    const-string v1, "tv_control_center_prefs"

    invoke-virtual {v0, v1, v14}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 136
    const-string v2, "picture_mode"

    const-string v3, "Cinema"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\ud83c\udfac Picture Mode (Current: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v15, v4}, Lcom/gathin/tvhome/TvControlCenter;->addSectionHeader(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 138
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 139
    invoke-virtual {v4, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 140
    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 141
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v14, -0x1

    const/16 v21, 0x0

    invoke-direct {v6, v14, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 142
    const/16 v7, 0xe

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 143
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    new-array v6, v13, [Ljava/lang/String;

    aput-object v3, v6, v21

    const-string v3, "Sports"

    aput-object v3, v6, v18

    const-string v3, "Game"

    aput-object v3, v6, v16

    const-string v3, "Standard"

    aput-object v3, v6, v19

    .line 146
    const/4 v7, 0x0

    :goto_3
    const/16 v14, 0xa0

    if-ge v7, v13, :cond_6

    .line 147
    aget-object v13, v6, v7

    .line 148
    move-object/from16 v22, v3

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v25, v2

    const/16 v2, 0x38

    invoke-static {v0, v13, v14, v2, v3}, Lcom/gathin/tvhome/TvControlCenter;->createChipButton(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/Button;

    move-result-object v3

    .line 149
    new-instance v2, Lcom/gathin/tvhome/TvControlCenter$3;

    invoke-direct {v2, v1, v13, v0, v8}, Lcom/gathin/tvhome/TvControlCenter$3;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/app/Activity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 158
    if-lez v7, :cond_5

    const/16 v13, 0xa

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 159
    :cond_5
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v22

    move-object/from16 v2, v25

    const/4 v13, 0x4

    goto :goto_3

    .line 162
    :cond_6
    move-object/from16 v22, v3

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    const-string v2, "audio_mode"

    const-string v3, "Dialogue Boost"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\ud83d\udd0a Audio Mode (Current: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v15, v4}, Lcom/gathin/tvhome/TvControlCenter;->addSectionHeader(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 167
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 168
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 169
    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 170
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 171
    const/16 v7, 0xe

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 172
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    const/4 v13, 0x4

    new-array v5, v13, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v3, v5, v21

    const-string v3, "Cinema Bass"

    aput-object v3, v5, v18

    const-string v3, "Night Mode"

    aput-object v3, v5, v16

    aput-object v22, v5, v19

    .line 175
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v13, :cond_8

    .line 176
    aget-object v3, v5, v6

    .line 177
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const/16 v13, 0x38

    invoke-static {v0, v3, v14, v13, v7}, Lcom/gathin/tvhome/TvControlCenter;->createChipButton(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/widget/Button;

    move-result-object v7

    .line 178
    new-instance v13, Lcom/gathin/tvhome/TvControlCenter$4;

    invoke-direct {v13, v1, v3, v0, v8}, Lcom/gathin/tvhome/TvControlCenter$4;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/app/Activity;Landroid/app/Dialog;)V

    invoke-virtual {v7, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    invoke-virtual {v7}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 187
    if-lez v6, :cond_7

    const/16 v13, 0xa

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 188
    :cond_7
    invoke-virtual {v7, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 175
    add-int/lit8 v6, v6, 0x1

    const/4 v13, 0x4

    goto :goto_4

    .line 191
    :cond_8
    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 194
    const-string v1, "\ud83d\udcfa Quick Actions"

    invoke-static {v0, v15, v1}, Lcom/gathin/tvhome/TvControlCenter;->addSectionHeader(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 195
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 196
    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 197
    const/16 v6, 0x11

    invoke-virtual {v13, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 198
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 199
    const/16 v2, 0xa

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 200
    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    nop

    .line 203
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 202
    const-string v1, "\ud83c\udfde\ufe0f Start Screensaver"

    const/16 v2, 0x14a

    const/16 v3, 0x3c

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static/range {v0 .. v7}, Lcom/gathin/tvhome/TvControlCenter;->createStyledButton(Landroid/content/Context;Ljava/lang/String;IIIIII)Landroid/widget/Button;

    move-result-object v1

    .line 205
    new-instance v2, Lcom/gathin/tvhome/TvControlCenter$5;

    invoke-direct {v2, v8, v0}, Lcom/gathin/tvhome/TvControlCenter$5;-><init>(Landroid/app/Dialog;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    nop

    .line 215
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const-string v1, "#475569"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 216
    const-string v1, "#cbd5e1"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    .line 214
    const-string v1, "\u2699\ufe0f TV Settings"

    const/16 v2, 0x14a

    invoke-static/range {v0 .. v7}, Lcom/gathin/tvhome/TvControlCenter;->createStyledButton(Landroid/content/Context;Ljava/lang/String;IIIIII)Landroid/widget/Button;

    move-result-object v1

    .line 217
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 218
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 219
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    new-instance v2, Lcom/gathin/tvhome/TvControlCenter$6;

    invoke-direct {v2, v8, v0}, Lcom/gathin/tvhome/TvControlCenter$6;-><init>(Landroid/app/Dialog;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 233
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 236
    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 237
    const/16 v6, 0x11

    invoke-virtual {v13, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 238
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 239
    const/16 v2, 0xa

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 240
    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    nop

    .line 243
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 242
    const-string v1, "\ud83c\udfac Universal Up Next"

    const/16 v2, 0x14a

    const/16 v3, 0x3c

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static/range {v0 .. v7}, Lcom/gathin/tvhome/TvControlCenter;->createStyledButton(Landroid/content/Context;Ljava/lang/String;IIIIII)Landroid/widget/Button;

    move-result-object v1

    .line 245
    new-instance v2, Lcom/gathin/tvhome/TvControlCenter$7;

    invoke-direct {v2, v8, v0}, Lcom/gathin/tvhome/TvControlCenter$7;-><init>(Landroid/app/Dialog;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 254
    nop

    .line 255
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 254
    const-string v1, "\ud83d\udee1\ufe0f Parental Controls"

    const/16 v2, 0x14a

    invoke-static/range {v0 .. v7}, Lcom/gathin/tvhome/TvControlCenter;->createStyledButton(Landroid/content/Context;Ljava/lang/String;IIIIII)Landroid/widget/Button;

    move-result-object v1

    .line 257
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 258
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 259
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    new-instance v2, Lcom/gathin/tvhome/TvControlCenter$8;

    invoke-direct {v2, v8, v0}, Lcom/gathin/tvhome/TvControlCenter$8;-><init>(Landroid/app/Dialog;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 273
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 275
    move-object/from16 v7, v23

    invoke-virtual {v7, v15}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 276
    invoke-virtual {v11, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 279
    nop

    .line 280
    const-string v1, "#334155"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const-string v1, "#475569"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 279
    const-string v1, "Close"

    const/16 v2, 0xdc

    const/16 v3, 0x44

    const/4 v7, -0x1

    invoke-static/range {v0 .. v7}, Lcom/gathin/tvhome/TvControlCenter;->createStyledButton(Landroid/content/Context;Ljava/lang/String;IIIIII)Landroid/widget/Button;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 283
    const/16 v2, 0x12

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 284
    const/4 v2, 0x1

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 285
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    new-instance v1, Lcom/gathin/tvhome/TvControlCenter$9;

    invoke-direct {v1, v8}, Lcom/gathin/tvhome/TvControlCenter$9;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 294
    new-instance v0, Lcom/gathin/tvhome/TvControlCenter$10;

    invoke-direct {v0, v8}, Lcom/gathin/tvhome/TvControlCenter$10;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 305
    invoke-virtual {v8, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 306
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 309
    move-object/from16 v3, v24

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 310
    return-void

    .line 42
    :cond_9
    :goto_5
    return-void
.end method

.method private static setSleepTimer(Landroid/app/Activity;I)V
    .locals 5

    .line 326
    sget-object v0, Lcom/gathin/tvhome/TvControlCenter;->activeSleepTimerRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 327
    sget-object v0, Lcom/gathin/tvhome/TvControlCenter;->timerHandler:Landroid/os/Handler;

    sget-object v1, Lcom/gathin/tvhome/TvControlCenter;->activeSleepTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 328
    const/4 v0, 0x0

    sput-object v0, Lcom/gathin/tvhome/TvControlCenter;->activeSleepTimerRunnable:Ljava/lang/Runnable;

    .line 330
    :cond_0
    sput p1, Lcom/gathin/tvhome/TvControlCenter;->sleepMinutesRemaining:I

    .line 331
    if-gtz p1, :cond_1

    .line 332
    const-string p1, "\u23f0 Sleep timer turned OFF"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 333
    return-void

    .line 336
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u23f0 Sleep timer set: TV will turn off in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minutes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 338
    new-instance v0, Lcom/gathin/tvhome/TvControlCenter$11;

    invoke-direct {v0, p0}, Lcom/gathin/tvhome/TvControlCenter$11;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/gathin/tvhome/TvControlCenter;->activeSleepTimerRunnable:Ljava/lang/Runnable;

    .line 353
    sget-object p0, Lcom/gathin/tvhome/TvControlCenter;->timerHandler:Landroid/os/Handler;

    sget-object v0, Lcom/gathin/tvhome/TvControlCenter;->activeSleepTimerRunnable:Ljava/lang/Runnable;

    int-to-long v1, p1

    const-wide/16 v3, 0x3c

    mul-long v1, v1, v3

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 354
    return-void
.end method
