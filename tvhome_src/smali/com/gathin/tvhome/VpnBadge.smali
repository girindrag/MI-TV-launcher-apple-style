.class public final Lcom/gathin/tvhome/VpnBadge;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# instance fields
.field public final density:F

.field public final fill:I

.field public final ink:I

.field public final lock:Landroid/graphics/drawable/Drawable;

.field public final rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;F)V
    .locals 1

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/gathin/tvhome/VpnBadge;->rect:Landroid/graphics/RectF;

    if-eqz p1, :cond_0

    const v0, -0xcf2ea8

    goto :goto_0

    :cond_0
    const v0, -0xbac6

    :goto_0
    iput v0, p0, Lcom/gathin/tvhome/VpnBadge;->fill:I

    if-eqz p1, :cond_1

    const v0, -0xf9d6f1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lcom/gathin/tvhome/VpnBadge;->ink:I

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iput-object p1, p0, Lcom/gathin/tvhome/VpnBadge;->lock:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_3
    iput p2, p0, Lcom/gathin/tvhome/VpnBadge;->density:F

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v14, p9

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getTextSize()F

    move-result v15

    iget-object v8, v6, Lcom/gathin/tvhome/VpnBadge;->lock:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_0

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    :goto_0
    move v9, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const v0, 0x3fa66666    # 1.3f

    mul-float v10, v15, v0

    add-int v0, p6, p8

    int-to-float v0, v0

    const/high16 v11, 0x40000000    # 2.0f

    div-float v12, v0, v11

    const/high16 v0, 0x41000000    # 8.0f

    iget v13, v6, Lcom/gathin/tvhome/VpnBadge;->density:F

    mul-float/2addr v0, v13

    add-float v5, v0, p5

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v17, v5

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/gathin/tvhome/VpnBadge;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    add-float v0, p5, v0

    iget-object v1, v6, Lcom/gathin/tvhome/VpnBadge;->rect:Landroid/graphics/RectF;

    div-float/2addr v10, v11

    sub-float v2, v12, v10

    add-float v3, v12, v10

    move/from16 v4, v17

    invoke-virtual {v1, v4, v2, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget v2, v6, Lcom/gathin/tvhome/VpnBadge;->fill:I

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v1, v10, v10, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v1, 0x40e00000    # 7.0f

    mul-float/2addr v1, v13

    add-float/2addr v1, v4

    float-to-int v1, v1

    if-eqz v8, :cond_1

    div-float v2, v9, v11

    sub-float v3, v12, v2

    float-to-int v3, v3

    int-to-float v4, v1

    add-float/2addr v4, v9

    float-to-int v4, v4

    add-float/2addr v2, v12

    float-to-int v2, v2

    invoke-virtual {v8, v1, v3, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget v2, v6, Lcom/gathin/tvhome/VpnBadge;->ink:I

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    const v3, 0x3f47ae14    # 0.78f

    mul-float/2addr v2, v3

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v3, v2

    div-float/2addr v3, v11

    sub-float/2addr v12, v3

    int-to-float v1, v1

    add-float/2addr v1, v9

    if-eqz v8, :cond_2

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v13, v2

    goto :goto_2

    :cond_2
    mul-float/2addr v13, v11

    :goto_2
    add-float v11, v13, v1

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v13, p9

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result p5

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const v1, 0x3f47ae14    # 0.78f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p2

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 p3, 0x41000000    # 8.0f

    iget p4, p0, Lcom/gathin/tvhome/VpnBadge;->density:F

    mul-float/2addr p3, p4

    const/high16 p5, 0x40e00000    # 7.0f

    mul-float/2addr p5, p4

    add-float/2addr p5, p3

    iget-object p3, p0, Lcom/gathin/tvhome/VpnBadge;->lock:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    const v0, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    add-float/2addr p1, p5

    if-eqz p3, :cond_1

    const/high16 p3, 0x40800000    # 4.0f

    :goto_1
    mul-float/2addr p3, p4

    goto :goto_2

    :cond_1
    const/high16 p3, 0x40000000    # 2.0f

    goto :goto_1

    :goto_2
    add-float/2addr p3, p1

    add-float/2addr p3, p2

    const/high16 p1, 0x41100000    # 9.0f

    mul-float/2addr p4, p1

    add-float/2addr p4, p3

    float-to-int p1, p4

    return p1
.end method
