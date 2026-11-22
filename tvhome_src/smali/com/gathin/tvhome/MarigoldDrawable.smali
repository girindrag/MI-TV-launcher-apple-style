.class public final Lcom/gathin/tvhome/MarigoldDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field public static final COUNT:[I

.field public static final RADIUS:[F

.field public static final SHADES:[[I

.field public static final SPIN:[F


# instance fields
.field public alpha:I

.field public final angles:[[F

.field public final animator:Landroid/animation/ValueAnimator;

.field public final colors:[[I

.field public final core:Landroid/graphics/Path;

.field public final coreEdge:Landroid/graphics/Paint;

.field public final coreFill:Landroid/graphics/Paint;

.field public final density:F

.field public final edge:Landroid/graphics/Paint;

.field public final edges:[[I

.field public final fill:Landroid/graphics/Paint;

.field public from:D

.field public final paints:[Landroid/graphics/Paint;

.field public final petals:[[Landroid/graphics/Path;

.field public reduced:Z

.field public rotation:D

.field public final seedPaint:Landroid/graphics/Paint;

.field public final seeds:[F

.field public final shadowPaints:[Landroid/graphics/Paint;

.field public final shadowR:[F

.field public target:D


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x9

    const/4 v1, 0x7

    const/16 v2, 0xd

    const/16 v3, 0xb

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/gathin/tvhome/MarigoldDrawable;->COUNT:[I

    const/4 v0, 0x4

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/gathin/tvhome/MarigoldDrawable;->RADIUS:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/gathin/tvhome/MarigoldDrawable;->SPIN:[F

    const v0, -0x1a9ff6

    const v1, -0xf7ff2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const v2, -0x865ea

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const v2, -0x65ce5

    const/16 v3, -0x4adc

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/16 v4, -0x39c2

    filled-new-array {v3, v4}, [I

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [[I

    move-result-object v0

    sput-object v0, Lcom/gathin/tvhome/MarigoldDrawable;->SHADES:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4139999a    # 11.6f
        0x41166666    # 9.4f
        0x40e66666    # 7.2f
        0x40a00000    # 5.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f851eb8    # 1.04f
        0x3f8b851f    # 1.09f
        0x3f933333    # 1.15f
    .end array-data
.end method

.method public constructor <init>(F)V
    .locals 39

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v4, 0x4

    new-array v5, v4, [[Landroid/graphics/Path;

    iput-object v5, v0, Lcom/gathin/tvhome/MarigoldDrawable;->petals:[[Landroid/graphics/Path;

    new-array v5, v4, [[F

    iput-object v5, v0, Lcom/gathin/tvhome/MarigoldDrawable;->angles:[[F

    new-array v5, v4, [[I

    iput-object v5, v0, Lcom/gathin/tvhome/MarigoldDrawable;->colors:[[I

    new-array v5, v4, [[I

    iput-object v5, v0, Lcom/gathin/tvhome/MarigoldDrawable;->edges:[[I

    new-array v5, v4, [F

    iput-object v5, v0, Lcom/gathin/tvhome/MarigoldDrawable;->shadowR:[F

    new-array v5, v4, [Landroid/graphics/Paint;

    iput-object v5, v0, Lcom/gathin/tvhome/MarigoldDrawable;->shadowPaints:[Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, v0, Lcom/gathin/tvhome/MarigoldDrawable;->core:Landroid/graphics/Path;

    const/16 v5, 0x12

    new-array v6, v5, [F

    iput-object v6, v0, Lcom/gathin/tvhome/MarigoldDrawable;->seeds:[F

    const/16 v6, 0xff

    iput v6, v0, Lcom/gathin/tvhome/MarigoldDrawable;->alpha:I

    move/from16 v6, p1

    iput v6, v0, Lcom/gathin/tvhome/MarigoldDrawable;->density:F

    new-instance v6, Ljava/util/Random;

    const-wide/32 v7, 0x6e7da

    invoke-direct {v6, v7, v8}, Ljava/util/Random;-><init>(J)V

    const/4 v8, 0x0

    :goto_0
    const-wide v11, 0x400921fb54442d18L    # Math.PI

    const/high16 v13, 0x3f000000    # 0.5f

    sget-object v14, Lcom/gathin/tvhome/MarigoldDrawable;->RADIUS:[F

    if-ge v8, v4, :cond_4

    sget-object v16, Lcom/gathin/tvhome/MarigoldDrawable;->COUNT:[I

    aget v4, v16, v8

    new-array v5, v4, [Landroid/graphics/Path;

    iget-object v7, v0, Lcom/gathin/tvhome/MarigoldDrawable;->petals:[[Landroid/graphics/Path;

    aput-object v5, v7, v8

    new-array v5, v4, [F

    iget-object v15, v0, Lcom/gathin/tvhome/MarigoldDrawable;->angles:[[F

    aput-object v5, v15, v8

    new-array v5, v4, [I

    iget-object v9, v0, Lcom/gathin/tvhome/MarigoldDrawable;->colors:[[I

    aput-object v5, v9, v8

    new-array v5, v4, [I

    iget-object v3, v0, Lcom/gathin/tvhome/MarigoldDrawable;->edges:[[I

    aput-object v5, v3, v8

    int-to-float v5, v8

    int-to-float v10, v4

    const/high16 v20, 0x43340000    # 180.0f

    div-float v20, v20, v10

    mul-float v20, v20, v5

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v5

    sub-float/2addr v5, v13

    const/high16 v21, 0x41000000    # 8.0f

    mul-float v5, v5, v21

    add-float v5, v5, v20

    if-nez v8, :cond_0

    const v20, 0x3f0ccccd    # 0.55f

    :goto_1
    move/from16 v22, v20

    goto :goto_2

    :cond_0
    const v20, 0x3ee66666    # 0.45f

    goto :goto_1

    :goto_2
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v4, :cond_3

    int-to-float v2, v1

    const/high16 v23, 0x43b40000    # 360.0f

    mul-float v2, v2, v23

    div-float/2addr v2, v10

    add-float/2addr v2, v5

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v23

    sub-float v23, v23, v13

    const/high16 v24, 0x41200000    # 10.0f

    mul-float v23, v23, v24

    add-float v2, v23, v2

    aget v23, v14, v8

    const v24, 0x3d23d70a    # 0.04f

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v25

    mul-float v25, v25, v24

    const v24, 0x3f75c28f    # 0.96f

    add-float v25, v25, v24

    mul-float v25, v25, v23

    move-object/from16 v24, v14

    int-to-double v13, v4

    div-double v13, v11, v13

    double-to-float v13, v13

    const v14, 0x3e19999a    # 0.15f

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v26

    mul-float v26, v26, v14

    const v14, 0x3f970a3d    # 1.18f

    add-float v26, v26, v14

    mul-float v26, v26, v13

    const/4 v13, 0x2

    invoke-virtual {v6, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    const/4 v13, 0x3

    add-int/2addr v14, v13

    aget-object v13, v7, v8

    float-to-double v11, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    double-to-float v11, v11

    const/high16 v12, 0x3e800000    # 0.25f

    mul-float v12, v12, v25

    move/from16 v27, v4

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    move/from16 v28, v5

    sub-float v5, v11, v26

    add-float v29, v11, v26

    const v30, 0x3eb33333    # 0.35f

    mul-float v30, v30, v26

    move-object/from16 v31, v7

    sub-float v7, v11, v30

    move/from16 v32, v10

    invoke-static {v12, v7}, Lcom/gathin/tvhome/MarigoldDrawable;->px(FF)F

    move-result v10

    invoke-static {v12, v7}, Lcom/gathin/tvhome/MarigoldDrawable;->py(FF)F

    move-result v7

    invoke-virtual {v4, v10, v7}, Landroid/graphics/Path;->moveTo(FF)V

    const v7, 0x3da3d70a    # 0.08f

    mul-float v7, v7, v26

    sub-float v10, v5, v7

    const v19, 0x3f1eb852    # 0.62f

    mul-float v0, v25, v19

    move-object/from16 v33, v3

    invoke-static {v0, v10}, Lcom/gathin/tvhome/MarigoldDrawable;->px(FF)F

    move-result v3

    invoke-static {v0, v10}, Lcom/gathin/tvhome/MarigoldDrawable;->py(FF)F

    move-result v10

    const v34, 0x3f5c28f6    # 0.86f

    move-object/from16 v35, v9

    mul-float v9, v25, v34

    move/from16 v34, v2

    invoke-static {v9, v5}, Lcom/gathin/tvhome/MarigoldDrawable;->px(FF)F

    move-result v2

    move/from16 v36, v8

    invoke-static {v9, v5}, Lcom/gathin/tvhome/MarigoldDrawable;->py(FF)F

    move-result v8

    invoke-virtual {v4, v3, v10, v2, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    const/4 v2, 0x2

    mul-int/2addr v14, v2

    const/4 v2, 0x1

    :goto_4
    if-ge v2, v14, :cond_2

    sub-float v3, v29, v5

    int-to-float v8, v2

    mul-float/2addr v8, v3

    int-to-float v10, v14

    div-float/2addr v8, v10

    add-float/2addr v8, v5

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v37

    const/high16 v23, 0x3f000000    # 0.5f

    sub-float v37, v37, v23

    mul-float v37, v37, v26

    const v38, 0x3df5c28f    # 0.12f

    mul-float v37, v37, v38

    add-float v8, v37, v8

    move/from16 v37, v9

    const/16 v18, 0x1

    add-int/lit8 v9, v2, 0x1

    move-object/from16 v38, v15

    int-to-float v15, v9

    mul-float/2addr v3, v15

    div-float/2addr v3, v10

    add-float/2addr v3, v5

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v10

    const v15, 0x3d75c28f    # 0.06f

    mul-float/2addr v10, v15

    const/high16 v17, 0x3f800000    # 1.0f

    add-float v10, v10, v17

    mul-float v10, v10, v25

    if-lt v9, v14, :cond_1

    move/from16 v9, v37

    goto :goto_5

    :cond_1
    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v9

    mul-float/2addr v9, v15

    const v15, 0x3f547ae1    # 0.83f

    add-float/2addr v9, v15

    mul-float v9, v9, v25

    :goto_5
    invoke-static {v10, v8}, Lcom/gathin/tvhome/MarigoldDrawable;->px(FF)F

    move-result v15

    invoke-static {v10, v8}, Lcom/gathin/tvhome/MarigoldDrawable;->py(FF)F

    move-result v8

    invoke-static {v9, v3}, Lcom/gathin/tvhome/MarigoldDrawable;->px(FF)F

    move-result v10

    invoke-static {v9, v3}, Lcom/gathin/tvhome/MarigoldDrawable;->py(FF)F

    move-result v3

    invoke-virtual {v4, v15, v8, v10, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    const/4 v3, 0x2

    add-int/2addr v2, v3

    move/from16 v9, v37

    move-object/from16 v15, v38

    goto :goto_4

    :cond_2
    move-object/from16 v38, v15

    const/high16 v23, 0x3f000000    # 0.5f

    add-float v2, v29, v7

    add-float v11, v11, v30

    invoke-static {v0, v2}, Lcom/gathin/tvhome/MarigoldDrawable;->px(FF)F

    move-result v3

    invoke-static {v0, v2}, Lcom/gathin/tvhome/MarigoldDrawable;->py(FF)F

    move-result v0

    invoke-static {v12, v11}, Lcom/gathin/tvhome/MarigoldDrawable;->px(FF)F

    move-result v2

    invoke-static {v12, v11}, Lcom/gathin/tvhome/MarigoldDrawable;->py(FF)F

    move-result v5

    invoke-virtual {v4, v3, v0, v2, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    aput-object v4, v13, v1

    aget-object v0, v38, v36

    aput v34, v0, v1

    sget-object v0, Lcom/gathin/tvhome/MarigoldDrawable;->SHADES:[[I

    aget-object v0, v0, v36

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v4

    invoke-static {v3, v0, v4}, Lcom/gathin/tvhome/MarigoldDrawable;->lerp(IIF)I

    move-result v0

    aget-object v3, v35, v36

    aput v0, v3, v1

    aget-object v3, v33, v36

    const v4, -0x91dc00

    move/from16 v5, v22

    invoke-static {v0, v4, v5}, Lcom/gathin/tvhome/MarigoldDrawable;->lerp(IIF)I

    move-result v0

    aput v0, v3, v1

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    move/from16 v13, v23

    move-object/from16 v14, v24

    move/from16 v4, v27

    move/from16 v5, v28

    move-object/from16 v7, v31

    move/from16 v10, v32

    move-object/from16 v3, v33

    move-object/from16 v9, v35

    move/from16 v8, v36

    move-object/from16 v15, v38

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    goto/16 :goto_3

    :cond_3
    move/from16 v36, v8

    const/4 v2, 0x1

    add-int/lit8 v8, v36, 0x1

    const/4 v4, 0x4

    const/16 v5, 0x12

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_4
    move-object/from16 v24, v14

    const/4 v0, 0x0

    move-object/from16 v1, p0

    :goto_6
    iget-object v2, v1, Lcom/gathin/tvhome/MarigoldDrawable;->core:Landroid/graphics/Path;

    const v3, 0x4039999a    # 2.9f

    const/16 v4, 0x24

    if-gt v0, v4, :cond_8

    int-to-double v4, v0

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v7

    const/16 v7, 0x12

    int-to-double v8, v7

    div-double/2addr v4, v8

    double-to-float v4, v4

    const/4 v5, 0x2

    rem-int/lit8 v10, v0, 0x2

    const v5, 0x401be76d    # 2.436f

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v11

    const v12, 0x3d75c28f    # 0.06f

    mul-float/2addr v11, v12

    const/high16 v13, 0x3f800000    # 1.0f

    add-float/2addr v11, v13

    mul-float/2addr v11, v3

    goto :goto_7

    :cond_5
    const v12, 0x3d75c28f    # 0.06f

    move v11, v5

    :goto_7
    if-nez v0, :cond_6

    invoke-static {v11, v4}, Lcom/gathin/tvhome/MarigoldDrawable;->px(FF)F

    move-result v3

    invoke-static {v11, v4}, Lcom/gathin/tvhome/MarigoldDrawable;->py(FF)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_8
    const/4 v2, 0x1

    goto :goto_9

    :cond_6
    const/4 v3, 0x1

    if-ne v10, v3, :cond_7

    add-int/lit8 v10, v0, 0x1

    int-to-double v13, v10

    const-wide v15, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v13, v15

    div-double/2addr v13, v8

    double-to-float v3, v13

    invoke-static {v11, v4}, Lcom/gathin/tvhome/MarigoldDrawable;->px(FF)F

    move-result v8

    invoke-static {v11, v4}, Lcom/gathin/tvhome/MarigoldDrawable;->py(FF)F

    move-result v4

    invoke-static {v5, v3}, Lcom/gathin/tvhome/MarigoldDrawable;->px(FF)F

    move-result v9

    invoke-static {v5, v3}, Lcom/gathin/tvhome/MarigoldDrawable;->py(FF)F

    move-result v3

    invoke-virtual {v2, v8, v4, v9, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_8

    :cond_7
    move v2, v3

    :goto_9
    add-int/2addr v0, v2

    goto :goto_6

    :cond_8
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    sub-double/2addr v6, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v4

    const/4 v0, 0x0

    :goto_a
    iget-object v2, v1, Lcom/gathin/tvhome/MarigoldDrawable;->seeds:[F

    array-length v4, v2

    const/4 v5, 0x2

    div-int/2addr v4, v5

    if-ge v0, v4, :cond_9

    int-to-double v8, v0

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v4, v10

    const v10, 0x3f1eb852    # 0.62f

    mul-float/2addr v4, v10

    mul-double/2addr v8, v6

    double-to-float v8, v8

    mul-int/lit8 v9, v0, 0x2

    invoke-static {v4, v8}, Lcom/gathin/tvhome/MarigoldDrawable;->px(FF)F

    move-result v5

    aput v5, v2, v9

    const/4 v5, 0x1

    add-int/2addr v9, v5

    invoke-static {v4, v8}, Lcom/gathin/tvhome/MarigoldDrawable;->py(FF)F

    move-result v4

    aput v4, v2, v9

    add-int/2addr v0, v5

    goto :goto_a

    :cond_9
    const/4 v5, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v1, Lcom/gathin/tvhome/MarigoldDrawable;->fill:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v1, Lcom/gathin/tvhome/MarigoldDrawable;->edge:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/4 v0, 0x0

    :goto_b
    const/4 v4, 0x0

    const/4 v6, 0x4

    if-ge v0, v6, :cond_b

    add-int/lit8 v7, v0, 0x1

    if-ge v7, v6, :cond_a

    aget v5, v24, v7

    goto :goto_c

    :cond_a
    move v5, v3

    :goto_c
    aget v6, v24, v0

    sub-float/2addr v6, v5

    const v8, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v8

    add-float v11, v6, v5

    div-float/2addr v5, v11

    iget-object v6, v1, Lcom/gathin/tvhome/MarigoldDrawable;->shadowR:[F

    aput v11, v6, v0

    new-instance v6, Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-direct {v6, v8}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v15, Landroid/graphics/RadialGradient;

    const v9, 0x665a1e00

    const v10, 0x5a1e00

    const v12, -0x7fa5e200

    filled-new-array {v12, v12, v9, v10}, [I

    move-result-object v12

    const v9, 0x3f666666    # 0.9f

    mul-float/2addr v9, v5

    const/4 v10, 0x4

    new-array v13, v10, [F

    const/4 v10, 0x0

    aput v4, v13, v10

    aput v9, v13, v8

    const/4 v4, 0x2

    aput v5, v13, v4

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x3

    aput v4, v13, v5

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const v9, 0x4145999a    # 12.35f

    const v10, 0x41473333    # 12.45f

    move-object v8, v15

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v6, v15}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v5, v1, Lcom/gathin/tvhome/MarigoldDrawable;->shadowPaints:[Landroid/graphics/Paint;

    aput-object v6, v5, v0

    move v0, v7

    const/4 v5, 0x1

    goto :goto_b

    :cond_b
    new-instance v0, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v1, Lcom/gathin/tvhome/MarigoldDrawable;->coreFill:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/RadialGradient;

    const v4, -0x4fb1f8

    const v5, -0x85cffc

    const v6, -0x1f7de6

    filled-new-array {v6, v4, v5}, [I

    move-result-object v8

    const/4 v4, 0x3

    new-array v9, v4, [F

    fill-array-data v9, :array_0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const v5, 0x4134cccd    # 11.3f

    const v6, 0x4134cccd    # 11.3f

    const v7, 0x40666666    # 3.6f

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v1, Lcom/gathin/tvhome/MarigoldDrawable;->coreEdge:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const v2, -0xa3dbfd

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v1, Lcom/gathin/tvhome/MarigoldDrawable;->seedPaint:Landroid/graphics/Paint;

    const/16 v4, -0x47b6

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v4, 0x9

    new-array v4, v4, [Landroid/graphics/Paint;

    iput-object v4, v1, Lcom/gathin/tvhome/MarigoldDrawable;->paints:[Landroid/graphics/Paint;

    iget-object v5, v1, Lcom/gathin/tvhome/MarigoldDrawable;->shadowPaints:[Landroid/graphics/Paint;

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static {v5, v7, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v1, Lcom/gathin/tvhome/MarigoldDrawable;->fill:Landroid/graphics/Paint;

    aput-object v5, v4, v6

    const/4 v5, 0x5

    iget-object v6, v1, Lcom/gathin/tvhome/MarigoldDrawable;->edge:Landroid/graphics/Paint;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    aput-object v0, v4, v5

    const/4 v0, 0x7

    aput-object v3, v4, v0

    const/16 v0, 0x8

    aput-object v2, v4, v0

    const/4 v0, 0x2

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v1, Lcom/gathin/tvhome/MarigoldDrawable;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x384

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const v4, 0x3fcccccd    # 1.6f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/gathin/tvhome/BellDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v0}, Lcom/gathin/tvhome/BellDrawable$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static lerp(IIF)I
    .locals 5

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p0, p0, 0xff

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 p1, p1, 0xff

    int-to-float v4, v0

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p2

    add-float/2addr v0, v4

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x10

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    int-to-float v2, v1

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, p2

    add-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-float v1, p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p0, p2

    add-float/2addr p0, v1

    float-to-int p0, p0

    or-int/2addr p0, v0

    return p0
.end method

.method public static px(FF)F
    .locals 2

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p1, v0

    mul-float/2addr p0, p1

    const/high16 p1, 0x41400000    # 12.0f

    add-float/2addr p0, p1

    return p0
.end method

.method public static py(FF)F
    .locals 2

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    mul-float/2addr p0, p1

    const/high16 p1, 0x41400000    # 12.0f

    add-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41c00000    # 24.0f

    div-float/2addr v1, v2

    iget v7, p0, Lcom/gathin/tvhome/MarigoldDrawable;->alpha:I

    const/16 v2, 0xff

    if-ge v7, v2, :cond_1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    const/high16 v4, 0x41400000    # 12.0f

    mul-float v5, v1, v4

    sub-float/2addr v3, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    sub-float/2addr v0, v5

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const/4 v3, 0x4

    const-wide v5, 0x4076800000000000L    # 360.0

    if-ge v1, v3, :cond_4

    iget-wide v7, p0, Lcom/gathin/tvhome/MarigoldDrawable;->rotation:D

    sget-object v3, Lcom/gathin/tvhome/MarigoldDrawable;->SPIN:[F

    aget v3, v3, v1

    float-to-double v9, v3

    mul-double/2addr v7, v9

    rem-double/2addr v7, v5

    double-to-float v3, v7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v3, v4, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v5, p0, Lcom/gathin/tvhome/MarigoldDrawable;->petals:[[Landroid/graphics/Path;

    aget-object v5, v5, v1

    move v6, v0

    :goto_2
    array-length v7, v5

    if-ge v6, v7, :cond_3

    iget-object v7, p0, Lcom/gathin/tvhome/MarigoldDrawable;->angles:[[F

    aget-object v7, v7, v1

    aget v7, v7, v6

    add-float/2addr v7, v3

    const/high16 v8, 0x43610000    # 225.0f

    sub-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    iget-object v8, p0, Lcom/gathin/tvhome/MarigoldDrawable;->colors:[[I

    aget-object v8, v8, v1

    aget v8, v8, v6

    iget-object v9, p0, Lcom/gathin/tvhome/MarigoldDrawable;->fill:Landroid/graphics/Paint;

    const/4 v10, 0x0

    cmpl-float v10, v7, v10

    if-ltz v10, :cond_2

    const v10, 0x3e99999a    # 0.3f

    mul-float/2addr v7, v10

    const/16 v10, -0x165a

    :goto_3
    invoke-static {v8, v10, v7}, Lcom/gathin/tvhome/MarigoldDrawable;->lerp(IIF)I

    move-result v7

    goto :goto_4

    :cond_2
    const v10, -0x418a3d71    # -0.24f

    mul-float/2addr v7, v10

    const v10, -0x5bc200

    goto :goto_3

    :goto_4
    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->setColor(I)V

    aget-object v7, v5, v6

    invoke-virtual {p1, v7, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v7, p0, Lcom/gathin/tvhome/MarigoldDrawable;->edge:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/gathin/tvhome/MarigoldDrawable;->edges:[[I

    aget-object v8, v8, v1

    aget v8, v8, v6

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    aget-object v8, v5, v6

    invoke-virtual {p1, v8, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v3, p0, Lcom/gathin/tvhome/MarigoldDrawable;->shadowR:[F

    aget v3, v3, v1

    iget-object v5, p0, Lcom/gathin/tvhome/MarigoldDrawable;->shadowPaints:[Landroid/graphics/Paint;

    aget-object v5, v5, v1

    const v6, 0x4145999a    # 12.35f

    const v7, 0x41473333    # 12.45f

    invoke-virtual {p1, v6, v7, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-wide v7, p0, Lcom/gathin/tvhome/MarigoldDrawable;->rotation:D

    const-wide v9, 0x3ff3333340000000L    # 1.2000000476837158

    mul-double/2addr v7, v9

    rem-double/2addr v7, v5

    double-to-float v1, v7

    invoke-virtual {p1, v1, v4, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, p0, Lcom/gathin/tvhome/MarigoldDrawable;->core:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/gathin/tvhome/MarigoldDrawable;->coreFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/gathin/tvhome/MarigoldDrawable;->coreEdge:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_5
    iget-object v1, p0, Lcom/gathin/tvhome/MarigoldDrawable;->seeds:[F

    array-length v3, v1

    if-ge v0, v3, :cond_5

    aget v3, v1, v0

    add-int/lit8 v4, v0, 0x1

    aget v1, v1, v4

    iget-object v4, p0, Lcom/gathin/tvhome/MarigoldDrawable;->seedPaint:Landroid/graphics/Paint;

    const v5, 0x3e851eb8    # 0.26f

    invoke-virtual {p1, v3, v1, v5, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final getAlpha()I
    .locals 1

    iget v0, p0, Lcom/gathin/tvhome/MarigoldDrawable;->alpha:I

    return v0
.end method

.method public final getIntrinsicHeight()I
    .locals 2

    const/high16 v0, 0x41c00000    # 24.0f

    iget v1, p0, Lcom/gathin/tvhome/MarigoldDrawable;->density:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 2

    const/high16 v0, 0x41c00000    # 24.0f

    iget v1, p0, Lcom/gathin/tvhome/MarigoldDrawable;->density:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final setAlpha(I)V
    .locals 1

    iget v0, p0, Lcom/gathin/tvhome/MarigoldDrawable;->alpha:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/gathin/tvhome/MarigoldDrawable;->alpha:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    iget-object v0, p0, Lcom/gathin/tvhome/MarigoldDrawable;->paints:[Landroid/graphics/Paint;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
