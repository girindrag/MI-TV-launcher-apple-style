.class public Lcom/gathin/tvhome/AppCategoryManager;
.super Ljava/lang/Object;
.source "AppCategoryManager.java"


# static fields
.field public static final CAT_ALL:I = 0x0

.field public static final CAT_MUSIC:I = 0x3

.field public static final CAT_SPORTS:I = 0x2

.field public static final CAT_STREAMING:I = 0x1

.field public static final CAT_TOOLS:I = 0x4

.field private static final KEY_HIDDEN_APPS:Ljava/lang/String; = "hidden_packages"

.field private static final KEY_PINNED_APPS:Ljava/lang/String; = "pinned_packages"

.field private static final PREFS_NAME:Ljava/lang/String; = "app_management_prefs"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createActionRow(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Button;
    .locals 6

    .line 202
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 203
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 204
    const/high16 p0, 0x41800000    # 16.0f

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTextSize(F)V

    .line 205
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 206
    const/16 p0, 0x11

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setGravity(I)V

    .line 207
    const/16 p0, 0x14

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1, p0, p1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 208
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setIncludeFontPadding(Z)V

    .line 209
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 210
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setFocusable(Z)V

    .line 212
    new-instance p0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 213
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 214
    const-string v2, "#0284c7"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 215
    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 216
    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 218
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 219
    const-string v5, "#1e293b"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 220
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 221
    const-string v2, "#384860"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 223
    const v2, 0x101009c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 224
    new-array p1, p1, [I

    invoke-virtual {p0, p1, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 225
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 226
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 228
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 p1, 0x40

    invoke-direct {p0, v4, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 229
    const/16 p1, 0xa

    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 230
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    return-object v0
.end method

.method public static getHiddenPackages(Landroid/content/Context;)Ljava/util/Set;
    .locals 3
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

    .line 42
    const-string v0, "app_management_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 43
    new-instance v0, Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "hidden_packages"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getPinnedPackages(Landroid/content/Context;)Ljava/util/Set;
    .locals 3
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

    .line 55
    const-string v0, "app_management_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 56
    new-instance v0, Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "pinned_packages"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static setHidden(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    .line 47
    const-string v0, "app_management_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 48
    new-instance v0, Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "hidden_packages"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 49
    if-eqz p2, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 51
    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    return-void
.end method

.method public static setPinned(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    .line 60
    const-string v0, "app_management_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 61
    new-instance v0, Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "pinned_packages"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 62
    if-eqz p2, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 64
    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 65
    return-void
.end method

.method public static showAppContextMenu(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 12

    .line 68
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 70
    :cond_0
    new-instance v6, Landroid/app/Dialog;

    const v0, 0x103000a

    invoke-direct {v6, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 73
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    const-string v1, "#d9090d16"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 76
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 78
    const/16 v0, 0x30

    const/16 v1, 0x24

    invoke-virtual {v9, v0, v1, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 80
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 81
    const-string v1, "#ee181f2c"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 82
    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 83
    const-string v1, "#384860"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 84
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x2a8

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 87
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 88
    invoke-virtual {v8, v9, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    const/high16 v4, 0x41b00000    # 22.0f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 94
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 96
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const-string v4, "#94a3b8"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 103
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 104
    const/4 v2, 0x4

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 105
    const/16 v2, 0x14

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 106
    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    invoke-static {p0}, Lcom/gathin/tvhome/AppCategoryManager;->getPinnedPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 109
    invoke-static {p0}, Lcom/gathin/tvhome/ChildLockManager;->getLockedPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 110
    invoke-static {p0}, Lcom/gathin/tvhome/AppCategoryManager;->getHiddenPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    .line 113
    if-eqz v4, :cond_1

    const-string v1, "\ud83d\udccc Unpin from Front"

    goto :goto_0

    :cond_1
    const-string v1, "\ud83d\udccc Pin to Front Dock"

    :goto_0
    invoke-static {p0, v1}, Lcom/gathin/tvhome/AppCategoryManager;->createActionRow(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v11

    .line 114
    new-instance v1, Lcom/gathin/tvhome/AppCategoryManager$1;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/gathin/tvhome/AppCategoryManager$1;-><init>(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;Landroid/app/Dialog;Ljava/lang/Runnable;)V

    invoke-virtual {v11, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    if-eqz v0, :cond_2

    const-string p0, "\ud83d\udd13 Unlock App (Remove PIN)"

    goto :goto_1

    :cond_2
    const-string p0, "\ud83d\udd12 Lock App with PIN"

    :goto_1
    invoke-static {v2, p0}, Lcom/gathin/tvhome/AppCategoryManager;->createActionRow(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object p0

    .line 127
    new-instance v1, Lcom/gathin/tvhome/AppCategoryManager$2;

    move-object v4, v3

    move v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/gathin/tvhome/AppCategoryManager$2;-><init>(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;Landroid/app/Dialog;Ljava/lang/Runnable;)V

    move-object v3, v4

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {v9, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    if-eqz v10, :cond_3

    const-string p0, "\ud83d\udc41\ufe0f Unhide from Dock"

    goto :goto_2

    :cond_3
    const-string p0, "\ud83d\udc41\ufe0f Hide from TV Dock"

    :goto_2
    invoke-static {v2, p0}, Lcom/gathin/tvhome/AppCategoryManager;->createActionRow(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object p0

    .line 143
    new-instance v1, Lcom/gathin/tvhome/AppCategoryManager$3;

    move v4, v10

    invoke-direct/range {v1 .. v7}, Lcom/gathin/tvhome/AppCategoryManager$3;-><init>(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;Landroid/app/Dialog;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {v9, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    const-string p0, "\u2699\ufe0f App Info & Settings"

    invoke-static {v2, p0}, Lcom/gathin/tvhome/AppCategoryManager;->createActionRow(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object p0

    .line 156
    new-instance p1, Lcom/gathin/tvhome/AppCategoryManager$4;

    invoke-direct {p1, v6, v3, v2}, Lcom/gathin/tvhome/AppCategoryManager$4;-><init>(Landroid/app/Dialog;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    invoke-virtual {v9, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    const-string p0, "Cancel"

    invoke-static {v2, p0}, Lcom/gathin/tvhome/AppCategoryManager;->createActionRow(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object p0

    .line 173
    new-instance p1, Lcom/gathin/tvhome/AppCategoryManager$5;

    invoke-direct {p1, v6}, Lcom/gathin/tvhome/AppCategoryManager$5;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-virtual {p0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 180
    const/16 p2, 0x10

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 181
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    invoke-virtual {v9, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 184
    new-instance p0, Lcom/gathin/tvhome/AppCategoryManager$6;

    invoke-direct {p0, v6}, Lcom/gathin/tvhome/AppCategoryManager$6;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v6, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 195
    invoke-virtual {v6, v8}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 196
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 198
    invoke-virtual {v11}, Landroid/widget/Button;->requestFocus()Z

    .line 199
    return-void

    .line 68
    :cond_4
    :goto_3
    return-void
.end method
