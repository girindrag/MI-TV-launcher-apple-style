.class public final Lcom/gathin/tvhome/DiyaDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field public static final DOTS:[F

.field public static final LEVEL_SCALE:[F

.field public static final OUT_END_MS:J


# instance fields
.field public alpha:I

.field public final body:Landroid/graphics/Path;

.field public final bodyPaint:Landroid/graphics/Paint;

.field public final core:Landroid/graphics/Path;

.field public final corePaint:Landroid/graphics/Paint;

.field public final coreShader:Landroid/graphics/LinearGradient;

.field public final density:F

.field public final dotPaint:Landroid/graphics/Paint;

.field public final edgePaint:Landroid/graphics/Paint;

.field public final emberPaint:Landroid/graphics/Paint;

.field public final epoch:J

.field public final flame:Landroid/graphics/Path;

.field public final flamePaint:Landroid/graphics/Paint;

.field public final flameShader:Landroid/graphics/LinearGradient;

.field public final foot:Landroid/graphics/RectF;

.field public final footPaint:Landroid/graphics/Paint;

.field public final glowPaint:Landroid/graphics/Paint;

.field public final glowShader:Landroid/graphics/RadialGradient;

.field public level:I

.field public final lipPaint:Landroid/graphics/Paint;

.field public final matrix:Landroid/graphics/Matrix;

.field public final noise:[F

.field public final opening:Landroid/graphics/Path;

.field public final openingEdge:Landroid/graphics/Paint;

.field public final openingPaint:Landroid/graphics/Paint;

.field public outFrom:F

.field public final outlinePaint:Landroid/graphics/Paint;

.field public final oval:Landroid/graphics/RectF;

.field public final paints:[Landroid/graphics/Paint;

.field public phase:I

.field public phaseStart:J

.field public primed:Z

.field public final rayPaint:Landroid/graphics/Paint;

.field public reduced:Z

.field public final rimLip:Landroid/graphics/Path;

.field public running:Z

.field public scaleFrom:F

.field public scaleStart:J

.field public scaleTo:F

.field public final sheen:Landroid/graphics/Path;

.field public final sheenPaint:Landroid/graphics/Paint;

.field public final smoke:Landroid/graphics/Path;

.field public final smokePaint:Landroid/graphics/Paint;

.field public final smokeShader:Landroid/graphics/LinearGradient;

.field public final sparkPaint:Landroid/graphics/Paint;

.field public final sparkShader:Landroid/graphics/RadialGradient;

.field public steady:Z

.field public final tick:Lcom/gathin/tvhome/ClockScene$1;

.field public final warmPaint:Landroid/graphics/Paint;

.field public final wickPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v0, 0x15e

    const-wide/16 v2, 0x488

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/gathin/tvhome/DiyaDrawable;->OUT_END_MS:J

    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/gathin/tvhome/DiyaDrawable;->LEVEL_SCALE:[F

    const/16 v0, 0xa

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/gathin/tvhome/DiyaDrawable;->DOTS:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3eeb851f    # 0.46f
        0x3f23d70a    # 0.64f
        0x3f51eb85    # 0.82f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x40a00000    # 5.0f
        0x418ccccd    # 17.6f
        0x40eccccd    # 7.4f
        0x41940000    # 18.5f
        0x411e6666    # 9.9f
        0x41966666    # 18.8f
        0x41466666    # 12.4f
        0x41933333    # 18.4f
        0x4169999a    # 14.6f
        0x418a6666    # 17.3f
    .end array-data
.end method

.method public constructor <init>(F)V
    .locals 32

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v1, 0x100

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/gathin/tvhome/DiyaDrawable;->noise:[F

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lcom/gathin/tvhome/DiyaDrawable;->body:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lcom/gathin/tvhome/DiyaDrawable;->opening:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lcom/gathin/tvhome/DiyaDrawable;->rimLip:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lcom/gathin/tvhome/DiyaDrawable;->sheen:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lcom/gathin/tvhome/DiyaDrawable;->flame:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lcom/gathin/tvhome/DiyaDrawable;->core:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lcom/gathin/tvhome/DiyaDrawable;->smoke:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    const v2, 0x40e66666    # 7.2f

    const/high16 v3, 0x41a00000    # 20.0f

    const v4, 0x41466666    # 12.4f

    const v5, 0x41b33333    # 22.4f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/gathin/tvhome/DiyaDrawable;->foot:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/gathin/tvhome/DiyaDrawable;->oval:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Lcom/gathin/tvhome/DiyaDrawable;->matrix:Landroid/graphics/Matrix;

    const/4 v1, 0x4

    iput v1, v0, Lcom/gathin/tvhome/DiyaDrawable;->level:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lcom/gathin/tvhome/DiyaDrawable;->scaleFrom:F

    iput v2, v0, Lcom/gathin/tvhome/DiyaDrawable;->scaleTo:F

    const/4 v3, 0x0

    iput v3, v0, Lcom/gathin/tvhome/DiyaDrawable;->phase:I

    const/16 v4, 0xff

    iput v4, v0, Lcom/gathin/tvhome/DiyaDrawable;->alpha:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/gathin/tvhome/DiyaDrawable;->epoch:J

    new-instance v4, Lcom/gathin/tvhome/ClockScene$1;

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5}, Lcom/gathin/tvhome/ClockScene$1;-><init>(Ljava/lang/Object;I)V

    iput-object v4, v0, Lcom/gathin/tvhome/DiyaDrawable;->tick:Lcom/gathin/tvhome/ClockScene$1;

    move/from16 v4, p1

    iput v4, v0, Lcom/gathin/tvhome/DiyaDrawable;->density:F

    new-instance v4, Ljava/util/Random;

    const-wide/32 v6, 0xd1a5

    invoke-direct {v4, v6, v7}, Ljava/util/Random;-><init>(J)V

    :goto_0
    iget-object v6, v0, Lcom/gathin/tvhome/DiyaDrawable;->noise:[F

    array-length v7, v6

    if-ge v3, v7, :cond_0

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    sub-float/2addr v7, v2

    aput v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/gathin/tvhome/DiyaDrawable;->body:Landroid/graphics/Path;

    const v3, 0x3fcccccd    # 1.6f

    const v4, 0x41633333    # 14.2f

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, v0, Lcom/gathin/tvhome/DiyaDrawable;->body:Landroid/graphics/Path;

    const v7, 0x3fe66666    # 1.8f

    const v8, 0x4194cccd    # 18.6f

    const v9, 0x40accccd    # 5.4f

    const/high16 v10, 0x41a80000    # 21.0f

    const v11, 0x4119999a    # 9.6f

    const/high16 v12, 0x41a80000    # 21.0f

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v13, v0, Lcom/gathin/tvhome/DiyaDrawable;->body:Landroid/graphics/Path;

    const v14, 0x41533333    # 13.2f

    const/high16 v15, 0x41a80000    # 21.0f

    const v16, 0x4179999a    # 15.6f

    const v17, 0x419b3333    # 19.4f

    const v18, 0x41866666    # 16.8f

    const v19, 0x4184cccd    # 16.6f

    invoke-virtual/range {v13 .. v19}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v6, v0, Lcom/gathin/tvhome/DiyaDrawable;->body:Landroid/graphics/Path;

    const v7, 0x418ccccd    # 17.6f

    const/high16 v8, 0x41700000    # 15.0f

    const v9, 0x4194cccd    # 18.6f

    const v10, 0x4159999a    # 13.6f

    const v11, 0x41a1999a    # 20.2f

    const v12, 0x41466666    # 12.4f

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const v3, 0x419f3333    # 19.9f

    const v6, 0x413e6666    # 11.9f

    const/high16 v7, 0x41a40000    # 20.5f

    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {v2, v7, v8, v3, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v9, v0, Lcom/gathin/tvhome/DiyaDrawable;->body:Landroid/graphics/Path;

    const v10, 0x4191999a    # 18.2f

    const v11, 0x4141999a    # 12.1f

    const v12, 0x41866666    # 16.8f

    const v13, 0x4149999a    # 12.6f

    const v14, 0x41766666    # 15.4f

    const/high16 v15, 0x41500000    # 13.0f

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v3, v0, Lcom/gathin/tvhome/DiyaDrawable;->body:Landroid/graphics/Path;

    const/high16 v17, 0x41400000    # 12.0f

    const v18, 0x4139999a    # 11.6f

    const/high16 v19, 0x40a00000    # 5.0f

    const v20, 0x413ccccd    # 11.8f

    const v21, 0x3fcccccd    # 1.6f

    const v22, 0x41633333    # 14.2f

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    iget-object v2, v0, Lcom/gathin/tvhome/DiyaDrawable;->opening:Landroid/graphics/Path;

    const v3, 0x40266666    # 2.6f

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, v0, Lcom/gathin/tvhome/DiyaDrawable;->opening:Landroid/graphics/Path;

    const v7, 0x40b33333    # 5.6f

    const v8, 0x4149999a    # 12.6f

    const v9, 0x413ccccd    # 11.8f

    const/high16 v10, 0x41480000    # 12.5f

    const v11, 0x41733333    # 15.2f

    const v12, 0x41566666    # 13.4f

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v13, v0, Lcom/gathin/tvhome/DiyaDrawable;->opening:Landroid/graphics/Path;

    const v14, 0x4184cccd    # 16.6f

    const v16, 0x418e6666    # 17.8f

    const v17, 0x414b3333    # 12.7f

    const v18, 0x4199999a    # 19.2f

    const v19, 0x41466666    # 12.4f

    invoke-virtual/range {v13 .. v19}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v6, v0, Lcom/gathin/tvhome/DiyaDrawable;->opening:Landroid/graphics/Path;

    const v7, 0x418ccccd    # 17.6f

    const v8, 0x41566666    # 13.4f

    const v9, 0x4184cccd    # 16.6f

    const/high16 v10, 0x41600000    # 14.0f

    const v11, 0x41766666    # 15.4f

    const v12, 0x4169999a    # 14.6f

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v13, v0, Lcom/gathin/tvhome/DiyaDrawable;->opening:Landroid/graphics/Path;

    const v14, 0x4139999a    # 11.6f

    const v15, 0x41833333    # 16.4f

    const/high16 v16, 0x40a00000    # 5.0f

    const v17, 0x4181999a    # 16.2f

    const v18, 0x40266666    # 2.6f

    const v19, 0x41633333    # 14.2f

    invoke-virtual/range {v13 .. v19}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    iget-object v2, v0, Lcom/gathin/tvhome/DiyaDrawable;->rimLip:Landroid/graphics/Path;

    const v3, 0x402ccccd    # 2.7f

    const v4, 0x416a6666    # 14.65f

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, v0, Lcom/gathin/tvhome/DiyaDrawable;->rimLip:Landroid/graphics/Path;

    const v7, 0x40a33333    # 5.1f

    const v8, 0x41853333    # 16.65f

    const v9, 0x4139999a    # 11.6f

    const v10, 0x4186cccd    # 16.85f

    const/high16 v11, 0x41780000    # 15.5f

    const/high16 v12, 0x41700000    # 15.0f

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v13, v0, Lcom/gathin/tvhome/DiyaDrawable;->rimLip:Landroid/graphics/Path;

    const v14, 0x4185999a    # 16.7f

    const v15, 0x41666666    # 14.4f

    const v16, 0x418d999a    # 17.7f

    const v17, 0x415ccccd    # 13.8f

    const v18, 0x419b3333    # 19.4f

    const/high16 v19, 0x414c0000    # 12.75f

    invoke-virtual/range {v13 .. v19}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v2, v0, Lcom/gathin/tvhome/DiyaDrawable;->sheen:Landroid/graphics/Path;

    const v3, 0x404ccccd    # 3.2f

    const v4, 0x41766666    # 15.4f

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const v3, 0x40dccccd    # 6.9f

    const v4, 0x419d999a    # 19.7f

    const/high16 v6, 0x40800000    # 4.0f

    const v7, 0x41933333    # 18.4f

    invoke-virtual {v2, v6, v7, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    const v2, -0x71c1e2

    invoke-static {v2}, Lcom/gathin/tvhome/DiyaDrawable;->fill(I)Landroid/graphics/Paint;

    move-result-object v2

    move-object v6, v2

    iput-object v2, v0, Lcom/gathin/tvhome/DiyaDrawable;->footPaint:Landroid/graphics/Paint;

    const v2, -0x3b9ed1

    invoke-static {v2}, Lcom/gathin/tvhome/DiyaDrawable;->fill(I)Landroid/graphics/Paint;

    move-result-object v3

    move-object v7, v3

    iput-object v3, v0, Lcom/gathin/tvhome/DiyaDrawable;->bodyPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/RadialGradient;

    const v8, -0x91d3ec

    const v9, -0x1a73a9

    const v10, -0x65bde0

    filled-new-array {v9, v2, v10, v8}, [I

    move-result-object v12

    const v15, 0x3f333333    # 0.7f

    new-array v13, v1, [F

    fill-array-data v13, :array_0

    sget-object v29, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v10, 0x41680000    # 14.5f

    const/high16 v11, 0x41500000    # 13.0f

    const/high16 v9, 0x40f00000    # 7.5f

    move-object v8, v4

    move-object/from16 v14, v29

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/16 v3, -0x4cb9

    invoke-static {v3}, Lcom/gathin/tvhome/DiyaDrawable;->fill(I)Landroid/graphics/Paint;

    move-result-object v3

    move-object v8, v3

    iput-object v3, v0, Lcom/gathin/tvhome/DiyaDrawable;->warmPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/RadialGradient;

    const v9, -0x59004cb9

    const v10, 0x40ff9a2a

    const v14, 0xff8a1a

    filled-new-array {v9, v10, v14}, [I

    move-result-object v20

    new-array v9, v5, [F

    fill-array-data v9, :array_1

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    move-object/from16 v16, v4

    move-object/from16 v21, v9

    move-object/from16 v22, v29

    invoke-direct/range {v16 .. v22}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v9, v0, Lcom/gathin/tvhome/DiyaDrawable;->matrix:Landroid/graphics/Matrix;

    const/high16 v10, 0x41100000    # 9.0f

    invoke-virtual {v9, v10, v10}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v9, v0, Lcom/gathin/tvhome/DiyaDrawable;->matrix:Landroid/graphics/Matrix;

    const/high16 v10, 0x41940000    # 18.5f

    const v11, 0x4141999a    # 12.1f

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v9, v0, Lcom/gathin/tvhome/DiyaDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v9}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const v3, -0xb5e1f2

    invoke-static {v3}, Lcom/gathin/tvhome/DiyaDrawable;->fill(I)Landroid/graphics/Paint;

    move-result-object v3

    move-object v9, v3

    iput-object v3, v0, Lcom/gathin/tvhome/DiyaDrawable;->openingPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/LinearGradient;

    const v10, -0x85bbea

    const v11, -0xc4e8f6

    const v12, -0xa5d5f0    # -2.899901E38f

    filled-new-array {v11, v12, v10}, [I

    move-result-object v21

    const/high16 v19, 0x41980000    # 19.0f

    const/16 v20, 0x0

    const v17, 0x40266666    # 2.6f

    const/16 v22, 0x0

    move-object/from16 v16, v4

    move-object/from16 v23, v29

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const v3, -0xb5e5f6

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v3, v4}, Lcom/gathin/tvhome/DiyaDrawable;->stroke(IF)Landroid/graphics/Paint;

    move-result-object v3

    move-object v10, v3

    iput-object v3, v0, Lcom/gathin/tvhome/DiyaDrawable;->openingEdge:Landroid/graphics/Paint;

    const/16 v3, -0x1f5d

    invoke-static {v3}, Lcom/gathin/tvhome/DiyaDrawable;->fill(I)Landroid/graphics/Paint;

    move-result-object v3

    move-object v11, v3

    iput-object v3, v0, Lcom/gathin/tvhome/DiyaDrawable;->dotPaint:Landroid/graphics/Paint;

    const v3, -0x116598

    const v4, 0x3f19999a    # 0.6f

    invoke-static {v3, v4}, Lcom/gathin/tvhome/DiyaDrawable;->stroke(IF)Landroid/graphics/Paint;

    move-result-object v3

    move-object v12, v3

    iput-object v3, v0, Lcom/gathin/tvhome/DiyaDrawable;->lipPaint:Landroid/graphics/Paint;

    const v3, 0x73ffe8d2

    const/high16 v13, 0x3f400000    # 0.75f

    invoke-static {v3, v13}, Lcom/gathin/tvhome/DiyaDrawable;->stroke(IF)Landroid/graphics/Paint;

    move-result-object v3

    move-object v13, v3

    iput-object v3, v0, Lcom/gathin/tvhome/DiyaDrawable;->sheenPaint:Landroid/graphics/Paint;

    const v3, -0xc2ebf8

    invoke-static {v3, v15}, Lcom/gathin/tvhome/DiyaDrawable;->stroke(IF)Landroid/graphics/Paint;

    move-result-object v3

    move v15, v14

    move-object v14, v3

    iput-object v3, v0, Lcom/gathin/tvhome/DiyaDrawable;->outlinePaint:Landroid/graphics/Paint;

    const v3, -0xd4ebf6

    invoke-static {v3, v4}, Lcom/gathin/tvhome/DiyaDrawable;->stroke(IF)Landroid/graphics/Paint;

    move-result-object v3

    move v2, v15

    move-object v15, v3

    iput-object v3, v0, Lcom/gathin/tvhome/DiyaDrawable;->wickPaint:Landroid/graphics/Paint;

    const/16 v3, -0x4fc0

    invoke-static {v3}, Lcom/gathin/tvhome/DiyaDrawable;->fill(I)Landroid/graphics/Paint;

    move-result-object v3

    move-object/from16 v16, v3

    iput-object v3, v0, Lcom/gathin/tvhome/DiyaDrawable;->glowPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/RadialGradient;

    const v1, -0x66003ba6

    move-object/from16 v30, v6

    const v6, 0x44ff9a2a

    filled-new-array {v1, v6, v2}, [I

    move-result-object v21

    new-array v1, v5, [F

    fill-array-data v1, :array_2

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v17, v4

    move-object/from16 v22, v1

    invoke-direct/range {v17 .. v23}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v4, v0, Lcom/gathin/tvhome/DiyaDrawable;->glowShader:Landroid/graphics/RadialGradient;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/16 v1, -0x65d6

    invoke-static {v1}, Lcom/gathin/tvhome/DiyaDrawable;->fill(I)Landroid/graphics/Paint;

    move-result-object v1

    move-object/from16 v17, v1

    iput-object v1, v0, Lcom/gathin/tvhome/DiyaDrawable;->flamePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    const v3, -0x85ec

    const/16 v4, -0x59d5

    const v6, -0x26bcf5

    const/16 v5, -0x47c1

    move-object/from16 v31, v7

    const v7, -0xf75dc

    filled-new-array {v6, v3, v4, v5, v7}, [I

    move-result-object v23

    const/4 v3, 0x5

    new-array v3, v3, [F

    fill-array-data v3, :array_3

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    move-object/from16 v18, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v29

    invoke-direct/range {v18 .. v25}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lcom/gathin/tvhome/DiyaDrawable;->flameShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const v1, -0x47bff6

    const v2, 0x3e8f5c29    # 0.28f

    invoke-static {v1, v2}, Lcom/gathin/tvhome/DiyaDrawable;->stroke(IF)Landroid/graphics/Paint;

    move-result-object v1

    move-object/from16 v18, v1

    iput-object v1, v0, Lcom/gathin/tvhome/DiyaDrawable;->edgePaint:Landroid/graphics/Paint;

    const/16 v1, -0xf48

    invoke-static {v1}, Lcom/gathin/tvhome/DiyaDrawable;->fill(I)Landroid/graphics/Paint;

    move-result-object v2

    move-object/from16 v19, v2

    iput-object v2, v0, Lcom/gathin/tvhome/DiyaDrawable;->corePaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/LinearGradient;

    const/16 v4, -0x165a

    const/16 v5, -0x2da6

    const/16 v6, -0x71f

    filled-new-array {v5, v1, v6, v4}, [I

    move-result-object v25

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_4

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    move-object/from16 v20, v3

    move-object/from16 v26, v1

    move-object/from16 v27, v29

    invoke-direct/range {v20 .. v27}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v3, v0, Lcom/gathin/tvhome/DiyaDrawable;->coreShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const v1, -0x5f5f60

    const v2, 0x3f19999a    # 0.6f

    invoke-static {v1, v2}, Lcom/gathin/tvhome/DiyaDrawable;->stroke(IF)Landroid/graphics/Paint;

    move-result-object v1

    move-object/from16 v20, v1

    iput-object v1, v0, Lcom/gathin/tvhome/DiyaDrawable;->smokePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    const v3, -0x717172

    const v4, 0xa0a0a0

    const v5, -0x4f656566

    filled-new-array {v4, v5, v3}, [I

    move-result-object v26

    const/4 v3, 0x3

    new-array v4, v3, [F

    fill-array-data v4, :array_5

    const/16 v24, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v21, v2

    move-object/from16 v27, v4

    move-object/from16 v28, v29

    invoke-direct/range {v21 .. v28}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lcom/gathin/tvhome/DiyaDrawable;->smokeShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const v1, -0xa5e6

    invoke-static {v1}, Lcom/gathin/tvhome/DiyaDrawable;->fill(I)Landroid/graphics/Paint;

    move-result-object v1

    move-object/from16 v21, v1

    iput-object v1, v0, Lcom/gathin/tvhome/DiyaDrawable;->emberPaint:Landroid/graphics/Paint;

    const/16 v1, -0xb38

    invoke-static {v1}, Lcom/gathin/tvhome/DiyaDrawable;->fill(I)Landroid/graphics/Paint;

    move-result-object v2

    move-object/from16 v22, v2

    iput-object v2, v0, Lcom/gathin/tvhome/DiyaDrawable;->sparkPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/RadialGradient;

    const v4, -0x33003db6

    const v5, 0xff9a20

    filled-new-array {v1, v4, v5}, [I

    move-result-object v27

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_6

    const/16 v25, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    move-object/from16 v23, v3

    move-object/from16 v28, v1

    invoke-direct/range {v23 .. v29}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v3, v0, Lcom/gathin/tvhome/DiyaDrawable;->sparkShader:Landroid/graphics/RadialGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const v1, -0xd5ed2

    const v2, 0x3eb33333    # 0.35f

    invoke-static {v1, v2}, Lcom/gathin/tvhome/DiyaDrawable;->stroke(IF)Landroid/graphics/Paint;

    move-result-object v1

    move-object/from16 v23, v1

    iput-object v1, v0, Lcom/gathin/tvhome/DiyaDrawable;->rayPaint:Landroid/graphics/Paint;

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    filled-new-array/range {v6 .. v23}, [Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, v0, Lcom/gathin/tvhome/DiyaDrawable;->paints:[Landroid/graphics/Paint;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3eb33333    # 0.35f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3ee66666    # 0.45f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3e6147ae    # 0.22f
        0x3f0ccccd    # 0.55f
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3eb33333    # 0.35f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3ee66666    # 0.45f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static fill(I)Landroid/graphics/Paint;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method public static sin(F)F
    .locals 4

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static stroke(IF)Landroid/graphics/Paint;
    .locals 1

    invoke-static {p0}, Lcom/gathin/tvhome/DiyaDrawable;->fill(I)Landroid/graphics/Paint;

    move-result-object p0

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-object p0
.end method

.method public static teardrop(Landroid/graphics/Path;FFFFF)V
    .locals 21

    add-float v7, p1, p5

    sub-float v8, p2, p3

    const v0, 0x3eb33333    # 0.35f

    mul-float v1, p5, v0

    const v2, 0x3f8ccccd    # 1.1f

    mul-float v2, v2, p4

    const v3, 0x3e75c28f    # 0.24f

    mul-float v3, v3, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float v16, p2, v2

    sub-float v2, v16, v8

    mul-float/2addr v2, v0

    sub-float v0, p2, v16

    const v3, 0x3f0ccccd    # 0.55f

    mul-float/2addr v0, v3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->reset()V

    move-object/from16 v6, p0

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float v17, p4, v4

    add-float v10, v7, v17

    const v4, 0x3e99999a    # 0.3f

    mul-float v4, v4, p3

    add-float v18, v4, v8

    add-float v19, p1, v1

    add-float v12, v19, p4

    sub-float v20, v16, v2

    add-float v1, p1, p4

    move-object/from16 v9, p0

    move/from16 v11, v18

    move/from16 v13, v20

    move v14, v1

    move/from16 v15, v16

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v9, v16, v0

    mul-float v10, p4, v3

    add-float v3, p1, v10

    move-object/from16 v0, p0

    move v2, v9

    move/from16 v4, p2

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v1, p1, v10

    sub-float v5, p1, p4

    move/from16 v2, p2

    move v3, v5

    move v4, v9

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v1, v19, p4

    sub-float v3, v7, v17

    move/from16 v2, v20

    move/from16 v4, v18

    move v5, v7

    move v6, v8

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public final baseScale(J)F
    .locals 2

    iget-wide v0, p0, Lcom/gathin/tvhome/DiyaDrawable;->scaleStart:J

    sub-long/2addr p1, v0

    long-to-float p1, p1

    const/high16 p2, 0x43960000    # 300.0f

    div-float/2addr p1, p2

    const/4 p2, 0x0

    cmpg-float v0, p1, p2

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez v0, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    cmpl-float p2, p1, v1

    if-lez p2, :cond_1

    move p1, v1

    :cond_1
    :goto_0
    iget p2, p0, Lcom/gathin/tvhome/DiyaDrawable;->scaleFrom:F

    iget v0, p0, Lcom/gathin/tvhome/DiyaDrawable;->scaleTo:F

    sub-float/2addr v0, p2

    sub-float p1, v1, p1

    mul-float/2addr p1, p1

    sub-float/2addr v1, p1

    mul-float/2addr v1, v0

    add-float/2addr v1, p2

    return v1
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/gathin/tvhome/DiyaDrawable;->update(J)V

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41c00000    # 24.0f

    div-float v11, v1, v2

    iget v6, v0, Lcom/gathin/tvhome/DiyaDrawable;->alpha:I

    const/16 v1, 0xff

    if-ge v6, v1, :cond_1

    iget v1, v8, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget v1, v8, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    iget v1, v8, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    move-result v1

    :goto_0
    move v12, v1

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    goto :goto_0

    :goto_1
    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v2, v11

    sub-float/2addr v1, v2

    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    sub-float/2addr v3, v2

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, v11, v11}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v0, v9, v10}, Lcom/gathin/tvhome/DiyaDrawable;->flameScale(J)F

    move-result v1

    iget v2, v0, Lcom/gathin/tvhome/DiyaDrawable;->phase:I

    const/4 v8, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    if-eq v2, v13, :cond_2

    move v14, v11

    goto :goto_3

    :cond_2
    iget-wide v2, v0, Lcom/gathin/tvhome/DiyaDrawable;->phaseStart:J

    sub-long v2, v9, v2

    long-to-float v2, v2

    const/high16 v3, 0x43af0000    # 350.0f

    div-float/2addr v2, v3

    cmpg-float v3, v2, v8

    if-gez v3, :cond_3

    move v2, v8

    goto :goto_2

    :cond_3
    cmpl-float v3, v2, v11

    if-lez v3, :cond_4

    move v2, v11

    :cond_4
    :goto_2
    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float v2, v11, v2

    move v14, v2

    :goto_3
    iget-boolean v2, v0, Lcom/gathin/tvhome/DiyaDrawable;->running:Z

    const v15, 0x3e4ccccd    # 0.2f

    const v16, 0x3e8f5c29    # 0.28f

    const v3, 0x3ee66666    # 0.45f

    const v4, 0x400ccccd    # 2.2f

    if-eqz v2, :cond_6

    iget-boolean v2, v0, Lcom/gathin/tvhome/DiyaDrawable;->reduced:Z

    if-nez v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-wide v5, v0, Lcom/gathin/tvhome/DiyaDrawable;->epoch:J

    sub-long v5, v9, v5

    long-to-float v2, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v2, v5

    iget-boolean v5, v0, Lcom/gathin/tvhome/DiyaDrawable;->steady:Z

    const v6, 0x3d0f5c29    # 0.035f

    if-eqz v5, :cond_5

    const v5, 0x40866666    # 4.2f

    div-float/2addr v2, v5

    invoke-static {v2}, Lcom/gathin/tvhome/DiyaDrawable;->sin(F)F

    move-result v2

    mul-float/2addr v6, v2

    add-float/2addr v6, v11

    const v5, 0x3ca3d70a    # 0.02f

    mul-float/2addr v2, v5

    add-float/2addr v2, v11

    goto/16 :goto_4

    :cond_5
    const v5, 0x3f547ae1    # 0.83f

    mul-float/2addr v5, v2

    invoke-static {v5}, Lcom/gathin/tvhome/DiyaDrawable;->sin(F)F

    move-result v5

    const v17, 0x3d6147ae    # 0.055f

    mul-float v5, v5, v17

    add-float/2addr v5, v11

    const v17, 0x3fdae148    # 1.71f

    mul-float v17, v17, v2

    const v18, 0x3e570a3d    # 0.21f

    add-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Lcom/gathin/tvhome/DiyaDrawable;->sin(F)F

    move-result v17

    mul-float v17, v17, v6

    add-float v17, v17, v5

    const v5, 0x402851ec    # 2.63f

    mul-float/2addr v5, v2

    const v6, 0x3ea8f5c3    # 0.33f

    add-float/2addr v5, v6

    invoke-static {v5}, Lcom/gathin/tvhome/DiyaDrawable;->sin(F)F

    move-result v5

    const v6, 0x3ccccccd    # 0.025f

    mul-float/2addr v5, v6

    add-float v5, v5, v17

    const v6, 0x3ff33333    # 1.9f

    mul-float/2addr v6, v2

    invoke-virtual {v0, v6}, Lcom/gathin/tvhome/DiyaDrawable;->noise(F)F

    move-result v6

    const v17, 0x3cf5c28f    # 0.03f

    mul-float v6, v6, v17

    add-float/2addr v6, v5

    const v5, 0x3faf5c29    # 1.37f

    mul-float/2addr v5, v2

    const v18, 0x3e0f5c29    # 0.14f

    add-float v5, v5, v18

    invoke-static {v5}, Lcom/gathin/tvhome/DiyaDrawable;->sin(F)F

    move-result v5

    const v18, 0x3d3851ec    # 0.045f

    mul-float v5, v5, v18

    add-float/2addr v5, v11

    mul-float v18, v2, v4

    const/high16 v19, 0x41f80000    # 31.0f

    add-float v8, v18, v19

    invoke-virtual {v0, v8}, Lcom/gathin/tvhome/DiyaDrawable;->noise(F)F

    move-result v8

    mul-float v8, v8, v17

    add-float/2addr v5, v8

    const v8, 0x3ef0a3d7    # 0.47f

    mul-float/2addr v8, v2

    const v17, 0x3dcccccd    # 0.1f

    add-float v8, v8, v17

    invoke-static {v8}, Lcom/gathin/tvhome/DiyaDrawable;->sin(F)F

    move-result v8

    mul-float/2addr v8, v3

    const v17, 0x3f90a3d7    # 1.13f

    mul-float v17, v17, v2

    const v18, 0x3ec28f5c    # 0.38f

    add-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Lcom/gathin/tvhome/DiyaDrawable;->sin(F)F

    move-result v17

    mul-float v17, v17, v16

    add-float v17, v17, v8

    const v8, 0x3fa66666    # 1.3f

    mul-float/2addr v2, v8

    const/high16 v8, 0x41880000    # 17.0f

    add-float/2addr v2, v8

    invoke-virtual {v0, v2}, Lcom/gathin/tvhome/DiyaDrawable;->noise(F)F

    move-result v2

    mul-float/2addr v2, v15

    add-float v2, v2, v17

    move v8, v2

    move v2, v5

    goto :goto_4

    :cond_6
    move v2, v11

    move v6, v2

    const/4 v8, 0x0

    :goto_4
    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v5, v1

    mul-float/2addr v6, v5

    mul-float/2addr v4, v1

    invoke-static {v11, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v17, v1, v5

    add-float v17, v17, v5

    mul-float v4, v4, v17

    mul-float v18, v4, v2

    mul-float/2addr v8, v1

    mul-float v2, v1, v14

    const v19, 0x3c23d70a    # 0.01f

    cmpl-float v4, v2, v19

    iget-object v15, v0, Lcom/gathin/tvhome/DiyaDrawable;->matrix:Landroid/graphics/Matrix;

    const v11, 0x4141999a    # 12.1f

    const/high16 v13, 0x41940000    # 18.5f

    const/high16 v26, 0x437f0000    # 255.0f

    if-lez v4, :cond_7

    const v22, 0x3ecccccd    # 0.4f

    mul-float v22, v22, v8

    add-float v5, v22, v13

    mul-float/2addr v3, v6

    sub-float v3, v11, v3

    const v22, 0x4059999a    # 3.4f

    mul-float v1, v1, v22

    const v22, 0x40266666    # 2.6f

    add-float v1, v1, v22

    const v22, 0x3f99999a    # 1.2f

    mul-float v11, v1, v22

    invoke-virtual {v15, v1, v11}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v15, v5, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v13, v0, Lcom/gathin/tvhome/DiyaDrawable;->glowShader:Landroid/graphics/RadialGradient;

    invoke-virtual {v13, v15}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v13, v0, Lcom/gathin/tvhome/DiyaDrawable;->glowPaint:Landroid/graphics/Paint;

    mul-float v22, v14, v26

    move/from16 v24, v6

    mul-float v6, v22, v17

    float-to-int v6, v6

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v6, v0, Lcom/gathin/tvhome/DiyaDrawable;->oval:Landroid/graphics/RectF;

    move/from16 v17, v12

    sub-float v12, v5, v1

    move/from16 v27, v8

    sub-float v8, v3, v11

    add-float/2addr v5, v1

    add-float/2addr v3, v11

    invoke-virtual {v6, v12, v8, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v7, v6, v13}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_5

    :cond_7
    move/from16 v24, v6

    move/from16 v27, v8

    move/from16 v17, v12

    :goto_5
    iget-object v1, v0, Lcom/gathin/tvhome/DiyaDrawable;->foot:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/gathin/tvhome/DiyaDrawable;->footPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v3, v0, Lcom/gathin/tvhome/DiyaDrawable;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/gathin/tvhome/DiyaDrawable;->body:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/gathin/tvhome/DiyaDrawable;->bodyPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v5, v0, Lcom/gathin/tvhome/DiyaDrawable;->warmPaint:Landroid/graphics/Paint;

    if-lez v4, :cond_8

    const/high16 v6, 0x433e0000    # 190.0f

    mul-float/2addr v6, v2

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v7, v1, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_8
    iget-object v6, v0, Lcom/gathin/tvhome/DiyaDrawable;->opening:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/gathin/tvhome/DiyaDrawable;->openingPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-lez v4, :cond_9

    mul-float v2, v2, v26

    float-to-int v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v7, v6, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_9
    iget-object v2, v0, Lcom/gathin/tvhome/DiyaDrawable;->openingEdge:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 v2, 0x0

    :goto_6
    sget-object v4, Lcom/gathin/tvhome/DiyaDrawable;->DOTS:[F

    array-length v5, v4

    if-ge v2, v5, :cond_a

    aget v5, v4, v2

    add-int/lit8 v6, v2, 0x1

    aget v4, v4, v6

    iget-object v6, v0, Lcom/gathin/tvhome/DiyaDrawable;->dotPaint:Landroid/graphics/Paint;

    const v11, 0x3ed70a3d    # 0.42f

    invoke-virtual {v7, v5, v4, v11, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_6

    :cond_a
    iget-object v2, v0, Lcom/gathin/tvhome/DiyaDrawable;->rimLip:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/gathin/tvhome/DiyaDrawable;->lipPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/gathin/tvhome/DiyaDrawable;->sheen:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/gathin/tvhome/DiyaDrawable;->sheenPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v6, v0, Lcom/gathin/tvhome/DiyaDrawable;->wickPaint:Landroid/graphics/Paint;

    const v2, 0x418ccccd    # 17.6f

    const v3, 0x414ccccd    # 12.8f

    const/high16 v4, 0x41940000    # 18.5f

    const v5, 0x4141999a    # 12.1f

    move-object/from16 v1, p1

    const/high16 v11, 0x3f000000    # 0.5f

    move/from16 v12, v24

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/gathin/tvhome/DiyaDrawable;->phase:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    iget-wide v1, v0, Lcom/gathin/tvhome/DiyaDrawable;->phaseStart:J

    sub-long v1, v9, v1

    long-to-float v3, v1

    const/high16 v4, 0x44480000    # 800.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-lez v5, :cond_b

    iget-object v4, v0, Lcom/gathin/tvhome/DiyaDrawable;->emberPaint:Landroid/graphics/Paint;

    mul-float v3, v3, v26

    float-to-int v3, v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const v3, 0x4141999a    # 12.1f

    const/high16 v5, 0x41940000    # 18.5f

    invoke-virtual {v7, v5, v3, v11, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_b
    iget-boolean v3, v0, Lcom/gathin/tvhome/DiyaDrawable;->reduced:Z

    if-eqz v3, :cond_c

    goto/16 :goto_a

    :cond_c
    const-wide/16 v3, 0x104

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x44610000    # 900.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-lez v3, :cond_12

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_d

    goto/16 :goto_a

    :cond_d
    sub-float v3, v2, v1

    mul-float v4, v3, v3

    sub-float v4, v2, v4

    const/high16 v2, 0x41280000    # 10.5f

    mul-float/2addr v4, v2

    const v2, 0x3e99999a    # 0.3f

    sub-float v5, v1, v2

    const v6, 0x3f333333    # 0.7f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    cmpg-float v21, v5, v6

    if-gtz v21, :cond_e

    const/4 v5, 0x0

    goto :goto_7

    :cond_e
    const v6, 0x3f19999a    # 0.6f

    sub-float v6, v4, v6

    const/high16 v21, 0x41080000    # 8.5f

    mul-float v21, v21, v5

    mul-float v5, v5, v21

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    :goto_7
    sub-float v6, v4, v5

    cmpg-float v2, v6, v2

    if-gez v2, :cond_f

    goto/16 :goto_a

    :cond_f
    iget-object v2, v0, Lcom/gathin/tvhome/DiyaDrawable;->smoke:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    const/4 v8, 0x0

    :goto_8
    const/16 v11, 0x10

    const v22, 0x413ccccd    # 11.8f

    if-ge v8, v11, :cond_11

    int-to-float v11, v8

    mul-float/2addr v11, v6

    const/high16 v23, 0x41700000    # 15.0f

    div-float v11, v11, v23

    add-float/2addr v11, v5

    const v23, 0x3e2e147b    # 0.17f

    mul-float v23, v23, v11

    const v20, 0x3e4ccccd    # 0.2f

    add-float v23, v23, v20

    const v24, 0x3f666666    # 0.9f

    mul-float v24, v24, v11

    const/high16 v25, 0x40b00000    # 5.5f

    mul-float v25, v25, v1

    sub-float v13, v24, v25

    move/from16 v28, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v13, v13

    mul-float v23, v23, v13

    mul-float v13, v11, v16

    const/high16 v14, 0x41940000    # 18.5f

    sub-float v13, v14, v13

    add-float v13, v13, v23

    sub-float v11, v22, v11

    if-nez v8, :cond_10

    invoke-virtual {v2, v13, v11}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_9

    :cond_10
    invoke-virtual {v2, v13, v11}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_9
    add-int/lit8 v8, v8, 0x1

    move/from16 v14, v28

    goto :goto_8

    :cond_11
    move/from16 v28, v14

    sub-float v4, v22, v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v15, v5, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v5, 0x0

    invoke-virtual {v15, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v4, v0, Lcom/gathin/tvhome/DiyaDrawable;->smokeShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v4, v15}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v4, v0, Lcom/gathin/tvhome/DiyaDrawable;->smokePaint:Landroid/graphics/Paint;

    const v5, 0x3eb33333    # 0.35f

    mul-float/2addr v1, v5

    const v5, 0x3f0ccccd    # 0.55f

    add-float/2addr v1, v5

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v1, 0x43660000    # 230.0f

    mul-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v7, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_b

    :cond_12
    :goto_a
    move/from16 v28, v14

    :goto_b
    iget v1, v0, Lcom/gathin/tvhome/DiyaDrawable;->phase:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_15

    iget-wide v1, v0, Lcom/gathin/tvhome/DiyaDrawable;->phaseStart:J

    sub-long/2addr v9, v1

    long-to-float v1, v9

    const/high16 v2, 0x43480000    # 200.0f

    div-float v8, v1, v2

    const/high16 v1, 0x3fc00000    # 1.5f

    cmpl-float v1, v8, v1

    if-ltz v1, :cond_13

    goto/16 :goto_e

    :cond_13
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v11, v1, v2

    mul-float/2addr v11, v11

    sub-float v11, v1, v11

    const v1, 0x40333333    # 2.8f

    mul-float/2addr v11, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v11, v1

    const/high16 v1, 0x3e800000    # 0.25f

    cmpg-float v2, v8, v1

    if-gez v2, :cond_14

    div-float v1, v8, v1

    goto :goto_c

    :cond_14
    sub-float v1, v8, v1

    const/high16 v2, 0x3fa00000    # 1.25f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    :goto_c
    invoke-virtual {v15, v11, v11}, Landroid/graphics/Matrix;->setScale(FF)V

    const v9, 0x4139999a    # 11.6f

    const/high16 v2, 0x41940000    # 18.5f

    invoke-virtual {v15, v2, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v3, v0, Lcom/gathin/tvhome/DiyaDrawable;->sparkShader:Landroid/graphics/RadialGradient;

    invoke-virtual {v3, v15}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v3, v0, Lcom/gathin/tvhome/DiyaDrawable;->sparkPaint:Landroid/graphics/Paint;

    mul-float v1, v1, v26

    float-to-int v1, v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v7, v2, v9, v11, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v10, v0, Lcom/gathin/tvhome/DiyaDrawable;->rayPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v13, 0x0

    :goto_d
    const/4 v1, 0x4

    if-ge v13, v1, :cond_15

    mul-int/lit8 v1, v13, 0x5a

    add-int/lit8 v1, v1, 0x2d

    int-to-float v1, v1

    const/high16 v2, 0x41f00000    # 30.0f

    mul-float/2addr v2, v8

    add-float/2addr v2, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v3, v11

    const v2, 0x3f0ccccd    # 0.55f

    mul-float v4, v3, v2

    const/high16 v5, 0x41940000    # 18.5f

    add-float/2addr v4, v5

    mul-float/2addr v1, v11

    mul-float v6, v1, v2

    add-float/2addr v6, v9

    const v2, 0x3f933333    # 1.15f

    mul-float/2addr v3, v2

    add-float v14, v3, v5

    mul-float/2addr v1, v2

    add-float v5, v1, v9

    move-object/from16 v1, p1

    move v2, v4

    move v3, v6

    move v4, v14

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    :cond_15
    :goto_e
    const v1, 0x3e19999a    # 0.15f

    cmpl-float v1, v12, v1

    if-lez v1, :cond_16

    cmpl-float v1, v28, v19

    if-lez v1, :cond_16

    iget-object v1, v0, Lcom/gathin/tvhome/DiyaDrawable;->flame:Landroid/graphics/Path;

    const/high16 v21, 0x41940000    # 18.5f

    const v2, 0x4144cccd    # 12.3f

    move-object/from16 v20, v1

    move/from16 v22, v2

    move/from16 v23, v12

    move/from16 v24, v18

    move/from16 v25, v27

    invoke-static/range {v20 .. v25}, Lcom/gathin/tvhome/DiyaDrawable;->teardrop(Landroid/graphics/Path;FFFFF)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v15, v3, v12}, Landroid/graphics/Matrix;->setScale(FF)V

    sub-float/2addr v2, v12

    const/4 v3, 0x0

    invoke-virtual {v15, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, v0, Lcom/gathin/tvhome/DiyaDrawable;->flameShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v15}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, v0, Lcom/gathin/tvhome/DiyaDrawable;->flamePaint:Landroid/graphics/Paint;

    mul-float v14, v28, v26

    float-to-int v3, v14

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/gathin/tvhome/DiyaDrawable;->edgePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x43160000    # 150.0f

    mul-float v3, v3, v28

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const v1, 0x3d75c28f    # 0.06f

    mul-float v6, v12, v1

    const v1, 0x4141999a    # 12.1f

    sub-float v11, v1, v6

    const v1, 0x3f147ae1    # 0.58f

    mul-float v6, v12, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v24, v18, v1

    iget-object v1, v0, Lcom/gathin/tvhome/DiyaDrawable;->core:Landroid/graphics/Path;

    const v2, 0x3d4ccccd    # 0.05f

    mul-float v8, v27, v2

    const/high16 v2, 0x41940000    # 18.5f

    add-float v21, v8, v2

    const v2, 0x3f0ccccd    # 0.55f

    mul-float v25, v27, v2

    move-object/from16 v20, v1

    move/from16 v22, v11

    move/from16 v23, v6

    invoke-static/range {v20 .. v25}, Lcom/gathin/tvhome/DiyaDrawable;->teardrop(Landroid/graphics/Path;FFFFF)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v15, v2, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    sub-float/2addr v11, v6

    const/4 v2, 0x0

    invoke-virtual {v15, v2, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, v0, Lcom/gathin/tvhome/DiyaDrawable;->coreShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v15}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, v0, Lcom/gathin/tvhome/DiyaDrawable;->corePaint:Landroid/graphics/Paint;

    mul-float v14, v14, v28

    float-to-int v3, v14

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_16
    move/from16 v1, v17

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final flameScale(J)F
    .locals 6

    iget v0, p0, Lcom/gathin/tvhome/DiyaDrawable;->phase:I

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/gathin/tvhome/DiyaDrawable;->level:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/gathin/tvhome/DiyaDrawable;->baseScale(J)F

    move-result v3

    :goto_0
    return v3

    :cond_1
    iget-wide v0, p0, Lcom/gathin/tvhome/DiyaDrawable;->phaseStart:J

    sub-long v0, p1, v0

    const-wide/16 v4, 0x6e

    sub-long/2addr v0, v4

    long-to-float v0, v0

    const/high16 v1, 0x43fa0000    # 500.0f

    div-float/2addr v0, v1

    cmpg-float v1, v0, v3

    if-gtz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/gathin/tvhome/DiyaDrawable;->baseScale(J)F

    move-result p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    sub-float/2addr p2, v2

    const v0, 0x4019999a    # 2.4f

    mul-float/2addr v0, p2

    mul-float/2addr v0, p2

    mul-float/2addr v0, p2

    add-float/2addr v0, v2

    const v1, 0x3fb33333    # 1.4f

    mul-float/2addr v1, p2

    mul-float/2addr v1, p2

    add-float/2addr v1, v0

    mul-float v3, v1, p1

    :goto_1
    return v3

    :cond_3
    iget-wide v0, p0, Lcom/gathin/tvhome/DiyaDrawable;->phaseStart:J

    sub-long/2addr p1, v0

    long-to-float p1, p1

    const/high16 p2, 0x43af0000    # 350.0f

    div-float/2addr p1, p2

    cmpl-float p2, p1, v2

    if-ltz p2, :cond_4

    goto :goto_2

    :cond_4
    iget p2, p0, Lcom/gathin/tvhome/DiyaDrawable;->outFrom:F

    mul-float/2addr p1, p1

    sub-float/2addr v2, p1

    mul-float v3, v2, p2

    :goto_2
    return v3
.end method

.method public final getAlpha()I
    .locals 1

    iget v0, p0, Lcom/gathin/tvhome/DiyaDrawable;->alpha:I

    return v0
.end method

.method public final getIntrinsicHeight()I
    .locals 2

    const/high16 v0, 0x41c00000    # 24.0f

    iget v1, p0, Lcom/gathin/tvhome/DiyaDrawable;->density:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 2

    const/high16 v0, 0x41c00000    # 24.0f

    iget v1, p0, Lcom/gathin/tvhome/DiyaDrawable;->density:F

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

.method public final isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gathin/tvhome/DiyaDrawable;->running:Z

    return v0
.end method

.method public final kick()V
    .locals 5

    iget-object v0, p0, Lcom/gathin/tvhome/DiyaDrawable;->tick:Lcom/gathin/tvhome/ClockScene$1;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/gathin/tvhome/DiyaDrawable;->wantsFrames()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x42

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final noise(F)F
    .locals 3

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float v1, v0

    sub-float/2addr p1, v1

    mul-float v1, p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr p1, v2

    const/high16 v2, 0x40400000    # 3.0f

    sub-float/2addr v2, p1

    mul-float/2addr v2, v1

    and-int/lit16 p1, v0, 0xff

    iget-object v1, p0, Lcom/gathin/tvhome/DiyaDrawable;->noise:[F

    aget p1, v1, p1

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    aget v0, v1, v0

    sub-float/2addr v0, p1

    mul-float/2addr v0, v2

    add-float/2addr v0, p1

    return v0
.end method

.method public final setAlpha(I)V
    .locals 1

    iget v0, p0, Lcom/gathin/tvhome/DiyaDrawable;->alpha:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/gathin/tvhome/DiyaDrawable;->alpha:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    iget-object v0, p0, Lcom/gathin/tvhome/DiyaDrawable;->paints:[Landroid/graphics/Paint;

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

.method public final setVisible(ZZ)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p2

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/gathin/tvhome/DiyaDrawable;->snap()V

    :cond_0
    invoke-virtual {p0}, Lcom/gathin/tvhome/DiyaDrawable;->kick()V

    :cond_1
    return p2
.end method

.method public final snap()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/gathin/tvhome/DiyaDrawable;->phase:I

    sget-object v0, Lcom/gathin/tvhome/DiyaDrawable;->LEVEL_SCALE:[F

    iget v1, p0, Lcom/gathin/tvhome/DiyaDrawable;->level:I

    aget v0, v0, v1

    iput v0, p0, Lcom/gathin/tvhome/DiyaDrawable;->scaleTo:F

    iput v0, p0, Lcom/gathin/tvhome/DiyaDrawable;->scaleFrom:F

    return-void
.end method

.method public final start()V
    .locals 1

    iget-boolean v0, p0, Lcom/gathin/tvhome/DiyaDrawable;->running:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gathin/tvhome/DiyaDrawable;->running:Z

    invoke-virtual {p0}, Lcom/gathin/tvhome/DiyaDrawable;->kick()V

    return-void
.end method

.method public final stop()V
    .locals 1

    iget-boolean v0, p0, Lcom/gathin/tvhome/DiyaDrawable;->running:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gathin/tvhome/DiyaDrawable;->running:Z

    invoke-virtual {p0}, Lcom/gathin/tvhome/DiyaDrawable;->snap()V

    invoke-virtual {p0}, Lcom/gathin/tvhome/DiyaDrawable;->kick()V

    return-void
.end method

.method public final update(J)V
    .locals 7

    iget v0, p0, Lcom/gathin/tvhome/DiyaDrawable;->phase:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-wide v3, p0, Lcom/gathin/tvhome/DiyaDrawable;->phaseStart:J

    sub-long v3, p1, v3

    sget-wide v5, Lcom/gathin/tvhome/DiyaDrawable;->OUT_END_MS:J

    cmp-long v1, v3, v5

    if-ltz v1, :cond_0

    iput v2, p0, Lcom/gathin/tvhome/DiyaDrawable;->phase:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lcom/gathin/tvhome/DiyaDrawable;->phaseStart:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x262

    cmp-long p1, p1, v0

    if-ltz p1, :cond_1

    iput v2, p0, Lcom/gathin/tvhome/DiyaDrawable;->phase:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final wantsFrames()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gathin/tvhome/DiyaDrawable;->running:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/gathin/tvhome/DiyaDrawable;->level:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/gathin/tvhome/DiyaDrawable;->reduced:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/gathin/tvhome/DiyaDrawable;->phase:I

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
