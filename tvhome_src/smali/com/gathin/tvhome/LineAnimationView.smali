.class public Lcom/gathin/tvhome/LineAnimationView;
.super Landroid/view/View;
.source "LineAnimationView.java"


# instance fields
.field private final ambientBackdropPaint:Landroid/graphics/Paint;

.field private animating:Z

.field private final glowPaint:Landroid/graphics/Paint;

.field private final paint1:Landroid/graphics/Paint;

.field private final paint2:Landroid/graphics/Paint;

.field private final paint3:Landroid/graphics/Paint;

.field private final path1:Landroid/graphics/Path;

.field private final path2:Landroid/graphics/Path;

.field private final path3:Landroid/graphics/Path;

.field private startTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/gathin/tvhome/LineAnimationView;->paint1:Landroid/graphics/Paint;

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/gathin/tvhome/LineAnimationView;->paint2:Landroid/graphics/Paint;

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/gathin/tvhome/LineAnimationView;->paint3:Landroid/graphics/Paint;

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/gathin/tvhome/LineAnimationView;->glowPaint:Landroid/graphics/Paint;

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/gathin/tvhome/LineAnimationView;->ambientBackdropPaint:Landroid/graphics/Paint;

    .line 20
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/LineAnimationView;->path1:Landroid/graphics/Path;

    .line 21
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/LineAnimationView;->path2:Landroid/graphics/Path;

    .line 22
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/LineAnimationView;->path3:Landroid/graphics/Path;

    .line 24
    iput-boolean v0, p0, Lcom/gathin/tvhome/LineAnimationView;->animating:Z

    .line 28
    invoke-direct {p0}, Lcom/gathin/tvhome/LineAnimationView;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/gathin/tvhome/LineAnimationView;->paint1:Landroid/graphics/Paint;

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/gathin/tvhome/LineAnimationView;->paint2:Landroid/graphics/Paint;

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/gathin/tvhome/LineAnimationView;->paint3:Landroid/graphics/Paint;

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/gathin/tvhome/LineAnimationView;->glowPaint:Landroid/graphics/Paint;

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/gathin/tvhome/LineAnimationView;->ambientBackdropPaint:Landroid/graphics/Paint;

    .line 20
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/LineAnimationView;->path1:Landroid/graphics/Path;

    .line 21
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/LineAnimationView;->path2:Landroid/graphics/Path;

    .line 22
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/LineAnimationView;->path3:Landroid/graphics/Path;

    .line 24
    iput-boolean p2, p0, Lcom/gathin/tvhome/LineAnimationView;->animating:Z

    .line 33
    invoke-direct {p0}, Lcom/gathin/tvhome/LineAnimationView;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/gathin/tvhome/LineAnimationView;->paint1:Landroid/graphics/Paint;

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/gathin/tvhome/LineAnimationView;->paint2:Landroid/graphics/Paint;

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/gathin/tvhome/LineAnimationView;->paint3:Landroid/graphics/Paint;

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/gathin/tvhome/LineAnimationView;->glowPaint:Landroid/graphics/Paint;

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/gathin/tvhome/LineAnimationView;->ambientBackdropPaint:Landroid/graphics/Paint;

    .line 20
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/LineAnimationView;->path1:Landroid/graphics/Path;

    .line 21
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/LineAnimationView;->path2:Landroid/graphics/Path;

    .line 22
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/LineAnimationView;->path3:Landroid/graphics/Path;

    .line 24
    iput-boolean p2, p0, Lcom/gathin/tvhome/LineAnimationView;->animating:Z

    .line 38
    invoke-direct {p0}, Lcom/gathin/tvhome/LineAnimationView;->init()V

    .line 39
    return-void
.end method

.method private init()V
    .locals 2

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gathin/tvhome/LineAnimationView;->startTime:J

    .line 44
    iget-object v0, p0, Lcom/gathin/tvhome/LineAnimationView;->paint1:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object v0, p0, Lcom/gathin/tvhome/LineAnimationView;->paint1:Landroid/graphics/Paint;

    const/high16 v1, 0x40600000    # 3.5f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    iget-object v0, p0, Lcom/gathin/tvhome/LineAnimationView;->paint2:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget-object v0, p0, Lcom/gathin/tvhome/LineAnimationView;->paint2:Landroid/graphics/Paint;

    const v1, 0x400ccccd    # 2.2f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    iget-object v0, p0, Lcom/gathin/tvhome/LineAnimationView;->paint3:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    iget-object v0, p0, Lcom/gathin/tvhome/LineAnimationView;->paint3:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    iget-object v0, p0, Lcom/gathin/tvhome/LineAnimationView;->glowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lcom/gathin/tvhome/LineAnimationView;->glowPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    iget-object v0, p0, Lcom/gathin/tvhome/LineAnimationView;->ambientBackdropPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 61
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gathin/tvhome/LineAnimationView;->animating:Z

    .line 63
    invoke-virtual {p0}, Lcom/gathin/tvhome/LineAnimationView;->postInvalidateOnAnimation()V

    .line 64
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 68
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gathin/tvhome/LineAnimationView;->animating:Z

    .line 70
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 26

    .line 83
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/gathin/tvhome/LineAnimationView;->getWidth()I

    move-result v1

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/gathin/tvhome/LineAnimationView;->getHeight()I

    move-result v2

    .line 86
    if-lez v1, :cond_5

    if-gtz v2, :cond_0

    goto/16 :goto_3

    .line 88
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/gathin/tvhome/LineAnimationView;->startTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float v8, v3, v4

    .line 91
    int-to-float v15, v1

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v1, v1, v8

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v1, v3

    const v3, 0x3e19999a    # 0.15f

    mul-float v1, v1, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v1, v3

    mul-float v17, v15, v1

    .line 92
    int-to-float v14, v2

    const/high16 v23, 0x3e800000    # 0.25f

    mul-float v1, v8, v23

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x3da3d70a    # 0.08f

    mul-float v1, v1, v2

    const v2, 0x3eb33333    # 0.35f

    add-float/2addr v1, v2

    mul-float v18, v14, v1

    .line 93
    new-instance v1, Landroid/graphics/RadialGradient;

    const v2, 0x3f266666    # 0.65f

    mul-float v19, v15, v2

    const v2, 0xa00bfa5

    const/4 v3, 0x0

    const v4, 0x2a3367d6

    const v5, 0x1a673ab7

    filled-new-array {v4, v5, v2, v3}, [I

    move-result-object v20

    const/4 v2, 0x4

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v16, v1

    move-object/from16 v21, v2

    invoke-direct/range {v16 .. v22}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 99
    iget-object v2, v0, Lcom/gathin/tvhome/LineAnimationView;->ambientBackdropPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 100
    const/4 v3, 0x0

    iget-object v6, v0, Lcom/gathin/tvhome/LineAnimationView;->ambientBackdropPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move v4, v15

    move v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 103
    new-instance v1, Landroid/graphics/LinearGradient;

    const v2, -0x33ff1a01    # -3.3789948E7f

    const v3, -0x6683b201

    const v4, 0x4285f4

    const v5, -0x66bd7a0c

    const v6, 0x7c4dff

    filled-new-array {v4, v5, v2, v3, v6}, [I

    move-result-object v2

    const/4 v3, 0x5

    new-array v4, v3, [F

    fill-array-data v4, :array_1

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v9, v1

    move v12, v15

    move v5, v14

    move-object v14, v2

    move v2, v15

    move-object v15, v4

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 109
    iget-object v4, v0, Lcom/gathin/tvhome/LineAnimationView;->paint1:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 111
    new-instance v1, Landroid/graphics/LinearGradient;

    const v4, -0x77d68601

    const v9, 0x2979ff

    const v10, 0x9c27b0

    const v11, -0x77459738

    const v12, -0x441fbf05

    filled-new-array {v10, v11, v12, v4, v9}, [I

    move-result-object v14

    new-array v15, v3, [F

    fill-array-data v15, :array_2

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v9, v1

    move v12, v2

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 117
    iget-object v4, v0, Lcom/gathin/tvhome/LineAnimationView;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 119
    new-instance v1, Landroid/graphics/LinearGradient;

    const v4, 0x7740c4ff

    const v9, 0x40c4ff

    const v10, 0xbfa5

    const v11, 0x7700e676

    const v12, -0x559b0026

    filled-new-array {v10, v11, v12, v4, v9}, [I

    move-result-object v14

    new-array v15, v3, [F

    fill-array-data v15, :array_3

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v9, v1

    move v12, v2

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 125
    iget-object v3, v0, Lcom/gathin/tvhome/LineAnimationView;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 127
    new-instance v1, Landroid/graphics/LinearGradient;

    const v3, 0x334285f4

    const v4, 0x447c4dff

    const v9, 0xe5ff

    filled-new-array {v9, v3, v4, v6}, [I

    move-result-object v14

    const/4 v15, 0x0

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 133
    iget-object v3, v0, Lcom/gathin/tvhome/LineAnimationView;->glowPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 135
    nop

    .line 136
    const/16 v1, 0x12

    int-to-float v3, v1

    div-float v15, v2, v3

    .line 139
    iget-object v2, v0, Lcom/gathin/tvhome/LineAnimationView;->path1:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 140
    const v2, 0x3ea3d70a    # 0.32f

    mul-float v14, v5, v2

    .line 141
    const/high16 v3, 0x3f400000    # 0.75f

    mul-float v3, v3, v8

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x42000000    # 32.0f

    mul-float v3, v3, v4

    add-float/2addr v3, v14

    .line 142
    iget-object v4, v0, Lcom/gathin/tvhome/LineAnimationView;->path1:Landroid/graphics/Path;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 143
    nop

    .line 144
    nop

    .line 145
    const/4 v9, 0x1

    const/4 v10, 0x0

    :goto_0
    const v11, 0x3ed70a3d    # 0.42f

    const/high16 v12, 0x40000000    # 2.0f

    if-gt v9, v1, :cond_1

    .line 146
    int-to-float v13, v9

    mul-float v16, v13, v15

    .line 147
    const v17, 0x3f59999a    # 0.85f

    mul-float v17, v17, v8

    mul-float v11, v11, v13

    add-float v11, v17, v11

    float-to-double v1, v11

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    const-wide/high16 v19, 0x4046000000000000L    # 44.0

    mul-double v1, v1, v19

    const v11, 0x3ee66666    # 0.45f

    mul-float v11, v11, v8

    const v19, 0x3e3851ec    # 0.18f

    mul-float v13, v13, v19

    add-float/2addr v11, v13

    move v13, v5

    float-to-double v4, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    const-wide/high16 v20, 0x4036000000000000L    # 22.0

    mul-double v4, v4, v20

    add-double/2addr v1, v4

    double-to-float v1, v1

    add-float/2addr v1, v14

    .line 148
    add-float v2, v10, v16

    div-float/2addr v2, v12

    .line 149
    add-float v4, v3, v1

    div-float/2addr v4, v12

    .line 150
    iget-object v5, v0, Lcom/gathin/tvhome/LineAnimationView;->path1:Landroid/graphics/Path;

    invoke-virtual {v5, v10, v3, v2, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 151
    nop

    .line 152
    nop

    .line 145
    add-int/lit8 v9, v9, 0x1

    move v3, v1

    move v5, v13

    move/from16 v10, v16

    const/16 v1, 0x12

    const v2, 0x3ea3d70a    # 0.32f

    goto :goto_0

    .line 154
    :cond_1
    move v13, v5

    iget-object v1, v0, Lcom/gathin/tvhome/LineAnimationView;->path1:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/gathin/tvhome/LineAnimationView;->glowPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 155
    iget-object v1, v0, Lcom/gathin/tvhome/LineAnimationView;->path1:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/gathin/tvhome/LineAnimationView;->paint1:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 158
    iget-object v1, v0, Lcom/gathin/tvhome/LineAnimationView;->path2:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 159
    const v1, 0x3ebd70a4    # 0.37f

    mul-float v14, v13, v1

    .line 160
    const v1, 0x3f2e147b    # 0.68f

    mul-float v1, v1, v8

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x42100000    # 36.0f

    mul-float v1, v1, v2

    add-float/2addr v1, v14

    .line 161
    iget-object v2, v0, Lcom/gathin/tvhome/LineAnimationView;->path2:Landroid/graphics/Path;

    invoke-virtual {v2, v6, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 162
    nop

    .line 163
    nop

    .line 164
    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_1
    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const/16 v9, 0x12

    if-gt v2, v9, :cond_2

    .line 165
    int-to-float v9, v2

    mul-float v10, v9, v15

    .line 166
    const v16, 0x3f3851ec    # 0.72f

    mul-float v16, v16, v8

    const v20, 0x3eb851ec    # 0.36f

    mul-float v20, v20, v9

    add-float v6, v16, v20

    float-to-double v11, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    const-wide/high16 v24, 0x4048000000000000L    # 48.0

    mul-double v11, v11, v24

    const v6, 0x3ec28f5c    # 0.38f

    mul-float v6, v6, v8

    mul-float v9, v9, v23

    add-float/2addr v6, v9

    move/from16 v22, v8

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v8, v8, v4

    add-double/2addr v11, v8

    double-to-float v4, v11

    add-float/2addr v4, v14

    .line 167
    add-float v5, v3, v10

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 168
    add-float v8, v1, v4

    div-float/2addr v8, v6

    .line 169
    iget-object v6, v0, Lcom/gathin/tvhome/LineAnimationView;->path2:Landroid/graphics/Path;

    invoke-virtual {v6, v3, v1, v5, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 170
    nop

    .line 171
    nop

    .line 164
    add-int/lit8 v2, v2, 0x1

    move v1, v4

    move v3, v10

    move/from16 v8, v22

    const/4 v6, 0x0

    const v11, 0x3ed70a3d    # 0.42f

    const/high16 v12, 0x40000000    # 2.0f

    goto :goto_1

    .line 173
    :cond_2
    move/from16 v22, v8

    iget-object v1, v0, Lcom/gathin/tvhome/LineAnimationView;->path2:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/gathin/tvhome/LineAnimationView;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 176
    iget-object v1, v0, Lcom/gathin/tvhome/LineAnimationView;->path3:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 177
    const v1, 0x3ed70a3d    # 0.42f

    mul-float v14, v13, v1

    .line 178
    const v1, 0x3f051eb8    # 0.52f

    mul-float v8, v22, v1

    const v1, 0x3f99999a    # 1.2f

    add-float/2addr v8, v1

    float-to-double v1, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x41e00000    # 28.0f

    mul-float v1, v1, v2

    add-float/2addr v1, v14

    .line 179
    iget-object v2, v0, Lcom/gathin/tvhome/LineAnimationView;->path3:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 180
    nop

    .line 181
    nop

    .line 182
    const/4 v2, 0x1

    const/4 v6, 0x0

    :goto_2
    const/16 v3, 0x12

    if-gt v2, v3, :cond_3

    .line 183
    int-to-float v8, v2

    mul-float v9, v8, v15

    .line 184
    const v10, 0x3f147ae1    # 0.58f

    mul-float v10, v10, v22

    const v11, 0x3ef5c28f    # 0.48f

    mul-float v11, v11, v8

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x4042000000000000L    # 36.0

    mul-double v10, v10, v12

    const v12, 0x3ea3d70a    # 0.32f

    mul-float v13, v22, v12

    const v16, 0x3e0f5c29    # 0.14f

    mul-float v8, v8, v16

    add-float/2addr v13, v8

    float-to-double v12, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double v12, v12, v4

    add-double/2addr v10, v12

    double-to-float v8, v10

    add-float/2addr v8, v14

    .line 185
    add-float v10, v6, v9

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    .line 186
    add-float v12, v1, v8

    div-float/2addr v12, v11

    .line 187
    iget-object v13, v0, Lcom/gathin/tvhome/LineAnimationView;->path3:Landroid/graphics/Path;

    invoke-virtual {v13, v6, v1, v10, v12}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 188
    nop

    .line 189
    nop

    .line 182
    add-int/lit8 v2, v2, 0x1

    move v1, v8

    move v6, v9

    goto :goto_2

    .line 191
    :cond_3
    iget-object v1, v0, Lcom/gathin/tvhome/LineAnimationView;->path3:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/gathin/tvhome/LineAnimationView;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 193
    iget-boolean v1, v0, Lcom/gathin/tvhome/LineAnimationView;->animating:Z

    if-eqz v1, :cond_4

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/gathin/tvhome/LineAnimationView;->postInvalidateOnAnimation()V

    .line 196
    :cond_4
    return-void

    .line 86
    :cond_5
    :goto_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3ee66666    # 0.45f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3e6147ae    # 0.22f
        0x3f051eb8    # 0.52f
        0x3f47ae14    # 0.78f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3e3851ec    # 0.18f
        0x3f0ccccd    # 0.55f
        0x3f51eb85    # 0.82f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3e8f5c29    # 0.28f
        0x3f1eb852    # 0.62f
        0x3f6147ae    # 0.88f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 74
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 75
    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/gathin/tvhome/LineAnimationView;->animating:Z

    .line 76
    iget-boolean p1, p0, Lcom/gathin/tvhome/LineAnimationView;->animating:Z

    if-eqz p1, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/gathin/tvhome/LineAnimationView;->postInvalidateOnAnimation()V

    .line 79
    :cond_1
    return-void
.end method
