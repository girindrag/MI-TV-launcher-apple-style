.class public Lcom/gathin/tvhome/ChildLockManager;
.super Ljava/lang/Object;
.source "ChildLockManager.java"


# static fields
.field private static final DEFAULT_LOCKED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_PIN:Ljava/lang/String; = "0000"

.field private static final KEY_ENABLED:Ljava/lang/String; = "child_lock_enabled"

.field private static final KEY_LOCKED_APPS:Ljava/lang/String; = "locked_packages"

.field private static final KEY_LOCK_SETTINGS:Ljava/lang/String; = "lock_settings"

.field private static final KEY_PIN:Ljava/lang/String; = "child_lock_pin"

.field private static final PREFS_NAME:Ljava/lang/String; = "child_lock_prefs"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 48
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.netflix.ninja"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "com.google.android.youtube.tv"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "org.smarttube.stable"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "in.startv.hotstar"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "com.amazon.amazonvideo.livingroom"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "com.apple.atve.androidtv.appletv"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "com.sonyliv"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string v2, "com.graymatrix.did"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string v2, "com.mxtech.videoplayer.television"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string v2, "com.android.tv.settings"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string v2, "com.android.vending"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/gathin/tvhome/ChildLockManager;->DEFAULT_LOCKED:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyFocusableCard(Landroid/view/View;)V
    .locals 5

    .line 433
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 434
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 435
    const-string v2, "#334155"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 436
    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 437
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 438
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 439
    const v4, 0x101009c

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 440
    new-array v1, v3, [I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 441
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 442
    return-void
.end method

.method private static createStyledButton(Landroid/content/Context;Ljava/lang/String;IIIIII)Landroid/widget/Button;
    .locals 5

    .line 392
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 393
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 394
    const/high16 p0, 0x41900000    # 18.0f

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTextSize(F)V

    .line 395
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 396
    const/16 p0, 0x11

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setGravity(I)V

    .line 397
    const/16 p0, 0x18

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1, p0, p1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 398
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setIncludeFontPadding(Z)V

    .line 399
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 400
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setFocusable(Z)V

    .line 402
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 403
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 404
    invoke-virtual {v2, p5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 405
    const/high16 p5, 0x41800000    # 16.0f

    invoke-virtual {v2, p5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 406
    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 408
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 409
    invoke-virtual {v3, p4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 410
    invoke-virtual {v3, p5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 411
    const-string p4, "#475569"

    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    const/4 p5, 0x2

    invoke-virtual {v3, p5, p4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 413
    const p4, 0x101009c

    filled-new-array {p4}, [I

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 414
    new-array v2, p1, [I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 415
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 417
    new-array v1, p1, [I

    new-array p5, p5, [[I

    filled-new-array {p4}, [I

    move-result-object p4

    aput-object p4, p5, p1

    aput-object v1, p5, p0

    .line 421
    filled-new-array {p7, p6}, [I

    move-result-object p0

    .line 425
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, p5, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 427
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 428
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    return-object v0
.end method

.method public static getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 121
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 125
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 126
    :catchall_0
    move-exception p0

    .line 127
    return-object p1

    .line 121
    :cond_1
    :goto_0
    const-string p0, "App"

    return-object p0
.end method

.method public static getLockedPackages(Landroid/content/Context;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 99
    if-nez p0, :cond_0

    sget-object p0, Lcom/gathin/tvhome/ChildLockManager;->DEFAULT_LOCKED:Ljava/util/Set;

    return-object p0

    .line 100
    :cond_0
    const-string v0, "child_lock_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 101
    const-string v0, "locked_packages"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    .line 102
    if-nez p0, :cond_1

    .line 103
    new-instance p0, Ljava/util/HashSet;

    sget-object v0, Lcom/gathin/tvhome/ChildLockManager;->DEFAULT_LOCKED:Ljava/util/Set;

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object p0

    .line 105
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getPin(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 75
    const-string v0, "0000"

    if-nez p0, :cond_0

    return-object v0

    .line 76
    :cond_0
    const-string v1, "child_lock_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 77
    const-string v1, "child_lock_pin"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static handleOpen(Lcom/gathin/tvhome/MainActivity;Landroid/content/Intent;)Z
    .locals 3

    .line 132
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    invoke-static {p0}, Lcom/gathin/tvhome/ChildLockManager;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 135
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 136
    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 137
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 140
    :cond_2
    if-eqz v1, :cond_3

    invoke-static {p0, v1}, Lcom/gathin/tvhome/ChildLockManager;->isPackageLocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 141
    invoke-static {p0, v1}, Lcom/gathin/tvhome/ChildLockManager;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter 4-digit PIN to open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gathin/tvhome/ChildLockManager$1;

    invoke-direct {v2, p1, p0, v0}, Lcom/gathin/tvhome/ChildLockManager$1;-><init>(Landroid/content/Intent;Lcom/gathin/tvhome/MainActivity;Ljava/lang/String;)V

    const-string p1, "\ud83d\udd12 Child Lock Protected"

    invoke-static {p0, p1, v1, v2}, Lcom/gathin/tvhome/ChildLockManager;->showPinDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 153
    const/4 p0, 0x1

    return p0

    .line 155
    :cond_3
    return v0

    .line 132
    :cond_4
    :goto_0
    return v0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 63
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 64
    :cond_0
    const-string v1, "child_lock_prefs"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 65
    const-string v0, "child_lock_enabled"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isLockSettings(Landroid/content/Context;)Z
    .locals 2

    .line 87
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 88
    :cond_0
    const-string v1, "child_lock_prefs"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 89
    const-string v0, "lock_settings"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isPackageLocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 115
    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/gathin/tvhome/ChildLockManager;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-static {p0}, Lcom/gathin/tvhome/ChildLockManager;->getLockedPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    .line 117
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 115
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static onChildLockButtonClicked(Lcom/gathin/tvhome/MainActivity;)V
    .locals 3

    .line 159
    if-nez p0, :cond_0

    return-void

    .line 160
    :cond_0
    new-instance v0, Lcom/gathin/tvhome/ChildLockManager$2;

    invoke-direct {v0, p0}, Lcom/gathin/tvhome/ChildLockManager$2;-><init>(Lcom/gathin/tvhome/MainActivity;)V

    const-string v1, "\ud83d\udee1\ufe0f Parental Controls"

    const-string v2, "Enter Parent PIN to manage Child Lock"

    invoke-static {p0, v1, v2, v0}, Lcom/gathin/tvhome/ChildLockManager;->showPinDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 166
    return-void
.end method

.method public static openParentalHub(Landroid/app/Activity;)V
    .locals 19

    .line 445
    move-object/from16 v1, p0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 447
    :cond_0
    new-instance v9, Landroid/app/Dialog;

    const v0, 0x103000a

    invoke-direct {v9, v1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 448
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 450
    new-instance v11, Landroid/widget/FrameLayout;

    invoke-direct {v11, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 451
    const-string v0, "#d9090d16"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 453
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 454
    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 455
    const/16 v0, 0x34

    const/16 v2, 0x26

    invoke-virtual {v12, v0, v2, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 457
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 458
    const-string v2, "#ee181f2c"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 459
    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 460
    const-string v2, "#384860"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 461
    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 463
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x35c

    const/4 v13, -0x2

    invoke-direct {v0, v2, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 464
    const/16 v14, 0x11

    iput v14, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 465
    invoke-virtual {v11, v12, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 468
    const-string v2, "\ud83d\udee1\ufe0f Parental Controls & Child Lock"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    const/4 v15, -0x1

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 470
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 471
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 472
    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 474
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 475
    const-string v2, "Select apps and restrictions protected by your 4-digit PIN"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    const-string v2, "#94a3b8"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 477
    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 478
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 479
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v15, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 480
    const/4 v3, 0x6

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 481
    const/16 v3, 0x14

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 482
    invoke-virtual {v12, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    new-instance v2, Landroid/widget/CheckBox;

    invoke-direct {v2, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 486
    const-string v0, "  Enable Child Lock Protection"

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 487
    invoke-virtual {v2, v15}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 488
    const/high16 v0, 0x41880000    # 17.0f

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 489
    invoke-static {v1}, Lcom/gathin/tvhome/ChildLockManager;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 490
    invoke-virtual {v2, v10}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 491
    const/16 v3, 0x10

    const/16 v0, 0xc

    invoke-virtual {v2, v3, v0, v3, v0}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 492
    invoke-static {v2}, Lcom/gathin/tvhome/ChildLockManager;->applyFocusableCard(Landroid/view/View;)V

    .line 493
    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Change 4-Digit PIN (Current: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/gathin/tvhome/ChildLockManager;->getPin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    const-string v4, "#1e293b"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const-string v4, "#0284c7"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    .line 499
    const-string v4, "#38bdf8"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    .line 496
    const/16 v4, 0x10

    const/4 v3, -0x1

    const/16 v8, 0x10

    const/16 v4, 0x44

    const/16 v16, 0x10

    const/4 v8, -0x1

    move-object/from16 v17, v2

    const/16 v14, 0x10

    move-object v2, v0

    invoke-static/range {v1 .. v8}, Lcom/gathin/tvhome/ChildLockManager;->createStyledButton(Landroid/content/Context;Ljava/lang/String;IIIIII)Landroid/widget/Button;

    move-result-object v0

    .line 500
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 501
    const/16 v3, 0xe

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 502
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    new-instance v2, Lcom/gathin/tvhome/ChildLockManager$8;

    invoke-direct {v2, v1}, Lcom/gathin/tvhome/ChildLockManager$8;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 512
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 513
    const-string v2, "Protected Apps:"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    const-string v2, "#e2e8f0"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 515
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 516
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v15, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 517
    iput v14, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 518
    const/16 v4, 0x8

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 519
    invoke-virtual {v12, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 522
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x104

    invoke-direct {v0, v15, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 523
    invoke-virtual {v3, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 526
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 528
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 529
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 530
    const-string v6, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 532
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 534
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 535
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 536
    iget-object v13, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v13, :cond_1

    iget-object v13, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 537
    iget-object v13, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 539
    :try_start_0
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 540
    :catchall_0
    move-exception v0

    :goto_1
    nop

    .line 542
    :cond_1
    const/4 v13, -0x2

    goto :goto_0

    .line 544
    :cond_2
    new-instance v0, Lcom/gathin/tvhome/ChildLockManager$9;

    invoke-direct {v0, v5}, Lcom/gathin/tvhome/ChildLockManager$9;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 551
    invoke-static {v1}, Lcom/gathin/tvhome/ChildLockManager;->getLockedPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 552
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 554
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    .line 555
    new-instance v7, Landroid/widget/CheckBox;

    invoke-direct {v7, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 556
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v10, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 558
    invoke-virtual {v7, v15}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 559
    invoke-virtual {v7, v2}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 560
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 561
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 562
    const/16 v10, 0xa

    const/16 v14, 0x10

    invoke-virtual {v7, v14, v10, v14, v10}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 563
    invoke-static {v7}, Lcom/gathin/tvhome/ChildLockManager;->applyFocusableCard(Landroid/view/View;)V

    .line 564
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 565
    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    const/4 v7, 0x0

    const/4 v10, 0x1

    goto :goto_2

    .line 568
    :cond_3
    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 569
    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 572
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 573
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 574
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 575
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v15, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 576
    const/16 v3, 0x1a

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 577
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 579
    nop

    .line 580
    const-string v2, "#16a34a"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const-string v2, "#22c55e"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    .line 579
    const-string v2, "\u2705  Save"

    const/16 v3, 0x104

    const/16 v4, 0x4a

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static/range {v1 .. v8}, Lcom/gathin/tvhome/ChildLockManager;->createStyledButton(Landroid/content/Context;Ljava/lang/String;IIIIII)Landroid/widget/Button;

    move-result-object v2

    .line 582
    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 583
    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 584
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    new-instance v3, Lcom/gathin/tvhome/ChildLockManager$10;

    move-object/from16 v10, v17

    invoke-direct {v3, v1, v10, v13, v9}, Lcom/gathin/tvhome/ChildLockManager$10;-><init>(Landroid/app/Activity;Landroid/widget/CheckBox;Ljava/util/List;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 602
    nop

    .line 603
    const-string v2, "#334155"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const-string v2, "#475569"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    .line 602
    const-string v2, "Close"

    const/16 v3, 0xdc

    const/16 v4, 0x4a

    invoke-static/range {v1 .. v8}, Lcom/gathin/tvhome/ChildLockManager;->createStyledButton(Landroid/content/Context;Ljava/lang/String;IIIIII)Landroid/widget/Button;

    move-result-object v1

    .line 605
    new-instance v2, Lcom/gathin/tvhome/ChildLockManager$11;

    invoke-direct {v2, v9}, Lcom/gathin/tvhome/ChildLockManager$11;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 613
    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 615
    invoke-virtual {v9, v11}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 616
    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 618
    invoke-virtual {v10}, Landroid/widget/CheckBox;->requestFocus()Z

    .line 619
    return-void

    .line 445
    :cond_4
    :goto_3
    return-void
.end method

.method public static promptNewPin(Landroid/app/Activity;)V
    .locals 25

    .line 622
    move-object/from16 v0, p0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 623
    :cond_0
    new-instance v5, Landroid/app/Dialog;

    const v1, 0x103000a

    invoke-direct {v5, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 624
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 628
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 629
    const-string v2, "#d9090d16"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 631
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 632
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 633
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 634
    const/16 v2, 0x30

    const/16 v3, 0x24

    invoke-virtual {v9, v2, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 636
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 637
    const-string v3, "#ee181f2c"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 638
    const/high16 v3, 0x41c00000    # 24.0f

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 639
    const-string v3, "#384860"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 640
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 642
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x26c

    const/4 v7, -0x2

    invoke-direct {v2, v3, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 643
    const/16 v10, 0x11

    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 644
    invoke-virtual {v8, v9, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 646
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 647
    const-string v3, "\ud83d\udd11 Set New 4-Digit PIN"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    const/4 v11, -0x1

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 649
    const/high16 v12, 0x41b00000    # 22.0f

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 650
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 651
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 653
    const/4 v2, 0x2

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 654
    const-string v3, "Enter your new 4 digits"

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    const-string v13, "#94a3b8"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 656
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 657
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 658
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 659
    const/16 v14, 0x8

    iput v14, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 660
    const/16 v15, 0x18

    iput v15, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 661
    invoke-virtual {v9, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 663
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 664
    const/16 v16, 0x2

    const-string v2, "\u25cb  \u25cb  \u25cb  \u25cb"

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    const-string v2, "#38bdf8"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 666
    const/high16 v2, 0x42000000    # 32.0f

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 667
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 668
    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 669
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 670
    iput v15, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 671
    invoke-virtual {v9, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 673
    new-instance v7, Landroid/widget/GridLayout;

    invoke-direct {v7, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    .line 674
    const/4 v2, 0x3

    invoke-virtual {v7, v2}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 675
    const/4 v15, 0x4

    invoke-virtual {v7, v15}, Landroid/widget/GridLayout;->setRowCount(I)V

    .line 677
    const/16 v17, 0x4

    const/16 v15, 0xc

    const/16 v18, 0x8

    new-array v14, v15, [Landroid/widget/Button;

    .line 678
    const/16 v19, 0x1

    new-array v6, v15, [Ljava/lang/String;

    const-string v20, "1"

    const/4 v10, 0x0

    aput-object v20, v6, v10

    const-string v20, "2"

    aput-object v20, v6, v19

    const-string v20, "3"

    aput-object v20, v6, v16

    const-string v16, "4"

    aput-object v16, v6, v2

    const-string v2, "5"

    aput-object v2, v6, v17

    const-string v2, "6"

    const/16 v16, 0x5

    aput-object v2, v6, v16

    const-string v2, "7"

    const/4 v10, 0x6

    aput-object v2, v6, v10

    const-string v2, "8"

    const/16 v17, 0x7

    aput-object v2, v6, v17

    const-string v2, "9"

    aput-object v2, v6, v18

    const-string v2, "Clear"

    const/16 v17, 0x9

    aput-object v2, v6, v17

    const-string v2, "0"

    const/16 v17, 0xa

    aput-object v2, v6, v17

    const-string v2, "\u232b"

    const/16 v17, 0xb

    aput-object v2, v6, v17

    .line 680
    new-instance v2, Lcom/gathin/tvhome/ChildLockManager$12;

    invoke-direct {v2, v1, v3}, Lcom/gathin/tvhome/ChildLockManager$12;-><init>(Ljava/lang/StringBuilder;Landroid/widget/TextView;)V

    .line 697
    new-instance v0, Lcom/gathin/tvhome/ChildLockManager$13;

    move-object v10, v2

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/gathin/tvhome/ChildLockManager$13;-><init>(Ljava/lang/StringBuilder;Landroid/app/Activity;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/app/Dialog;)V

    .line 714
    move-object/from16 v24, v2

    move-object v2, v0

    move-object/from16 v0, v24

    new-instance v3, Lcom/gathin/tvhome/ChildLockManager$14;

    invoke-direct {v3, v1, v10, v2}, Lcom/gathin/tvhome/ChildLockManager$14;-><init>(Ljava/lang/StringBuilder;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 736
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v15, :cond_1

    .line 737
    new-instance v15, Landroid/widget/Button;

    invoke-direct {v15, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 738
    aget-object v11, v6, v4

    invoke-virtual {v15, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 739
    invoke-virtual {v15, v12}, Landroid/widget/Button;->setTextSize(F)V

    .line 740
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v15, v11}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 741
    const/4 v11, -0x1

    invoke-virtual {v15, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 742
    const/16 v11, 0x11

    invoke-virtual {v15, v11}, Landroid/widget/Button;->setGravity(I)V

    .line 743
    const/4 v11, 0x0

    invoke-virtual {v15, v11, v11, v11, v11}, Landroid/widget/Button;->setPadding(IIII)V

    .line 744
    invoke-virtual {v15, v11}, Landroid/widget/Button;->setIncludeFontPadding(Z)V

    .line 745
    const/4 v11, 0x1

    invoke-virtual {v15, v11}, Landroid/widget/Button;->setFocusable(Z)V

    .line 747
    new-instance v11, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 748
    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 749
    const-string v21, "#0284c7"

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 750
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 752
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 753
    const-string v22, "#253248"

    move-object/from16 v23, v1

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 754
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 756
    const v1, 0x101009c

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v11, v1, v12}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 757
    const/4 v1, 0x0

    new-array v12, v1, [I

    invoke-virtual {v11, v12, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 758
    invoke-virtual {v15, v11}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 760
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 761
    const/16 v1, 0x8c

    iput v1, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 762
    const/16 v1, 0x3e

    iput v1, v0, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 763
    const/4 v1, 0x6

    const/16 v11, 0x8

    invoke-virtual {v0, v11, v1, v11, v1}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 764
    invoke-virtual {v15, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 765
    invoke-virtual {v15, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 767
    invoke-virtual {v7, v15}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 768
    aput-object v15, v14, v4

    .line 736
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    const/4 v11, -0x1

    const/high16 v12, 0x41b00000    # 22.0f

    const/16 v15, 0xc

    const/16 v18, 0x8

    const/16 v19, 0x1

    goto/16 :goto_0

    .line 771
    :cond_1
    move-object/from16 v23, v1

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 774
    nop

    .line 775
    const-string v0, "#475569"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 776
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    .line 774
    const-string v1, "Cancel"

    move-object v3, v2

    const/16 v2, 0xdc

    move-object v4, v3

    const/16 v3, 0x3c

    move-object v7, v4

    const/4 v4, 0x0

    move-object v11, v7

    const/4 v7, -0x1

    move-object v13, v11

    move-object/from16 v12, v23

    move-object v11, v5

    move v5, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v7}, Lcom/gathin/tvhome/ChildLockManager;->createStyledButton(Landroid/content/Context;Ljava/lang/String;IIIIII)Landroid/widget/Button;

    move-result-object v0

    .line 777
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 778
    const/16 v2, 0xe

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 779
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 780
    new-instance v1, Lcom/gathin/tvhome/ChildLockManager$15;

    invoke-direct {v1, v11}, Lcom/gathin/tvhome/ChildLockManager$15;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 786
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 788
    new-instance v0, Lcom/gathin/tvhome/ChildLockManager$16;

    invoke-direct {v0, v12, v10, v13, v11}, Lcom/gathin/tvhome/ChildLockManager$16;-><init>(Ljava/lang/StringBuilder;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/app/Dialog;)V

    invoke-virtual {v11, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 817
    invoke-virtual {v11, v8}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 818
    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    .line 819
    const/16 v16, 0x0

    aget-object v0, v14, v16

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 820
    return-void

    .line 622
    :cond_2
    :goto_1
    return-void
.end method

.method public static setEnabled(Landroid/content/Context;Z)V
    .locals 2

    .line 69
    if-nez p0, :cond_0

    return-void

    .line 70
    :cond_0
    const-string v0, "child_lock_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 71
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "child_lock_enabled"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    return-void
.end method

.method public static setLockSettings(Landroid/content/Context;Z)V
    .locals 2

    .line 93
    if-nez p0, :cond_0

    return-void

    .line 94
    :cond_0
    const-string v0, "child_lock_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 95
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "lock_settings"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 96
    return-void
.end method

.method public static setLockedPackages(Landroid/content/Context;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 109
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    const-string v0, "child_lock_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 111
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string p1, "locked_packages"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 112
    return-void

    .line 109
    :cond_1
    :goto_0
    return-void
.end method

.method public static setPin(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 81
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    const-string v0, "child_lock_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 83
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "child_lock_pin"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 84
    return-void

    .line 81
    :cond_1
    :goto_0
    return-void
.end method

.method public static showPinDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 20

    .line 169
    move-object/from16 v0, p0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 171
    :cond_0
    new-instance v7, Landroid/app/Dialog;

    const v1, 0x103000a

    invoke-direct {v7, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 172
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    invoke-static {v0}, Lcom/gathin/tvhome/ChildLockManager;->getPin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 177
    new-instance v10, Landroid/widget/FrameLayout;

    invoke-direct {v10, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 178
    const-string v2, "#d9090d16"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v10, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 180
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 181
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 182
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 183
    const/16 v2, 0x18

    const/16 v5, 0x1c

    const/16 v6, 0x28

    invoke-virtual {v11, v6, v2, v6, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 185
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 186
    const-string v5, "#ee181f2c"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 187
    const/high16 v5, 0x41c00000    # 24.0f

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 188
    const-string v5, "#384860"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 189
    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 191
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x244

    const/4 v8, -0x2

    invoke-direct {v2, v5, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 192
    const/16 v12, 0x11

    iput v12, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 193
    invoke-virtual {v10, v11, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 196
    move-object/from16 v5, p1

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    const/4 v13, -0x1

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 199
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 200
    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    const/4 v2, 0x2

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 203
    if-eqz p2, :cond_1

    move-object/from16 v5, p2

    goto :goto_0

    :cond_1
    const-string v5, "Enter 4-digit PIN (Default: 0000)"

    :goto_0
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    const-string v14, "#94a3b8"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    const/high16 v5, 0x41500000    # 13.0f

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 206
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 207
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 208
    const/4 v9, 0x4

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 209
    const/16 v15, 0x10

    iput v15, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 210
    invoke-virtual {v11, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 214
    const/16 p1, 0x2

    const-string v2, "\u25cb  \u25cb  \u25cb  \u25cb"

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    const-string v2, "#38bdf8"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    const/high16 v2, 0x41e00000    # 28.0f

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 217
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 218
    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 219
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 220
    iput v15, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 221
    invoke-virtual {v11, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    new-instance v15, Landroid/widget/GridLayout;

    invoke-direct {v15, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    .line 225
    const/4 v2, 0x3

    invoke-virtual {v15, v2}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 226
    invoke-virtual {v15, v9}, Landroid/widget/GridLayout;->setRowCount(I)V

    .line 227
    const/4 v8, 0x0

    invoke-virtual {v15, v8}, Landroid/widget/GridLayout;->setAlignmentMode(I)V

    .line 229
    const/16 v16, 0x1

    const/16 v1, 0xc

    new-array v12, v1, [Landroid/widget/Button;

    .line 230
    new-array v13, v1, [Ljava/lang/String;

    const-string v17, "1"

    aput-object v17, v13, v8

    const-string v17, "2"

    aput-object v17, v13, v16

    const-string v17, "3"

    aput-object v17, v13, p1

    const-string v17, "4"

    aput-object v17, v13, v2

    const-string v2, "5"

    aput-object v2, v13, v9

    const-string v2, "6"

    const/4 v9, 0x5

    aput-object v2, v13, v9

    const-string v2, "7"

    const/4 v9, 0x6

    aput-object v2, v13, v9

    const-string v2, "8"

    const/16 v17, 0x7

    aput-object v2, v13, v17

    const-string v2, "9"

    const/16 v1, 0x8

    aput-object v2, v13, v1

    const-string v2, "Clear"

    const/16 v17, 0x9

    aput-object v2, v13, v17

    const-string v2, "0"

    const/16 v17, 0xa

    aput-object v2, v13, v17

    const-string v2, "\u232b"

    const/16 v17, 0xb

    aput-object v2, v13, v17

    .line 232
    const/4 v2, 0x6

    new-instance v9, Lcom/gathin/tvhome/ChildLockManager$3;

    invoke-direct {v9, v3, v5}, Lcom/gathin/tvhome/ChildLockManager$3;-><init>(Ljava/lang/StringBuilder;Landroid/widget/TextView;)V

    .line 249
    const/16 v17, 0x6

    new-instance v2, Lcom/gathin/tvhome/ChildLockManager$4;

    move-object/from16 v8, p3

    const/4 v1, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/gathin/tvhome/ChildLockManager$4;-><init>(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/app/Dialog;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 278
    move-object v8, v3

    move-object v3, v2

    move-object v2, v9

    move-object v9, v8

    move-object v8, v7

    new-instance v4, Lcom/gathin/tvhome/ChildLockManager$5;

    invoke-direct {v4, v9, v2, v3}, Lcom/gathin/tvhome/ChildLockManager$5;-><init>(Ljava/lang/StringBuilder;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 300
    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0xc

    if-ge v5, v6, :cond_2

    .line 301
    new-instance v7, Landroid/widget/Button;

    invoke-direct {v7, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 302
    aget-object v6, v13, v5

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 303
    const/high16 v6, 0x41b00000    # 22.0f

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setTextSize(F)V

    .line 304
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 305
    const/4 v6, -0x1

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 306
    const/16 v6, 0x11

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setGravity(I)V

    .line 307
    invoke-virtual {v7, v1, v1, v1, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 308
    invoke-virtual {v7, v1}, Landroid/widget/Button;->setIncludeFontPadding(Z)V

    .line 309
    const/4 v6, 0x1

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setFocusable(Z)V

    .line 311
    new-instance v6, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 312
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 313
    const-string v18, "#0284c7"

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 314
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 316
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 317
    const-string v18, "#253248"

    move-object/from16 v19, v2

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 318
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 320
    const v2, 0x101009c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v6, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 321
    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-virtual {v6, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 322
    invoke-virtual {v7, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 324
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 325
    const/16 v2, 0x8c

    iput v2, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 326
    const/16 v2, 0x3e

    iput v2, v0, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 327
    const/16 v2, 0x8

    const/4 v6, 0x6

    invoke-virtual {v0, v2, v6, v2, v6}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 328
    invoke-virtual {v7, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    invoke-virtual {v7, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    invoke-virtual {v15, v7}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 332
    aput-object v7, v12, v5

    .line 300
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v19

    const/16 v16, 0x1

    goto/16 :goto_1

    .line 335
    :cond_2
    move-object/from16 v19, v2

    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 338
    nop

    .line 339
    const-string v0, "#475569"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 340
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    .line 338
    const/16 v17, 0x0

    const-string v1, "Cancel"

    const/16 v2, 0xdc

    move-object v0, v3

    const/16 v3, 0x3c

    const/4 v4, 0x0

    const/4 v7, -0x1

    move-object v14, v0

    move-object/from16 v13, v19

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v7}, Lcom/gathin/tvhome/ChildLockManager;->createStyledButton(Landroid/content/Context;Ljava/lang/String;IIIIII)Landroid/widget/Button;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 342
    const/16 v2, 0xe

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 343
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    new-instance v1, Lcom/gathin/tvhome/ChildLockManager$6;

    invoke-direct {v1, v8}, Lcom/gathin/tvhome/ChildLockManager$6;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 353
    new-instance v0, Lcom/gathin/tvhome/ChildLockManager$7;

    invoke-direct {v0, v9, v13, v14, v8}, Lcom/gathin/tvhome/ChildLockManager$7;-><init>(Ljava/lang/StringBuilder;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/app/Dialog;)V

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 382
    invoke-virtual {v8, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 383
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 386
    aget-object v0, v12, v17

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 387
    return-void

    .line 169
    :cond_3
    :goto_2
    return-void
.end method
