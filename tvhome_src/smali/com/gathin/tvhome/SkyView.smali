.class public Lcom/gathin/tvhome/SkyView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public drawable:Landroid/graphics/drawable/BitmapDrawable;

.field public intensity:I

.field public lastMinute:I

.field public texture:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/gathin/tvhome/SkyView;->lastMinute:I

    return-void
.end method


# virtual methods
.method public final hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget v0, p0, Lcom/gathin/tvhome/SkyView;->intensity:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gathin/tvhome/SkyView;->render(Z)V

    :cond_0
    return-void
.end method

.method public final render(Z)V
    .locals 21

    move-object/from16 v0, p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v3, 0x17

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    const/16 v4, 0x3b

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v2

    if-nez p1, :cond_0

    iget v2, v0, Lcom/gathin/tvhome/SkyView;->lastMinute:I

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iput v1, v0, Lcom/gathin/tvhome/SkyView;->lastMinute:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f10003f

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f10004f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v12

    invoke-static/range {v7 .. v12}, Lcom/gathin/tvhome/Sky;->riseAndSet(Ljava/time/LocalDate;DDLjava/time/ZoneId;)[I

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    const/4 v2, 0x1

    if-nez v6, :cond_3

    invoke-static {v1}, Lcom/gathin/tvhome/Sky;->at(I)Lcom/gathin/tvhome/Sky$Palette;

    move-result-object v1

    goto :goto_4

    :cond_3
    aget v4, v6, v3

    aget v5, v6, v2

    if-lez v4, :cond_7

    const/16 v6, 0x5a0

    if-ge v5, v6, :cond_7

    if-lt v4, v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ge v1, v4, :cond_5

    mul-int/lit16 v1, v1, 0x1c2

    int-to-float v1, v1

    int-to-float v4, v4

    div-float/2addr v1, v4

    goto :goto_2

    :cond_5
    if-ge v1, v5, :cond_6

    sub-int/2addr v1, v4

    mul-int/lit16 v1, v1, 0x2b2

    int-to-float v1, v1

    sub-int/2addr v5, v4

    int-to-float v4, v5

    div-float/2addr v1, v4

    const/high16 v4, 0x43e10000    # 450.0f

    :goto_1
    add-float/2addr v1, v4

    goto :goto_2

    :cond_6
    sub-int/2addr v1, v5

    mul-int/lit16 v1, v1, 0x12c

    int-to-float v1, v1

    sub-int/2addr v6, v5

    int-to-float v4, v6

    div-float/2addr v1, v4

    const v4, 0x448e8000    # 1140.0f

    goto :goto_1

    :goto_2
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Lcom/gathin/tvhome/Sky;->at(I)Lcom/gathin/tvhome/Sky$Palette;

    move-result-object v1

    goto :goto_4

    :cond_7
    :goto_3
    invoke-static {v1}, Lcom/gathin/tvhome/Sky;->at(I)Lcom/gathin/tvhome/Sky$Palette;

    move-result-object v1

    :goto_4
    iget-object v4, v0, Lcom/gathin/tvhome/SkyView;->texture:Landroid/graphics/Bitmap;

    if-nez v4, :cond_8

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v5, 0x1e0

    const/16 v6, 0x10e

    invoke-static {v5, v6, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v0, Lcom/gathin/tvhome/SkyView;->texture:Landroid/graphics/Bitmap;

    :cond_8
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, v0, Lcom/gathin/tvhome/SkyView;->texture:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v2, Landroid/graphics/LinearGradient;

    iget v5, v1, Lcom/gathin/tvhome/Sky$Palette;->top:I

    iget v6, v1, Lcom/gathin/tvhome/Sky$Palette;->mid:I

    iget v13, v1, Lcom/gathin/tvhome/Sky$Palette;->bottom:I

    filled-new-array {v5, v6, v13}, [I

    move-result-object v10

    const/4 v5, 0x3

    new-array v11, v5, [F

    fill-array-data v11, :array_0

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v8, 0x0

    const/high16 v9, 0x43870000    # 270.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v2

    move-object/from16 v12, v20

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/high16 v8, 0x43f00000    # 480.0f

    move-object v5, v4

    move-object v10, v3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v2, v1, Lcom/gathin/tvhome/Sky$Palette;->sun:I

    if-lez v2, :cond_9

    const/16 v5, -0x2660

    const v6, 0x3f266666    # 0.65f

    invoke-static {v13, v5, v6}, Lcom/gathin/tvhome/Sky;->lerpColor(IIF)I

    move-result v5

    new-instance v6, Landroid/graphics/RadialGradient;

    iget v1, v1, Lcom/gathin/tvhome/Sky$Palette;->sunX:F

    const/high16 v7, 0x43f00000    # 480.0f

    mul-float v15, v1, v7

    shl-int/lit8 v1, v2, 0x18

    const v2, 0xffffff

    and-int/2addr v2, v5

    or-int/2addr v1, v2

    filled-new-array {v1, v2}, [I

    move-result-object v18

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    const/high16 v16, 0x43580000    # 216.0f

    const/high16 v17, 0x43840000    # 264.0f

    move-object v14, v6

    move-object/from16 v19, v1

    invoke-direct/range {v14 .. v20}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x43f00000    # 480.0f

    const/high16 v9, 0x43870000    # 270.0f

    move-object v5, v4

    move-object v10, v3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_9
    iget-object v1, v0, Lcom/gathin/tvhome/SkyView;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_a

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, v0, Lcom/gathin/tvhome/SkyView;->texture:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Lcom/gathin/tvhome/SkyView;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    const/16 v2, 0x77

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    iget-object v1, v0, Lcom/gathin/tvhome/SkyView;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f0ccccd    # 0.55f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setIntensity(I)V
    .locals 2

    const/16 v0, 0x64

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/gathin/tvhome/SkyView;->intensity:I

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    iget p1, p0, Lcom/gathin/tvhome/SkyView;->intensity:I

    if-nez p1, :cond_0

    const/16 v0, 0x8

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget p1, p0, Lcom/gathin/tvhome/SkyView;->intensity:I

    if-lez p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/gathin/tvhome/SkyView;->render(Z)V

    :cond_1
    return-void
.end method
