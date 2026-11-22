.class public final Lcom/gathin/tvhome/ClockScene;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PALETTE:[I


# instance fields
.field public final ambient:Landroid/view/View;

.field public colorIndex:I

.field public final content:Landroid/view/View;

.field public final glow:Landroid/graphics/drawable/GradientDrawable;

.field public glowColor:I

.field public final handler:Landroid/os/Handler;

.field public final random:Ljava/util/Random;

.field public final tick:Lcom/gathin/tvhome/ClockScene$1;

.field public wallpaperFile:Ljava/io/File;

.field public wallpaperGeneration:I

.field public wallpaperRes:Landroid/content/res/Resources;

.field public wallpaperShade:I

.field public wallpaperShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, -0x1f99e5

    const v1, -0x29cc94

    const v2, -0xd4a301

    const v3, -0xff5c66

    const v4, -0x75c004

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/gathin/tvhome/ClockScene;->PALETTE:[I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/gathin/tvhome/ClockScene;->handler:Landroid/os/Handler;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/gathin/tvhome/ClockScene;->random:Ljava/util/Random;

    new-instance v1, Lcom/gathin/tvhome/ClockScene$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/gathin/tvhome/ClockScene$1;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/gathin/tvhome/ClockScene;->tick:Lcom/gathin/tvhome/ClockScene$1;

    const v1, 0x7f090059

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/gathin/tvhome/ClockScene;->content:Landroid/view/View;

    const v1, 0x7f090057

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gathin/tvhome/ClockScene;->ambient:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v1, p0, Lcom/gathin/tvhome/ClockScene;->glow:Landroid/graphics/drawable/GradientDrawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 p1, 0x5

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Lcom/gathin/tvhome/ClockScene;->colorIndex:I

    sget-object v0, Lcom/gathin/tvhome/ClockScene;->PALETTE:[I

    aget p1, v0, p1

    iput p1, p0, Lcom/gathin/tvhome/ClockScene;->glowColor:I

    const v0, 0xffffff

    and-int/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr v0, p1

    const/high16 v2, 0x14000000

    or-int/2addr v2, p1

    filled-new-array {v0, v2, p1}, [I

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    return-void
.end method


# virtual methods
.method public final placeClock()V
    .locals 8

    iget-object v0, p0, Lcom/gathin/tvhome/ClockScene;->content:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v2, v2

    iget-object v4, p0, Lcom/gathin/tvhome/ClockScene;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v5

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v6

    const v7, 0x3dcccccd    # 0.1f

    add-float/2addr v5, v7

    mul-float/2addr v5, v2

    int-to-float v2, v3

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v3, v6

    add-float/2addr v3, v7

    mul-float/2addr v3, v2

    invoke-virtual {v0, v5}, Landroid/view/View;->setX(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setY(F)V

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/gathin/tvhome/ClockScene;->glow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    add-float/2addr v4, v5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    add-float/2addr v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v2, v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    :cond_0
    return-void
.end method

.method public final start()V
    .locals 12

    iget-object v0, p0, Lcom/gathin/tvhome/ClockScene;->content:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    new-instance v1, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda1;-><init>(Lcom/gathin/tvhome/ClockScene;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/gathin/tvhome/ClockScene;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gathin/tvhome/ClockScene;->tick:Lcom/gathin/tvhome/ClockScene$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v6, p0, Lcom/gathin/tvhome/ClockScene;->wallpaperFile:Ljava/io/File;

    if-eqz v6, :cond_0

    iget-boolean v0, p0, Lcom/gathin/tvhome/ClockScene;->wallpaperShown:Z

    if-nez v0, :cond_0

    iget v11, p0, Lcom/gathin/tvhome/ClockScene;->wallpaperShade:I

    iget-object v10, p0, Lcom/gathin/tvhome/ClockScene;->wallpaperRes:Landroid/content/res/Resources;

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v9, p0, Lcom/gathin/tvhome/ClockScene;->wallpaperGeneration:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda2;

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda2;-><init>(Lcom/gathin/tvhome/ClockScene;Ljava/io/File;IIILandroid/content/res/Resources;I)V

    const-string v2, "clock-wallpaper"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 2

    iget-object v0, p0, Lcom/gathin/tvhome/ClockScene;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/gathin/tvhome/ClockScene;->content:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget v0, p0, Lcom/gathin/tvhome/ClockScene;->wallpaperGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gathin/tvhome/ClockScene;->wallpaperGeneration:I

    return-void
.end method

.method public final useHomeWallpaper(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/gathin/tvhome/Config;->load(Landroid/content/Context;)Lcom/gathin/tvhome/Config;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v1, v0, Lcom/gathin/tvhome/Config;->clockWallpaper:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-boolean p1, v0, Lcom/gathin/tvhome/Config;->clockGlow:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/gathin/tvhome/ClockScene;->wallpaperShown:Z

    iget-object p1, p0, Lcom/gathin/tvhome/ClockScene;->ambient:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/gathin/tvhome/Config;->wallpaper:Ljava/io/File;

    if-eqz v1, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/gathin/tvhome/Config;->wallpapers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/io/File;

    :goto_0
    iput-object v2, p0, Lcom/gathin/tvhome/ClockScene;->wallpaperFile:Ljava/io/File;

    iget v0, v0, Lcom/gathin/tvhome/Config;->clockWallpaperDim:I

    mul-int/lit16 v0, v0, 0xff

    div-int/lit8 v0, v0, 0x64

    shl-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/gathin/tvhome/ClockScene;->wallpaperShade:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/gathin/tvhome/ClockScene;->wallpaperRes:Landroid/content/res/Resources;

    :catch_0
    return-void
.end method
