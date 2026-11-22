.class public final Lcom/gathin/tvhome/PetalShowerView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final COLORS:[I


# instance fields
.field public color:[I

.field public count:I

.field public delay:[F

.field public final density:F

.field public drop:[F

.field public duration:J

.field public final edge:Landroid/graphics/Paint;

.field public final fill:Landroid/graphics/Paint;

.field public final finish:Lcom/gathin/tvhome/SleepTimer$$ExternalSyntheticLambda0;

.field public flipFreq:[F

.field public flipPhase:[F

.field public life:[F

.field public onDone:Ljava/lang/Runnable;

.field public playing:Z

.field public final rnd:Ljava/util/Random;

.field public rot0:[F

.field public shape:[I

.field public final shapes:[Landroid/graphics/Path;

.field public size:[F

.field public spin:[F

.field public start:J

.field public swayAmp:[F

.field public swayFreq:[F

.field public swayPhase:[F

.field public final vein:Landroid/graphics/Paint;

.field public final veins:[Landroid/graphics/Path;

.field public xFrac:[F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, -0x36c4

    const v1, -0x17a2fc

    const/16 v2, -0x73e6

    const/16 v3, -0x49d9

    const v4, -0xd95f3

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/gathin/tvhome/PetalShowerView;->COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v3, p1

    invoke-direct {v0, v3, v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, v0, Lcom/gathin/tvhome/PetalShowerView;->rnd:Ljava/util/Random;

    const/4 v1, 0x3

    new-array v4, v1, [Landroid/graphics/Path;

    iput-object v4, v0, Lcom/gathin/tvhome/PetalShowerView;->shapes:[Landroid/graphics/Path;

    new-array v1, v1, [Landroid/graphics/Path;

    iput-object v1, v0, Lcom/gathin/tvhome/PetalShowerView;->veins:[Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/gathin/tvhome/PetalShowerView;->fill:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/gathin/tvhome/PetalShowerView;->edge:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/gathin/tvhome/PetalShowerView;->vein:Landroid/graphics/Paint;

    new-array v1, v2, [F

    iput-object v1, v0, Lcom/gathin/tvhome/PetalShowerView;->xFrac:[F

    new-array v1, v2, [F

    iput-object v1, v0, Lcom/gathin/tvhome/PetalShowerView;->delay:[F

    new-array v1, v2, [F

    iput-object v1, v0, Lcom/gathin/tvhome/PetalShowerView;->life:[F

    new-array v1, v2, [F

    iput-object v1, v0, Lcom/gathin/tvhome/PetalShowerView;->drop:[F

    new-array v1, v2, [F

    iput-object v1, v0, Lcom/gathin/tvhome/PetalShowerView;->size:[F

    new-array v1, v2, [F

    iput-object v1, v0, Lcom/gathin/tvhome/PetalShowerView;->swayAmp:[F

    new-array v1, v2, [F

    iput-object v1, v0, Lcom/gathin/tvhome/PetalShowerView;->swayFreq:[F

    new-array v1, v2, [F

    iput-object v1, v0, Lcom/gathin/tvhome/PetalShowerView;->swayPhase:[F

    new-array v1, v2, [F

    iput-object v1, v0, Lcom/gathin/tvhome/PetalShowerView;->rot0:[F

    new-array v1, v2, [F

    iput-object v1, v0, Lcom/gathin/tvhome/PetalShowerView;->spin:[F

    new-array v1, v2, [F

    iput-object v1, v0, Lcom/gathin/tvhome/PetalShowerView;->flipFreq:[F

    new-array v1, v2, [F

    iput-object v1, v0, Lcom/gathin/tvhome/PetalShowerView;->flipPhase:[F

    new-array v1, v2, [I

    iput-object v1, v0, Lcom/gathin/tvhome/PetalShowerView;->color:[I

    new-array v1, v2, [I

    iput-object v1, v0, Lcom/gathin/tvhome/PetalShowerView;->shape:[I

    new-instance v1, Lcom/gathin/tvhome/SleepTimer$$ExternalSyntheticLambda0;

    const/4 v4, 0x6

    invoke-direct {v1, v0, v4}, Lcom/gathin/tvhome/SleepTimer$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v1, v0, Lcom/gathin/tvhome/PetalShowerView;->finish:Lcom/gathin/tvhome/SleepTimer$$ExternalSyntheticLambda0;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Lcom/gathin/tvhome/PetalShowerView;->density:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v3, Ljava/util/Random;

    const-wide/32 v4, 0x9e7a1

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    move v4, v2

    :goto_0
    iget-object v5, v0, Lcom/gathin/tvhome/PetalShowerView;->shapes:[Landroid/graphics/Path;

    array-length v6, v5

    if-ge v4, v6, :cond_2

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v7

    const v8, 0x3da3d70a    # 0.08f

    mul-float/2addr v7, v8

    const v8, 0x3eb851ec    # 0.36f

    add-float v14, v7, v8

    const/4 v15, 0x0

    const/high16 v13, 0x3f000000    # 0.5f

    invoke-virtual {v6, v15, v13}, Landroid/graphics/Path;->moveTo(FF)V

    neg-float v12, v14

    const v16, 0x3d23d70a    # 0.04f

    sub-float v10, v12, v16

    const v11, 0x3ca3d70a    # 0.02f

    const v17, -0x41666666    # -0.3f

    const v8, -0x41dc28f6    # -0.16f

    const v9, 0x3eb851ec    # 0.36f

    move-object v7, v6

    move/from16 v18, v12

    move/from16 v19, v13

    move/from16 v13, v17

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/lit8 v8, v7, 0x4

    move v9, v2

    :goto_1
    const v17, 0x3d75c28f    # 0.06f

    const v12, 0x3e4ccccd    # 0.2f

    if-ge v9, v8, :cond_1

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v10, v14

    int-to-float v11, v9

    add-float v20, v11, v19

    mul-float v20, v20, v10

    int-to-float v1, v8

    div-float v20, v20, v1

    add-float v2, v20, v18

    const/high16 v20, 0x3f800000    # 1.0f

    add-float v11, v11, v20

    mul-float/2addr v11, v10

    div-float/2addr v11, v1

    add-float v11, v11, v18

    div-float v1, v2, v14

    mul-float/2addr v1, v1

    mul-float/2addr v1, v12

    const/high16 v10, -0x41000000    # -0.5f

    add-float/2addr v1, v10

    sub-float v1, v1, v17

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v17

    const v20, 0x3d4ccccd    # 0.05f

    mul-float v17, v17, v20

    sub-float v1, v1, v17

    add-int/lit8 v13, v7, 0x3

    if-ne v9, v13, :cond_0

    const v13, -0x41666666    # -0.3f

    goto :goto_2

    :cond_0
    div-float v13, v11, v14

    mul-float/2addr v13, v13

    mul-float/2addr v13, v12

    add-float/2addr v13, v10

    add-float v13, v13, v20

    const v10, 0x3cf5c28f    # 0.03f

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v12

    mul-float/2addr v12, v10

    add-float/2addr v13, v12

    :goto_2
    invoke-virtual {v6, v2, v1, v11, v13}, Landroid/graphics/Path;->quadTo(FFFF)V

    add-int/lit8 v9, v9, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    add-float v8, v14, v16

    const/4 v1, 0x0

    const/high16 v13, 0x3f000000    # 0.5f

    const v9, 0x3ca3d70a    # 0.02f

    const v10, 0x3e23d70a    # 0.16f

    const v11, 0x3eb851ec    # 0.36f

    move-object v7, v6

    move v2, v12

    move v12, v1

    const v1, -0x41666666    # -0.3f

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    aput-object v6, v5, v4

    iget-object v5, v0, Lcom/gathin/tvhome/PetalShowerView;->veins:[Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v7

    sub-float v7, v7, v19

    mul-float v7, v7, v17

    const v8, 0x3ed70a3d    # 0.42f

    invoke-virtual {v6, v15, v8}, Landroid/graphics/Path;->moveTo(FF)V

    const v8, -0x4147ae14    # -0.36f

    invoke-virtual {v6, v7, v15, v15, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    const v7, 0x3e99999a    # 0.3f

    invoke-virtual {v6, v15, v7}, Landroid/graphics/Path;->moveTo(FF)V

    const v8, -0x420a3d71    # -0.12f

    const v9, -0x42b33333    # -0.05f

    const v10, -0x41b33333    # -0.2f

    invoke-virtual {v6, v8, v9, v10, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v6, v15, v7}, Landroid/graphics/Path;->moveTo(FF)V

    const v7, 0x3df5c28f    # 0.12f

    invoke-virtual {v6, v7, v9, v2, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_2
    iget-object v1, v0, Lcom/gathin/tvhome/PetalShowerView;->edge:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lcom/gathin/tvhome/PetalShowerView;->edge:Landroid/graphics/Paint;

    const v3, 0x3d3851ec    # 0.045f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Lcom/gathin/tvhome/PetalShowerView;->edge:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v1, v0, Lcom/gathin/tvhome/PetalShowerView;->vein:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lcom/gathin/tvhome/PetalShowerView;->vein:Landroid/graphics/Paint;

    const v2, 0x3d0f5c29    # 0.035f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Lcom/gathin/tvhome/PetalShowerView;->vein:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, v0, Lcom/gathin/tvhome/PetalShowerView;->vein:Landroid/graphics/Paint;

    const v2, -0x85d800

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public static scale(IF)I
    .locals 3

    shr-int/lit8 v0, p0, 0x10

    const/16 v1, 0xff

    and-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    shr-int/lit8 v2, p0, 0x8

    and-int/2addr v2, v1

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    and-int/2addr p0, v1

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/high16 p1, -0x1000000

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x8

    or-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final finish()V
    .locals 2

    iget-boolean v0, p0, Lcom/gathin/tvhome/PetalShowerView;->playing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gathin/tvhome/PetalShowerView;->playing:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/gathin/tvhome/PetalShowerView;->onDone:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gathin/tvhome/PetalShowerView;->onDone:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/gathin/tvhome/PetalShowerView;->playing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gathin/tvhome/PetalShowerView;->finish:Lcom/gathin/tvhome/SleepTimer$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/gathin/tvhome/PetalShowerView;->finish()V

    :cond_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/gathin/tvhome/PetalShowerView;->playing:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/gathin/tvhome/PetalShowerView;->start:J

    sub-long v6, v2, v4

    long-to-float v6, v6

    iget-wide v7, v0, Lcom/gathin/tvhome/PetalShowerView;->duration:J

    long-to-float v7, v7

    div-float/2addr v6, v7

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    :goto_0
    iget v7, v0, Lcom/gathin/tvhome/PetalShowerView;->count:I

    if-ge v5, v7, :cond_7

    iget-object v7, v0, Lcom/gathin/tvhome/PetalShowerView;->delay:[F

    aget v7, v7, v5

    sub-float v7, v6, v7

    iget-object v8, v0, Lcom/gathin/tvhome/PetalShowerView;->life:[F

    aget v8, v8, v5

    div-float/2addr v7, v8

    const/4 v8, 0x0

    cmpg-float v9, v7, v8

    if-lez v9, :cond_1

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v10, v7, v9

    if-ltz v10, :cond_2

    :cond_1
    move v8, v3

    move v11, v4

    move/from16 v18, v6

    goto/16 :goto_4

    :cond_2
    iget-object v10, v0, Lcom/gathin/tvhome/PetalShowerView;->size:[F

    aget v10, v10, v5

    iget v11, v0, Lcom/gathin/tvhome/PetalShowerView;->density:F

    mul-float/2addr v10, v11

    mul-float v12, v7, v7

    add-float/2addr v12, v7

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    neg-float v13, v10

    const/high16 v14, 0x3fc00000    # 1.5f

    mul-float/2addr v13, v14

    iget-object v15, v0, Lcom/gathin/tvhome/PetalShowerView;->drop:[F

    aget v15, v15, v5

    mul-float/2addr v15, v4

    mul-float/2addr v14, v10

    add-float/2addr v14, v15

    mul-float/2addr v14, v12

    add-float/2addr v14, v13

    iget-object v12, v0, Lcom/gathin/tvhome/PetalShowerView;->swayFreq:[F

    aget v12, v12, v5

    float-to-double v12, v12

    const-wide v15, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v12, v15

    move/from16 v17, v10

    float-to-double v9, v2

    mul-double/2addr v12, v9

    iget-object v8, v0, Lcom/gathin/tvhome/PetalShowerView;->swayPhase:[F

    aget v8, v8, v5

    move/from16 v18, v6

    move/from16 v19, v7

    float-to-double v6, v8

    add-double/2addr v12, v6

    iget-object v6, v0, Lcom/gathin/tvhome/PetalShowerView;->xFrac:[F

    aget v6, v6, v5

    mul-float/2addr v6, v3

    iget-object v7, v0, Lcom/gathin/tvhome/PetalShowerView;->swayAmp:[F

    aget v7, v7, v5

    mul-float/2addr v7, v11

    move v8, v3

    move v11, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v7, v3

    add-float/2addr v7, v6

    iget-object v3, v0, Lcom/gathin/tvhome/PetalShowerView;->rot0:[F

    aget v3, v3, v5

    iget-object v4, v0, Lcom/gathin/tvhome/PetalShowerView;->spin:[F

    aget v4, v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v4, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v3, v12

    const/high16 v6, 0x41b00000    # 22.0f

    mul-float/2addr v3, v6

    add-float/2addr v3, v4

    iget-object v4, v0, Lcom/gathin/tvhome/PetalShowerView;->flipFreq:[F

    aget v4, v4, v5

    float-to-double v12, v4

    mul-double/2addr v12, v15

    mul-double/2addr v12, v9

    iget-object v4, v0, Lcom/gathin/tvhome/PetalShowerView;->flipPhase:[F

    aget v4, v4, v5

    float-to-double v9, v4

    add-double/2addr v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v4, v9

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v9, 0x3da3d70a    # 0.08f

    cmpg-float v6, v6, v9

    if-gez v6, :cond_3

    const/4 v6, 0x0

    cmpg-float v10, v4, v6

    if-gez v10, :cond_4

    const v9, -0x425c28f6    # -0.08f

    goto :goto_1

    :cond_3
    move v9, v4

    :cond_4
    :goto_1
    const/high16 v6, 0x3f400000    # 0.75f

    cmpl-float v10, v19, v6

    if-lez v10, :cond_5

    sub-float v6, v19, v6

    const/high16 v10, 0x3e800000    # 0.25f

    div-float/2addr v6, v10

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v6, v10, v6

    const/high16 v12, 0x437f0000    # 255.0f

    mul-float/2addr v6, v12

    float-to-int v6, v6

    :goto_2
    const/4 v12, 0x0

    goto :goto_3

    :cond_5
    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v6, 0xff

    goto :goto_2

    :goto_3
    cmpg-float v12, v4, v12

    if-gez v12, :cond_6

    const v10, 0x3f47ae14    # 0.78f

    :cond_6
    const v12, 0x3e4ccccd    # 0.2f

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v12

    const v12, 0x3f4ccccd    # 0.8f

    add-float/2addr v4, v12

    mul-float/2addr v4, v10

    sget-object v10, Lcom/gathin/tvhome/PetalShowerView;->COLORS:[I

    iget-object v12, v0, Lcom/gathin/tvhome/PetalShowerView;->color:[I

    aget v12, v12, v5

    aget v10, v10, v12

    iget-object v12, v0, Lcom/gathin/tvhome/PetalShowerView;->fill:Landroid/graphics/Paint;

    invoke-static {v10, v4}, Lcom/gathin/tvhome/PetalShowerView;->scale(IF)I

    move-result v4

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lcom/gathin/tvhome/PetalShowerView;->edge:Landroid/graphics/Paint;

    const v13, 0x3f0ccccd    # 0.55f

    invoke-static {v10, v13}, Lcom/gathin/tvhome/PetalShowerView;->scale(IF)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setColor(I)V

    mul-int/lit8 v10, v6, 0x3

    div-int/lit8 v10, v10, 0x4

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v10, v0, Lcom/gathin/tvhome/PetalShowerView;->vein:Landroid/graphics/Paint;

    div-int/lit8 v6, v6, 0x4

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v1, v7, v14}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    mul-float v3, v17, v9

    move/from16 v6, v17

    invoke-virtual {v1, v3, v6}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v3, v0, Lcom/gathin/tvhome/PetalShowerView;->shape:[I

    aget v3, v3, v5

    iget-object v6, v0, Lcom/gathin/tvhome/PetalShowerView;->shapes:[Landroid/graphics/Path;

    aget-object v3, v6, v3

    invoke-virtual {v1, v3, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v3, v0, Lcom/gathin/tvhome/PetalShowerView;->shape:[I

    aget v3, v3, v5

    aget-object v3, v6, v3

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v3, v0, Lcom/gathin/tvhome/PetalShowerView;->shape:[I

    aget v3, v3, v5

    iget-object v4, v0, Lcom/gathin/tvhome/PetalShowerView;->veins:[Landroid/graphics/Path;

    aget-object v3, v4, v3

    invoke-virtual {v1, v3, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_4
    add-int/lit8 v5, v5, 0x1

    move v3, v8

    move v4, v11

    move/from16 v6, v18

    goto/16 :goto_0

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method
