.class public Lcom/gathin/tvhome/WatchNextManager;
.super Ljava/lang/Object;
.source "WatchNextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gathin/tvhome/WatchNextManager$WatchItem;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Lcom/gathin/tvhome/WatchNextManager$WatchItem;)V
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lcom/gathin/tvhome/WatchNextManager;->launchItem(Landroid/app/Activity;Lcom/gathin/tvhome/WatchNextManager$WatchItem;)V

    return-void
.end method

.method public static getWatchNextItems(Landroid/content/Context;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/gathin/tvhome/WatchNextManager$WatchItem;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    :try_start_0
    const-string v0, "content://android.media.tv/watch_next_program"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_8

    .line 56
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_7

    .line 57
    const-string v2, "title"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 58
    const-string v4, "episode_title"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 59
    const-string v5, "last_playback_position_millis"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 60
    const-string v6, "duration_millis"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 61
    const-string v7, "package_name"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 62
    const-string v8, "intent_uri"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    const-string v9, ""

    const/4 v10, -0x1

    if-eq v2, v10, :cond_0

    :try_start_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    goto :goto_1

    :cond_0
    move-object v12, v9

    .line 65
    :goto_1
    if-eq v4, v10, :cond_1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    move-object v2, v9

    .line 66
    :goto_2
    if-eq v7, v10, :cond_2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v14, v4

    goto :goto_3

    :cond_2
    move-object v14, v9

    .line 67
    :goto_3
    if-eq v8, v10, :cond_3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_3
    move-object/from16 v17, v9

    .line 69
    nop

    .line 70
    if-eq v5, v10, :cond_4

    if-eq v6, v10, :cond_4

    .line 71
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 72
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 73
    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_4

    const-wide/16 v8, 0x64

    mul-long v4, v4, v8

    div-long/2addr v4, v6

    long-to-int v5, v4

    goto :goto_4

    .line 75
    :cond_4
    const/16 v5, 0x32

    :goto_4
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 76
    new-instance v11, Lcom/gathin/tvhome/WatchNextManager$WatchItem;

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    const-string v2, "Episode In Progress"

    :goto_5
    move-object v13, v2

    const/16 v2, 0x5f

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v16, v14

    invoke-direct/range {v11 .. v17}, Lcom/gathin/tvhome/WatchNextManager$WatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_6
    goto/16 :goto_0

    .line 79
    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 81
    :catchall_0
    move-exception v0

    :cond_8
    :goto_6
    nop

    .line 84
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_9

    .line 85
    new-instance v3, Lcom/gathin/tvhome/WatchNextManager$WatchItem;

    const-string v8, "com.sonyliv"

    const/4 v9, 0x0

    const-string v4, "India A vs Pakistan Shaheens"

    const-string v5, "Live Match Highlights \u00b7 Final Over"

    const-string v6, "Sony LIV"

    const/16 v7, 0x4b

    invoke-direct/range {v3 .. v9}, Lcom/gathin/tvhome/WatchNextManager$WatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v4, Lcom/gathin/tvhome/WatchNextManager$WatchItem;

    const-string v9, "com.apple.atve.androidtv.appletv"

    const/4 v10, 0x0

    const-string v5, "Slow Horses"

    const-string v6, "Season 4 Episode 4 \u00b7 Grave Danger"

    const-string v7, "Apple TV"

    const/16 v8, 0x2d

    invoke-direct/range {v4 .. v10}, Lcom/gathin/tvhome/WatchNextManager$WatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v5, Lcom/gathin/tvhome/WatchNextManager$WatchItem;

    const-string v10, "in.startv.hotstar"

    const/4 v11, 0x0

    const-string v6, "ICC Champions Trophy"

    const-string v7, "Top 10 Classic Clashes"

    const-string v8, "JioHotstar"

    const/16 v9, 0x55

    invoke-direct/range {v5 .. v11}, Lcom/gathin/tvhome/WatchNextManager$WatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v6, Lcom/gathin/tvhome/WatchNextManager$WatchItem;

    const-string v11, "com.netflix.ninja"

    const/4 v12, 0x0

    const-string v7, "Squid Game"

    const-string v8, "Season 2 Episode 2 \u00b7 Red Light"

    const-string v9, "Netflix"

    const/16 v10, 0x1e

    invoke-direct/range {v6 .. v12}, Lcom/gathin/tvhome/WatchNextManager$WatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v7, Lcom/gathin/tvhome/WatchNextManager$WatchItem;

    const-string v12, "com.sonyliv"

    const/4 v13, 0x0

    const-string v8, "Gullak"

    const-string v9, "Season 4 Episode 5 \u00b7 Parivaar"

    const-string v10, "Sony LIV"

    const/16 v11, 0x3c

    invoke-direct/range {v7 .. v13}, Lcom/gathin/tvhome/WatchNextManager$WatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_9
    return-object v1
.end method

.method private static launchItem(Landroid/app/Activity;Lcom/gathin/tvhome/WatchNextManager$WatchItem;)V
    .locals 3

    .line 279
    :try_start_0
    iget-object v0, p1, Lcom/gathin/tvhome/WatchNextManager$WatchItem;->intentUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/gathin/tvhome/WatchNextManager$WatchItem;->intentUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p1, Lcom/gathin/tvhome/WatchNextManager$WatchItem;->intentUri:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 281
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    return-void

    .line 284
    :catchall_0
    move-exception v0

    :cond_0
    nop

    .line 287
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 288
    iget-object v2, p1, Lcom/gathin/tvhome/WatchNextManager$WatchItem;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 289
    if-nez v2, :cond_1

    .line 290
    iget-object v2, p1, Lcom/gathin/tvhome/WatchNextManager$WatchItem;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 292
    :cond_1
    if-eqz v2, :cond_2

    .line 293
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 295
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/gathin/tvhome/WatchNextManager$WatchItem;->platform:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 299
    :goto_0
    goto :goto_1

    .line 297
    :catchall_1
    move-exception v1

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/gathin/tvhome/WatchNextManager$WatchItem;->platform:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 300
    :goto_1
    return-void
.end method

.method public static showWatchNextHub(Landroid/app/Activity;)V
    .locals 22

    .line 96
    move-object/from16 v0, p0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 98
    :cond_0
    new-instance v1, Landroid/app/Dialog;

    const v2, 0x103000a

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 99
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 101
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 102
    const-string v4, "#d9090d16"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 104
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 106
    const/16 v5, 0x30

    const/16 v6, 0x24

    invoke-virtual {v4, v5, v6, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 108
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 109
    const-string v6, "#ee181f2c"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 110
    const/high16 v6, 0x41c00000    # 24.0f

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 111
    const-string v6, "#384860"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v5, v7, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 112
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 114
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x3c0

    const/4 v8, -0x2

    invoke-direct {v5, v6, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 115
    const/16 v6, 0x11

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 116
    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 119
    const-string v9, "\ud83c\udfac Universal Up Next & Continue Watching"

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    const/4 v9, -0x1

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    const/high16 v10, 0x41b00000    # 22.0f

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 122
    sget-object v10, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 123
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 124
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 127
    const-string v10, "Resume playback across all installed streaming platforms with 1 click"

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    const-string v10, "#94a3b8"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    const/high16 v11, 0x41600000    # 14.0f

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 130
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 131
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 132
    const/4 v13, 0x4

    iput v13, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 133
    const/16 v14, 0x14

    iput v14, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 134
    invoke-virtual {v4, v5, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    new-instance v5, Landroid/widget/HorizontalScrollView;

    invoke-direct {v5, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 137
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 138
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 140
    invoke-static {v0}, Lcom/gathin/tvhome/WatchNextManager;->getWatchNextItems(Landroid/content/Context;)Ljava/util/List;

    move-result-object v11

    .line 141
    nop

    .line 143
    const/4 v6, 0x0

    const/16 v16, 0x0

    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    const v18, 0x101009c

    const-string v19, "#334155"

    const/high16 v15, 0x41800000    # 16.0f

    if-ge v6, v13, :cond_3

    .line 144
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/gathin/tvhome/WatchNextManager$WatchItem;

    .line 145
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 146
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 147
    const/16 v8, 0x18

    invoke-virtual {v7, v8, v14, v8, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 148
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 150
    new-instance v8, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 151
    new-instance v14, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v14}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 152
    const-string v21, "#0284c7"

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 153
    invoke-virtual {v14, v15}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 154
    const/4 v2, 0x3

    invoke-virtual {v14, v2, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 156
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 157
    const-string v20, "#1e293b"

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 158
    invoke-virtual {v2, v15}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 159
    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    const/4 v15, 0x2

    invoke-virtual {v2, v15, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 161
    filled-new-array/range {v18 .. v18}, [I

    move-result-object v9

    invoke-virtual {v8, v9, v14}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 162
    const/4 v9, 0x0

    new-array v14, v9, [I

    invoke-virtual {v8, v14, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 163
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 165
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x118

    const/16 v9, 0xe6

    invoke-direct {v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 166
    if-lez v6, :cond_1

    const/16 v8, 0x10

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 167
    :cond_1
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 170
    iget-object v8, v13, Lcom/gathin/tvhome/WatchNextManager$WatchItem;->platform:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    const-string v8, "#38bdf8"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 173
    sget-object v8, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 174
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 177
    iget-object v8, v13, Lcom/gathin/tvhome/WatchNextManager$WatchItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    const/4 v8, -0x1

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    const/high16 v9, 0x41880000    # 17.0f

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 180
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 181
    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 182
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    invoke-direct {v9, v8, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 183
    const/16 v8, 0x8

    iput v8, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 184
    invoke-virtual {v7, v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 187
    iget-object v8, v13, Lcom/gathin/tvhome/WatchNextManager$WatchItem;->subtitle:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    const-string v8, "#cbd5e1"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    const/high16 v8, 0x41500000    # 13.0f

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 190
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 191
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, -0x1

    invoke-direct {v8, v15, v14, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 192
    const/4 v9, 0x4

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 193
    invoke-virtual {v7, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    new-instance v2, Landroid/widget/ProgressBar;

    const v8, 0x1010078

    const/4 v9, 0x0

    invoke-direct {v2, v0, v9, v8}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 197
    const/16 v8, 0x64

    invoke-virtual {v2, v8}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 198
    iget v8, v13, Lcom/gathin/tvhome/WatchNextManager$WatchItem;->progress:I

    invoke-virtual {v2, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 199
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v14, 0xa

    const/4 v15, -0x1

    invoke-direct {v8, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 200
    const/16 v14, 0xc

    iput v14, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 201
    invoke-virtual {v7, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 204
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v13, Lcom/gathin/tvhome/WatchNextManager$WatchItem;->progress:I

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, "% completed"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    const/high16 v8, 0x41300000    # 11.0f

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 207
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x1

    invoke-direct {v8, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 208
    const/4 v15, 0x4

    iput v15, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 209
    invoke-virtual {v7, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    new-instance v2, Lcom/gathin/tvhome/WatchNextManager$1;

    invoke-direct {v2, v1, v0, v13}, Lcom/gathin/tvhome/WatchNextManager$1;-><init>(Landroid/app/Dialog;Landroid/app/Activity;Lcom/gathin/tvhome/WatchNextManager$WatchItem;)V

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    invoke-virtual {v12, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 220
    if-nez v16, :cond_2

    move-object/from16 v16, v7

    .line 143
    :cond_2
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x1

    const/4 v7, 0x2

    const/4 v8, -0x2

    const/4 v9, -0x1

    const/4 v13, 0x4

    const/16 v14, 0x14

    const/4 v15, 0x0

    goto/16 :goto_0

    .line 223
    :cond_3
    invoke-virtual {v5, v12}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 224
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 228
    const-string v0, "Close"

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 229
    invoke-virtual {v2, v15}, Landroid/widget/Button;->setTextSize(F)V

    .line 230
    const/4 v15, -0x1

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setTextColor(I)V

    .line 231
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 232
    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setGravity(I)V

    .line 233
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setFocusable(Z)V

    .line 235
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 236
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 237
    const-string v6, "#475569"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 238
    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 239
    const/4 v8, 0x3

    const/4 v15, -0x1

    invoke-virtual {v5, v8, v15}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 240
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 241
    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 242
    invoke-virtual {v8, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 243
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v15, 0x2

    invoke-virtual {v8, v15, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 244
    filled-new-array/range {v18 .. v18}, [I

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 245
    const/4 v9, 0x0

    new-array v5, v9, [I

    invoke-virtual {v0, v5, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 246
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 248
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0xc8

    const/16 v6, 0x44

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 249
    const/16 v5, 0x16

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 250
    const/4 v8, 0x1

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 251
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    new-instance v0, Lcom/gathin/tvhome/WatchNextManager$2;

    invoke-direct {v0, v1}, Lcom/gathin/tvhome/WatchNextManager$2;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 260
    new-instance v0, Lcom/gathin/tvhome/WatchNextManager$3;

    invoke-direct {v0, v1}, Lcom/gathin/tvhome/WatchNextManager$3;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 271
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 272
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 274
    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    .line 275
    :cond_4
    return-void

    .line 96
    :cond_5
    :goto_1
    return-void
.end method
