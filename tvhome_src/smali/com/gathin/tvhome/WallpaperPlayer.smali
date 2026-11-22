.class public final Lcom/gathin/tvhome/WallpaperPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public active:Z

.field public final backgroundColor:I

.field public final bitmapConfig:Landroid/graphics/Bitmap$Config;

.field public final caption:Landroid/widget/TextView;

.field public closed:Z

.field public current:Landroid/graphics/Bitmap;

.field public final decoder:Ljava/util/concurrent/ExecutorService;

.field public final dimColor:I

.field public displayed:Ljava/lang/String;

.field public final files:Ljava/util/ArrayList;

.field public final height:I

.field public final image:Landroid/widget/ImageView;

.field public final interval:J

.field public final latitude:Ljava/lang/String;

.field public loading:Z

.field public final longitude:Ljava/lang/String;

.field public final moods:Ljava/util/Map;

.field public final names:Ljava/util/Map;

.field public final order:Ljava/lang/String;

.field public final preferences:Landroid/content/SharedPreferences;

.field public final random:Ljava/util/Random;

.field public final root:Landroid/widget/FrameLayout;

.field public sun:[I

.field public sunDay:Ljava/time/LocalDate;

.field public final width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/gathin/tvhome/Config;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/gathin/tvhome/WallpaperPlayer;->decoder:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/gathin/tvhome/WallpaperPlayer;->random:Ljava/util/Random;

    const-string v0, ""

    iput-object v0, p0, Lcom/gathin/tvhome/WallpaperPlayer;->displayed:Ljava/lang/String;

    iput-object p2, p0, Lcom/gathin/tvhome/WallpaperPlayer;->root:Landroid/widget/FrameLayout;

    iget v1, p3, Lcom/gathin/tvhome/Config;->backgroundColor:I

    iput v1, p0, Lcom/gathin/tvhome/WallpaperPlayer;->backgroundColor:I

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p3, Lcom/gathin/tvhome/Config;->wallpapers:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/gathin/tvhome/WallpaperPlayer;->files:Ljava/util/ArrayList;

    iget v2, p3, Lcom/gathin/tvhome/Config;->wallpaperRotationMinutes:I

    int-to-long v2, v2

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/gathin/tvhome/WallpaperPlayer;->interval:J

    iget-boolean v2, p3, Lcom/gathin/tvhome/Config;->wallpaperTrueColor:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    iput-object v2, p0, Lcom/gathin/tvhome/WallpaperPlayer;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    iget v3, p3, Lcom/gathin/tvhome/Config;->wallpaperDim:I

    if-lez v3, :cond_1

    mul-int/lit16 v3, v3, 0xff

    div-int/lit8 v3, v3, 0x64

    shl-int/lit8 v3, v3, 0x18

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iput v3, p0, Lcom/gathin/tvhome/WallpaperPlayer;->dimColor:I

    iget-object v3, p3, Lcom/gathin/tvhome/Config;->wallpaperOrder:Ljava/lang/String;

    iput-object v3, p0, Lcom/gathin/tvhome/WallpaperPlayer;->order:Ljava/lang/String;

    const-string v3, "wallpaper_rotation"

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/gathin/tvhome/WallpaperPlayer;->preferences:Landroid/content/SharedPreferences;

    iget-object v3, p3, Lcom/gathin/tvhome/Config;->wallpaperMoods:Ljava/util/Map;

    iput-object v3, p0, Lcom/gathin/tvhome/WallpaperPlayer;->moods:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    goto :goto_2

    :cond_2
    const v4, 0x7f10003f

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    iput-object v4, p0, Lcom/gathin/tvhome/WallpaperPlayer;->latitude:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v0

    goto :goto_3

    :cond_3
    const v3, 0x7f10004f

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    iput-object v3, p0, Lcom/gathin/tvhome/WallpaperPlayer;->longitude:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3a

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/gathin/tvhome/WallpaperPlayer;->preferences:Landroid/content/SharedPreferences;

    const-string v4, "collection"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "changed"

    const-string v6, "image"

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/gathin/tvhome/WallpaperPlayer;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/gathin/tvhome/WallpaperPlayer;->width:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/gathin/tvhome/WallpaperPlayer;->height:I

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gathin/tvhome/WallpaperPlayer;->image:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-boolean v1, p3, Lcom/gathin/tvhome/Config;->wallpaperCaptions:Z

    const/4 v4, 0x0

    iget-boolean p3, p3, Lcom/gathin/tvhome/Config;->wallpaperEnabled:Z

    if-eqz v1, :cond_9

    if-eqz p3, :cond_9

    iget-object v1, p0, Lcom/gathin/tvhome/WallpaperPlayer;->files:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/gathin/tvhome/WallpaperPlayer;->files:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_6

    move-object v7, v4

    goto :goto_5

    :cond_6
    new-instance v7, Ljava/io/File;

    const-string v8, "captions.txt"

    invoke-direct {v7, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_5
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x40000

    cmp-long v1, v8, v10

    if-lez v1, :cond_7

    goto :goto_6

    :cond_7
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, v7}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/gathin/tvhome/Sky;->parse(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_7

    :cond_8
    :goto_6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_7

    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    :goto_7
    iput-object v1, p0, Lcom/gathin/tvhome/WallpaperPlayer;->names:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v7, v4

    goto :goto_8

    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v7, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const v3, -0x26000001

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v3, v1

    const/high16 v8, -0x34000000    # -3.3554432E7f

    const/4 v9, 0x0

    invoke-virtual {v7, v3, v9, v1, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 v3, 0x44020000    # 520.0f

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-virtual {v7, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setAlpha(F)V

    const v3, 0x7f10002d

    :try_start_1
    invoke-static {p1, v3}, Lcom/gathin/tvhome/Sky;->get(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const v3, 0x800035

    const/4 v8, -0x2

    invoke-direct {p1, v8, v8, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v3, 0x42dc0000    # 110.0f

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/high16 v3, 0x42780000    # 62.0f

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :goto_8
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/gathin/tvhome/WallpaperPlayer;->caption:Landroid/widget/TextView;

    if-eqz p3, :cond_d

    iget-object p1, p0, Lcom/gathin/tvhome/WallpaperPlayer;->files:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/gathin/tvhome/WallpaperPlayer;->image:Landroid/widget/ImageView;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, v2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/gathin/tvhome/WallpaperPlayer;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/gathin/tvhome/WallpaperPlayer;->playable()Ljava/util/List;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/gathin/tvhome/Sky;->find(Ljava/util/List;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/gathin/tvhome/WallpaperPlayer;->random:Ljava/util/Random;

    iget-object v3, p0, Lcom/gathin/tvhome/WallpaperPlayer;->order:Ljava/lang/String;

    if-nez v0, :cond_b

    invoke-static {p3, p2, v3, v1}, Lcom/gathin/tvhome/Sky;->pick(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Random;)Ljava/io/File;

    move-result-object v0

    :cond_b
    :goto_9
    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lcom/gathin/tvhome/WallpaperPlayer;->decode(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_c

    invoke-virtual {p0, p3}, Lcom/gathin/tvhome/WallpaperPlayer;->show(Landroid/graphics/Bitmap;)V

    iget-object p3, p0, Lcom/gathin/tvhome/WallpaperPlayer;->root:Landroid/widget/FrameLayout;

    invoke-virtual {p3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/gathin/tvhome/WallpaperPlayer;->displayed:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/gathin/tvhome/WallpaperPlayer;->showCaption(Z)V

    iget-object p3, p0, Lcom/gathin/tvhome/WallpaperPlayer;->displayed:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/gathin/tvhome/WallpaperPlayer;->displayed:Ljava/lang/String;

    invoke-interface {p1, v6, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-interface {p1, v5, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_a

    :cond_c
    iget-object p3, p0, Lcom/gathin/tvhome/WallpaperPlayer;->files:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/gathin/tvhome/WallpaperPlayer;->playable()Ljava/util/List;

    move-result-object p3

    invoke-static {p3, p2, v3, v1}, Lcom/gathin/tvhome/Sky;->pick(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Random;)Ljava/io/File;

    move-result-object v0

    goto :goto_9

    :cond_d
    :goto_a
    return-void
.end method


# virtual methods
.method public final decode(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_9

    if-gtz v4, :cond_0

    goto/16 :goto_3

    :cond_0
    move v5, v2

    :goto_0
    mul-int/lit8 v6, v5, 0x2

    div-int v7, v3, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    iget v8, p0, Lcom/gathin/tvhome/WallpaperPlayer;->height:I

    iget v9, p0, Lcom/gathin/tvhome/WallpaperPlayer;->width:I

    if-lt v7, v9, :cond_1

    :try_start_1
    div-int v7, v4, v6

    if-lt v7, v8, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    div-int v6, v3, v5

    div-int v7, v4, v5

    const/4 v10, 0x0

    if-lez v6, :cond_2

    if-lez v7, :cond_2

    int-to-long v11, v6

    int-to-long v6, v7

    mul-long/2addr v11, v6

    const-wide/32 v6, 0x802c80

    cmp-long v6, v11, v6

    if-gtz v6, :cond_2

    move v6, v2

    goto :goto_1

    :cond_2
    move v6, v10

    :goto_1
    if-nez v6, :cond_3

    return-object v0

    :cond_3
    iput-boolean v10, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v3, v5

    div-int/2addr v4, v5

    invoke-static {v3, v4, v9, v8}, Lcom/gathin/tvhome/Sky;->coverScale(IIII)[I

    move-result-object v3

    if-eqz v3, :cond_4

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    aget v4, v3, v10

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    aget v3, v3, v2

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    :cond_4
    iget-object v3, p0, Lcom/gathin/tvhome/WallpaperPlayer;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    iget v3, p0, Lcom/gathin/tvhome/WallpaperPlayer;->dimColor:I

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move v2, v10

    :goto_2
    :try_start_2
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_6

    return-object v0

    :cond_6
    if-eqz v3, :cond_7

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_7
    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_8

    return-object p1

    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    :cond_9
    :goto_3
    return-object v0
.end method

.method public final playable()Ljava/util/List;
    .locals 15

    iget-object v0, p0, Lcom/gathin/tvhome/WallpaperPlayer;->moods:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Lcom/gathin/tvhome/WallpaperPlayer;->files:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v3

    iget-object v4, p0, Lcom/gathin/tvhome/WallpaperPlayer;->sunDay:Ljava/time/LocalDate;

    invoke-virtual {v3, v4}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_3

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v6

    iput-object v6, p0, Lcom/gathin/tvhome/WallpaperPlayer;->sunDay:Ljava/time/LocalDate;

    iget-object v3, p0, Lcom/gathin/tvhome/WallpaperPlayer;->latitude:Ljava/lang/String;

    iget-object v7, p0, Lcom/gathin/tvhome/WallpaperPlayer;->longitude:Ljava/lang/String;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v11

    const/4 v12, 0x0

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    move-wide v7, v8

    move-wide v9, v13

    invoke-static/range {v6 .. v11}, Lcom/gathin/tvhome/Sky;->riseAndSet(Ljava/time/LocalDate;DDLjava/time/ZoneId;)[I

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    if-eqz v12, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    new-array v12, v3, [I

    const/16 v3, 0x1a4

    aput v3, v12, v5

    const/16 v3, 0x456

    aput v3, v12, v4

    :goto_0
    iput-object v12, p0, Lcom/gathin/tvhome/WallpaperPlayer;->sun:[I

    :cond_3
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getHour()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v1

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/gathin/tvhome/WallpaperPlayer;->sun:[I

    aget v5, v3, v5

    aget v3, v3, v4

    const/16 v4, 0x2d0

    if-lt v1, v5, :cond_4

    if-ge v1, v4, :cond_4

    const-string v1, "morning"

    goto :goto_1

    :cond_4
    if-lt v1, v4, :cond_5

    add-int/lit8 v3, v3, 0x1e

    if-ge v1, v3, :cond_5

    const-string v1, "evening"

    goto :goto_1

    :cond_5
    const-string v1, "night"

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    move-object v2, v1

    :goto_3
    return-object v2
.end method

.method public final show(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lcom/gathin/tvhome/WallpaperPlayer;->current:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/gathin/tvhome/WallpaperPlayer;->current:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/gathin/tvhome/WallpaperPlayer;->root:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/gathin/tvhome/WallpaperPlayer;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    new-instance p1, Lcom/gathin/tvhome/SleepTimer$$ExternalSyntheticLambda0;

    const/16 v2, 0x8

    invoke-direct {p1, v0, v2}, Lcom/gathin/tvhome/SleepTimer$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final showCaption(Z)V
    .locals 4

    iget-object v0, p0, Lcom/gathin/tvhome/WallpaperPlayer;->caption:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/gathin/tvhome/WallpaperPlayer;->names:Ljava/util/Map;

    iget-object v2, p0, Lcom/gathin/tvhome/WallpaperPlayer;->displayed:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, v2

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0xfa

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda41;

    const/4 v2, 0x6

    invoke-direct {v0, p0, v1, v2}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda41;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final update()V
    .locals 13

    iget-boolean v0, p0, Lcom/gathin/tvhome/WallpaperPlayer;->active:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/gathin/tvhome/WallpaperPlayer;->closed:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/gathin/tvhome/WallpaperPlayer;->loading:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/gathin/tvhome/WallpaperPlayer;->files:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/gathin/tvhome/WallpaperPlayer;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "image"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/gathin/tvhome/WallpaperPlayer;->playable()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/gathin/tvhome/Sky;->find(Ljava/util/List;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "changed"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/gathin/tvhome/WallpaperPlayer;->interval:J

    cmp-long v0, v11, v4

    if-lez v0, :cond_1

    cmp-long v0, v7, v4

    if-eqz v0, :cond_2

    cmp-long v0, v9, v7

    if-ltz v0, :cond_2

    sub-long/2addr v9, v7

    cmp-long v0, v9, v11

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, v2

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/gathin/tvhome/WallpaperPlayer;->random:Ljava/util/Random;

    iget-object v2, p0, Lcom/gathin/tvhome/WallpaperPlayer;->order:Ljava/lang/String;

    invoke-static {v1, v6, v2, v0}, Lcom/gathin/tvhome/Sky;->pick(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Random;)Ljava/io/File;

    move-result-object v0

    move-object v5, v0

    :goto_1
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gathin/tvhome/WallpaperPlayer;->displayed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gathin/tvhome/WallpaperPlayer;->loading:Z

    new-instance v0, Lcom/gathin/tvhome/WallpaperPlayer$$ExternalSyntheticLambda2;

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/gathin/tvhome/WallpaperPlayer$$ExternalSyntheticLambda2;-><init>(Lcom/gathin/tvhome/WallpaperPlayer;Ljava/io/File;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/gathin/tvhome/WallpaperPlayer;->decoder:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    :goto_2
    return-void
.end method
