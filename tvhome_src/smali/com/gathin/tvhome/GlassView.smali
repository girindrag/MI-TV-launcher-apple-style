.class public Lcom/gathin/tvhome/GlassView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final density:F

.field public final fill:Landroid/graphics/Paint;

.field public flat:Z

.field public final glow:Landroid/graphics/Paint;

.field public glowAlpha:I

.field public glowRgb:I

.field public halo:Z

.field public radius:F

.field public final rect:Landroid/graphics/RectF;

.field public final rim:Landroid/graphics/Paint;

.field public final specular:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/gathin/tvhome/GlassView;->fill:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/gathin/tvhome/GlassView;->specular:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/gathin/tvhome/GlassView;->rim:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/gathin/tvhome/GlassView;->glow:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/gathin/tvhome/GlassView;->rect:Landroid/graphics/RectF;

    const p2, 0xffffff

    iput p2, p0, Lcom/gathin/tvhome/GlassView;->glowRgb:I

    const/16 p2, 0x30

    iput p2, p0, Lcom/gathin/tvhome/GlassView;->glowAlpha:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/gathin/tvhome/GlassView;->density:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v1, p2

    iput v1, p0, Lcom/gathin/tvhome/GlassView;->radius:F

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const p2, -0x33000001    # -1.3421772E8f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    const/high16 v1, 0x40c00000    # 6.0f

    iget v2, v0, Lcom/gathin/tvhome/GlassView;->density:F

    mul-float/2addr v2, v1

    iget-object v10, v0, Lcom/gathin/tvhome/GlassView;->rect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    invoke-virtual {v10, v2, v2, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-boolean v1, v0, Lcom/gathin/tvhome/GlassView;->flat:Z

    if-eqz v1, :cond_0

    iget-boolean v3, v0, Lcom/gathin/tvhome/GlassView;->halo:Z

    if-eqz v3, :cond_2

    :cond_0
    const/16 v11, 0xc

    int-to-float v12, v11

    div-float v13, v2, v12

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/gathin/tvhome/GlassView;->glowAlpha:I

    div-int/lit8 v1, v1, 0x2

    :goto_0
    move v14, v1

    goto :goto_1

    :cond_1
    iget v1, v0, Lcom/gathin/tvhome/GlassView;->glowAlpha:I

    goto :goto_0

    :goto_1
    iget-object v15, v0, Lcom/gathin/tvhome/GlassView;->glow:Landroid/graphics/Paint;

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v1, v13, v16

    invoke-virtual {v15, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x0

    move v8, v1

    :goto_2
    if-ge v8, v11, :cond_2

    int-to-float v1, v8

    add-float v2, v1, v16

    mul-float/2addr v2, v13

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v1, v12

    sub-float/2addr v3, v1

    int-to-float v1, v14

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    iget v3, v0, Lcom/gathin/tvhome/GlassView;->glowRgb:I

    or-int/2addr v1, v3

    invoke-virtual {v15, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v10, Landroid/graphics/RectF;->left:F

    sub-float v3, v1, v2

    iget v1, v10, Landroid/graphics/RectF;->top:F

    sub-float v4, v1, v2

    iget v1, v10, Landroid/graphics/RectF;->right:F

    add-float v5, v1, v2

    iget v1, v10, Landroid/graphics/RectF;->bottom:F

    add-float v6, v1, v2

    iget v1, v0, Lcom/gathin/tvhome/GlassView;->radius:F

    add-float v7, v1, v2

    add-float v17, v1, v2

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move/from16 v7, v17

    move/from16 v17, v8

    move-object v8, v15

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v17, 0x1

    goto :goto_2

    :cond_2
    iget-boolean v1, v0, Lcom/gathin/tvhome/GlassView;->flat:Z

    iget-object v2, v0, Lcom/gathin/tvhome/GlassView;->rim:Landroid/graphics/Paint;

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/gathin/tvhome/GlassView;->radius:F

    invoke-virtual {v9, v10, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    :cond_3
    iget v1, v0, Lcom/gathin/tvhome/GlassView;->radius:F

    iget-object v3, v0, Lcom/gathin/tvhome/GlassView;->fill:Landroid/graphics/Paint;

    invoke-virtual {v9, v10, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v3, v10, Landroid/graphics/RectF;->top:F

    iget v4, v10, Landroid/graphics/RectF;->right:F

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v5

    const v6, 0x3ee66666    # 0.45f

    mul-float/2addr v5, v6

    add-float/2addr v5, v3

    invoke-virtual {v9, v1, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget v1, v0, Lcom/gathin/tvhome/GlassView;->radius:F

    iget-object v3, v0, Lcom/gathin/tvhome/GlassView;->specular:Landroid/graphics/Paint;

    invoke-virtual {v9, v10, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget v1, v0, Lcom/gathin/tvhome/GlassView;->radius:F

    invoke-virtual {v9, v10, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/gathin/tvhome/GlassView;->fill:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/LinearGradient;

    int-to-float p2, p2

    sget-object p4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v5, 0x3dffffff    # 0.12499999f

    const v6, 0x12ffffff

    move-object v0, p3

    move v4, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p1, p0, Lcom/gathin/tvhome/GlassView;->specular:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/LinearGradient;

    const v0, 0x3ee66666    # 0.45f

    mul-float v4, p2, v0

    const v5, 0x66ffffff

    const v6, 0xffffff

    move-object v0, p3

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public setAccent(I)V
    .locals 4

    iget-object v0, p0, Lcom/gathin/tvhome/GlassView;->rim:Landroid/graphics/Paint;

    const v1, 0xffffff

    if-nez p1, :cond_0

    iput v1, p0, Lcom/gathin/tvhome/GlassView;->glowRgb:I

    const/16 p1, 0x30

    iput p1, p0, Lcom/gathin/tvhome/GlassView;->glowAlpha:I

    const p1, -0x33000001    # -1.3421772E8f

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    and-int/2addr v1, p1

    iput v1, p0, Lcom/gathin/tvhome/GlassView;->glowRgb:I

    const/16 v2, 0x70

    iput v2, p0, Lcom/gathin/tvhome/GlassView;->glowAlpha:I

    shr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x1fe

    div-int/lit8 v2, v2, 0x3

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    add-int/lit16 v1, v1, 0x1fe

    div-int/lit8 v1, v1, 0x3

    and-int/lit16 p1, p1, 0xff

    add-int/lit16 p1, p1, 0x1fe

    div-int/lit8 p1, p1, 0x3

    const/high16 v3, -0x1a000000

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/gathin/tvhome/GlassView;->radius:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 2

    const-string v0, "rim"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "halo"

    if-nez v0, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/gathin/tvhome/GlassView;->flat:Z

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/gathin/tvhome/GlassView;->halo:Z

    iget-object p1, p0, Lcom/gathin/tvhome/GlassView;->rim:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/gathin/tvhome/GlassView;->flat:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_2

    :cond_2
    const/high16 v0, 0x3fc00000    # 1.5f

    :goto_2
    iget v1, p0, Lcom/gathin/tvhome/GlassView;->density:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
