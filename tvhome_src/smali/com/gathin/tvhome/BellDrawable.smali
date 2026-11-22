.class public final Lcom/gathin/tvhome/BellDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field public alpha:I

.field public amplitude:F

.field public angle:F

.field public final animator:Landroid/animation/ValueAnimator;

.field public final ballEdge:Landroid/graphics/Paint;

.field public final ballPaint:Landroid/graphics/Paint;

.field public final band1:Landroid/graphics/Path;

.field public final band2:Landroid/graphics/Path;

.field public final bandDark:Landroid/graphics/Paint;

.field public final bandLight:Landroid/graphics/Paint;

.field public final body:Landroid/graphics/Path;

.field public final bodyPaint:Landroid/graphics/Paint;

.field public clapperAngle:F

.field public final crown:Landroid/graphics/RectF;

.field public final crownPaint:Landroid/graphics/Paint;

.field public final density:F

.field public direction:I

.field public final groove:Landroid/graphics/Paint;

.field public final lip:Landroid/graphics/Path;

.field public final lipPaint:Landroid/graphics/Paint;

.field public final lipTop:Landroid/graphics/Path;

.field public final loopBrass:Landroid/graphics/Paint;

.field public final loopDark:Landroid/graphics/Paint;

.field public final outline:Landroid/graphics/Paint;

.field public final paints:[Landroid/graphics/Paint;

.field public reduced:Z

.field public final rodPaint:Landroid/graphics/Paint;

.field public final sheen:Landroid/graphics/Path;

.field public final sheenPaint:Landroid/graphics/Paint;

.field public startAngle:F


# direct methods
.method public constructor <init>(F)V
    .locals 27

    move-object/from16 v0, p0

    const/high16 v5, 0x41900000    # 18.0f

    const v6, 0x411ccccd    # 9.8f

    const/high16 v9, 0x418c0000    # 17.5f

    const/high16 v10, 0x40a00000    # 5.0f

    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    iput-object v15, v0, Lcom/gathin/tvhome/BellDrawable;->body:Landroid/graphics/Path;

    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    iput-object v14, v0, Lcom/gathin/tvhome/BellDrawable;->lip:Landroid/graphics/Path;

    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    iput-object v13, v0, Lcom/gathin/tvhome/BellDrawable;->lipTop:Landroid/graphics/Path;

    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    iput-object v12, v0, Lcom/gathin/tvhome/BellDrawable;->band1:Landroid/graphics/Path;

    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    iput-object v11, v0, Lcom/gathin/tvhome/BellDrawable;->band2:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lcom/gathin/tvhome/BellDrawable;->sheen:Landroid/graphics/Path;

    new-instance v7, Landroid/graphics/RectF;

    const v2, 0x4124cccd    # 10.3f

    const v3, 0x40466666    # 3.1f

    const v4, 0x415b3333    # 13.7f

    const/high16 v8, 0x40b00000    # 5.5f

    invoke-direct {v7, v2, v3, v4, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v7, v0, Lcom/gathin/tvhome/BellDrawable;->crown:Landroid/graphics/RectF;

    const/4 v2, -0x1

    iput v2, v0, Lcom/gathin/tvhome/BellDrawable;->direction:I

    const/16 v2, 0xff

    iput v2, v0, Lcom/gathin/tvhome/BellDrawable;->alpha:I

    move/from16 v2, p1

    iput v2, v0, Lcom/gathin/tvhome/BellDrawable;->density:F

    invoke-virtual {v15, v6, v10}, Landroid/graphics/Path;->moveTo(FF)V

    const v2, 0x40f33333    # 7.6f

    const v3, 0x40a9999a    # 5.3f

    const/high16 v4, 0x40e00000    # 7.0f

    const v16, 0x40f9999a    # 7.8f

    const/high16 v17, 0x40e00000    # 7.0f

    const v18, 0x4129999a    # 10.6f

    move-object/from16 v23, v11

    move-object v11, v15

    move-object/from16 v24, v12

    move v12, v2

    move-object v2, v13

    move v13, v3

    move-object v3, v14

    move v14, v4

    move-object v4, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v12, 0x40e00000    # 7.0f

    const v13, 0x4159999a    # 13.6f

    const v14, 0x40d33333    # 6.6f

    const v15, 0x4179999a    # 15.6f

    const v16, 0x40a9999a    # 5.3f

    const v17, 0x41873333    # 16.9f

    move-object v11, v4

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v4, v10, v9, v8, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    const v12, 0x4109999a    # 8.6f

    const v13, 0x41973333    # 18.9f

    const v14, 0x41766666    # 15.4f

    const v15, 0x41973333    # 18.9f

    const/high16 v16, 0x41940000    # 18.5f

    const/high16 v17, 0x41900000    # 18.0f

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const v11, 0x41873333    # 16.9f

    const v12, 0x4195999a    # 18.7f

    const/high16 v13, 0x41980000    # 19.0f

    invoke-virtual {v4, v13, v9, v12, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    const v12, 0x418b3333    # 17.4f

    const v13, 0x4179999a    # 15.6f

    const/high16 v14, 0x41880000    # 17.0f

    const v15, 0x4159999a    # 13.6f

    const/high16 v16, 0x41880000    # 17.0f

    const v17, 0x4129999a    # 10.6f

    move-object v11, v4

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v12, 0x41880000    # 17.0f

    const v13, 0x40f9999a    # 7.8f

    const v14, 0x41833333    # 16.4f

    const v15, 0x40a9999a    # 5.3f

    const v16, 0x41633333    # 14.2f

    const/high16 v17, 0x40a00000    # 5.0f

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v11, 0x41400000    # 12.0f

    const v12, 0x40933333    # 4.6f

    invoke-virtual {v4, v11, v12, v6, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    const v4, 0x41873333    # 16.9f

    const v6, 0x40a9999a    # 5.3f

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v3, v10, v9, v8, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    const v17, 0x4109999a    # 8.6f

    const v18, 0x41973333    # 18.9f

    const v19, 0x41766666    # 15.4f

    const v20, 0x41973333    # 18.9f

    const/high16 v21, 0x41940000    # 18.5f

    const/high16 v22, 0x41900000    # 18.0f

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const v4, 0x41873333    # 16.9f

    const v5, 0x4195999a    # 18.7f

    const/high16 v6, 0x41980000    # 19.0f

    invoke-virtual {v3, v6, v9, v5, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    const v17, 0x41766666    # 15.4f

    const v18, 0x418d999a    # 17.7f

    const v19, 0x4109999a    # 8.6f

    const v20, 0x418d999a    # 17.7f

    const v21, 0x40a9999a    # 5.3f

    const v22, 0x41873333    # 16.9f

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    const v3, 0x41873333    # 16.9f

    const v4, 0x40a9999a    # 5.3f

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const v17, 0x4109999a    # 8.6f

    const v19, 0x41766666    # 15.4f

    const v21, 0x4195999a    # 18.7f

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const v2, 0x40e4cccd    # 7.15f

    const/high16 v3, 0x41100000    # 9.0f

    move-object/from16 v4, v24

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v17, 0x41180000    # 9.5f

    const v18, 0x411b3333    # 9.7f

    const/high16 v19, 0x41680000    # 14.5f

    const v20, 0x411b3333    # 9.7f

    const v21, 0x4186cccd    # 16.85f

    const/high16 v22, 0x41100000    # 9.0f

    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const v2, 0x40d9999a    # 6.8f

    const v3, 0x416e6666    # 14.9f

    move-object/from16 v4, v23

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const v17, 0x41133333    # 9.2f

    const v18, 0x417b3333    # 15.7f

    const v19, 0x416ccccd    # 14.8f

    const v20, 0x417b3333    # 15.7f

    const v21, 0x4189999a    # 17.2f

    const v22, 0x416e6666    # 14.9f

    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const v2, 0x41133333    # 9.2f

    const v3, 0x40c66666    # 6.2f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const v17, 0x4104cccd    # 8.3f

    const v18, 0x40f9999a    # 7.8f

    const v19, 0x41033333    # 8.2f

    const v20, 0x41366666    # 11.4f

    const/high16 v21, 0x41000000    # 8.0f

    const/high16 v22, 0x41700000    # 15.0f

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/4 v1, 0x6

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    new-instance v1, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/gathin/tvhome/BellDrawable;->bodyPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/LinearGradient;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v11, 0x41980000    # 19.0f

    const/4 v12, 0x0

    const/high16 v9, 0x40a00000    # 5.0f

    const/4 v10, 0x0

    move-object v8, v5

    move-object v13, v2

    move-object v14, v3

    move-object v15, v6

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v0, Lcom/gathin/tvhome/BellDrawable;->lipPaint:Landroid/graphics/Paint;

    new-instance v15, Landroid/graphics/LinearGradient;

    const/4 v8, 0x6

    new-array v13, v8, [I

    fill-array-data v13, :array_2

    const v11, 0x4199999a    # 19.2f

    const/4 v12, 0x0

    const v9, 0x4099999a    # 4.8f

    const/4 v10, 0x0

    move-object v8, v15

    move-object v14, v3

    move-object v4, v15

    move-object v15, v6

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v4, Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-direct {v4, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v0, Lcom/gathin/tvhome/BellDrawable;->crownPaint:Landroid/graphics/Paint;

    new-instance v15, Landroid/graphics/LinearGradient;

    iget v9, v7, Landroid/graphics/RectF;->left:F

    iget v11, v7, Landroid/graphics/RectF;->right:F

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v8, v15

    move-object v13, v2

    move-object v14, v3

    move-object v2, v15

    move-object v15, v6

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const v2, -0xbad5fb

    const v3, 0x3f0ccccd    # 0.55f

    invoke-static {v2, v3}, Lcom/gathin/tvhome/BellDrawable;->stroke(IF)Landroid/graphics/Paint;

    move-result-object v7

    iput-object v7, v0, Lcom/gathin/tvhome/BellDrawable;->outline:Landroid/graphics/Paint;

    const v8, -0xa5c9f8

    const v9, 0x3eb33333    # 0.35f

    invoke-static {v8, v9}, Lcom/gathin/tvhome/BellDrawable;->stroke(IF)Landroid/graphics/Paint;

    move-result-object v15

    iput-object v15, v0, Lcom/gathin/tvhome/BellDrawable;->groove:Landroid/graphics/Paint;

    const v8, -0x66a5c9f8

    const v9, 0x3ec28f5c    # 0.38f

    invoke-static {v8, v9}, Lcom/gathin/tvhome/BellDrawable;->stroke(IF)Landroid/graphics/Paint;

    move-result-object v14

    iput-object v14, v0, Lcom/gathin/tvhome/BellDrawable;->bandDark:Landroid/graphics/Paint;

    const v8, 0x66fff2c0

    const/high16 v9, 0x3e800000    # 0.25f

    invoke-static {v8, v9}, Lcom/gathin/tvhome/BellDrawable;->stroke(IF)Landroid/graphics/Paint;

    move-result-object v13

    iput-object v13, v0, Lcom/gathin/tvhome/BellDrawable;->bandLight:Landroid/graphics/Paint;

    const v8, -0x4c000b2e

    const v9, 0x3f666666    # 0.9f

    invoke-static {v8, v9}, Lcom/gathin/tvhome/BellDrawable;->stroke(IF)Landroid/graphics/Paint;

    move-result-object v12

    iput-object v12, v0, Lcom/gathin/tvhome/BellDrawable;->sheenPaint:Landroid/graphics/Paint;

    const v8, 0x3f933333    # 1.15f

    invoke-static {v2, v8}, Lcom/gathin/tvhome/BellDrawable;->stroke(IF)Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, v0, Lcom/gathin/tvhome/BellDrawable;->loopDark:Landroid/graphics/Paint;

    const v8, -0x295ec6

    invoke-static {v8, v3}, Lcom/gathin/tvhome/BellDrawable;->stroke(IF)Landroid/graphics/Paint;

    move-result-object v3

    iput-object v3, v0, Lcom/gathin/tvhome/BellDrawable;->loopBrass:Landroid/graphics/Paint;

    const v8, -0xb1cdf8

    const/high16 v9, 0x3f400000    # 0.75f

    invoke-static {v8, v9}, Lcom/gathin/tvhome/BellDrawable;->stroke(IF)Landroid/graphics/Paint;

    move-result-object v11

    iput-object v11, v0, Lcom/gathin/tvhome/BellDrawable;->rodPaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-direct {v10, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v0, Lcom/gathin/tvhome/BellDrawable;->ballPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/RadialGradient;

    const v8, -0xa5c5f6

    move-object/from16 p1, v10

    const v10, -0xd2d86

    move-object/from16 v16, v11

    const v11, -0x4f81de

    filled-new-array {v10, v11, v8}, [I

    move-result-object v17

    const/4 v8, 0x3

    new-array v11, v8, [F

    fill-array-data v11, :array_3

    const v10, 0x41a5999a    # 20.7f

    const v18, 0x3fd9999a    # 1.7f

    const v19, 0x4139999a    # 11.6f

    move-object v8, v9

    move-object/from16 v25, v9

    move/from16 v9, v19

    move-object/from16 v26, p1

    move-object/from16 v19, v16

    move-object/from16 v16, v11

    move/from16 v11, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v17

    move-object/from16 v17, v13

    move-object/from16 v13, v16

    move-object/from16 v16, v14

    move-object v14, v6

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v8, v25

    move-object/from16 v6, v26

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const v8, -0xc1d9fc

    const v9, 0x3ecccccd    # 0.4f

    invoke-static {v8, v9}, Lcom/gathin/tvhome/BellDrawable;->stroke(IF)Landroid/graphics/Paint;

    move-result-object v14

    iput-object v14, v0, Lcom/gathin/tvhome/BellDrawable;->ballEdge:Landroid/graphics/Paint;

    move-object v8, v1

    move-object v9, v5

    move-object v10, v4

    move-object v11, v7

    move-object v12, v15

    move-object/from16 v13, v16

    move-object v1, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v18

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v19

    move-object/from16 v19, v6

    move-object/from16 v20, v1

    filled-new-array/range {v8 .. v20}, [Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, v0, Lcom/gathin/tvhome/BellDrawable;->paints:[Landroid/graphics/Paint;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/gathin/tvhome/BellDrawable;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/gathin/tvhome/BellDrawable$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/gathin/tvhome/BellDrawable$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/gathin/tvhome/BellDrawable$1;

    invoke-direct {v2, v0}, Lcom/gathin/tvhome/BellDrawable$1;-><init>(Lcom/gathin/tvhome/BellDrawable;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x94bcf2
        -0x467bdc
        -0xf308e
        -0x295ec6
        -0x6395e6
        -0xa3c7f6
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3e23d70a    # 0.16f
        0x3ea8f5c3    # 0.33f
        0x3f051eb8    # 0.52f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        -0x85b1ee
        -0x265bc6
        -0x41f76
        -0x1c4fb6
        -0x578be0
        -0x9fbff2
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f0ccccd    # 0.55f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static stroke(IF)Landroid/graphics/Paint;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object p0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-object v0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 12

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

    iget v7, p0, Lcom/gathin/tvhome/BellDrawable;->alpha:I

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

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/gathin/tvhome/BellDrawable;->clapperAngle:F

    const v1, 0x3fa66666    # 1.3f

    invoke-virtual {p1, v0, v4, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v10, p0, Lcom/gathin/tvhome/BellDrawable;->rodPaint:Landroid/graphics/Paint;

    const/high16 v8, 0x41400000    # 12.0f

    const v9, 0x41a0cccd    # 20.1f

    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v7, 0x41000000    # 8.0f

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/gathin/tvhome/BellDrawable;->ballPaint:Landroid/graphics/Paint;

    const v3, 0x41a93333    # 21.15f

    const v5, 0x3f933333    # 1.15f

    invoke-virtual {p1, v4, v3, v5, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/gathin/tvhome/BellDrawable;->ballEdge:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v5, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/gathin/tvhome/BellDrawable;->angle:F

    invoke-virtual {p1, v0, v4, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/gathin/tvhome/BellDrawable;->loopDark:Landroid/graphics/Paint;

    const v1, 0x40166666    # 2.35f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v4, v1, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/gathin/tvhome/BellDrawable;->loopBrass:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/gathin/tvhome/BellDrawable;->crown:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/gathin/tvhome/BellDrawable;->crownPaint:Landroid/graphics/Paint;

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/gathin/tvhome/BellDrawable;->outline:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/gathin/tvhome/BellDrawable;->body:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/gathin/tvhome/BellDrawable;->bodyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/gathin/tvhome/BellDrawable;->band1:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/gathin/tvhome/BellDrawable;->bandDark:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 v5, 0x0

    const v6, 0x3ec28f5c    # 0.38f

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v7, p0, Lcom/gathin/tvhome/BellDrawable;->bandLight:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const v3, -0x413d70a4    # -0.38f

    invoke-virtual {p1, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v8, p0, Lcom/gathin/tvhome/BellDrawable;->band2:Landroid/graphics/Path;

    invoke-virtual {p1, v8, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v8, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/gathin/tvhome/BellDrawable;->lip:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/gathin/tvhome/BellDrawable;->lipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/gathin/tvhome/BellDrawable;->lipTop:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/gathin/tvhome/BellDrawable;->groove:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v3, p0, Lcom/gathin/tvhome/BellDrawable;->angle:F

    neg-float v3, v3

    const v4, 0x3d0f5c29    # 0.035f

    mul-float/2addr v3, v4

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/gathin/tvhome/BellDrawable;->sheen:Landroid/graphics/Path;

    iget-object v11, p0, Lcom/gathin/tvhome/BellDrawable;->sheenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const v8, 0x418c6666    # 17.55f

    const v9, 0x4109999a    # 8.6f

    const/high16 v7, 0x40e00000    # 7.0f

    const v10, 0x418f999a    # 17.95f

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    neg-float v3, v3

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final getAlpha()I
    .locals 1

    iget v0, p0, Lcom/gathin/tvhome/BellDrawable;->alpha:I

    return v0
.end method

.method public final getIntrinsicHeight()I
    .locals 2

    const/high16 v0, 0x41c00000    # 24.0f

    iget v1, p0, Lcom/gathin/tvhome/BellDrawable;->density:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 2

    const/high16 v0, 0x41c00000    # 24.0f

    iget v1, p0, Lcom/gathin/tvhome/BellDrawable;->density:F

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

    iget v0, p0, Lcom/gathin/tvhome/BellDrawable;->alpha:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/gathin/tvhome/BellDrawable;->alpha:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    iget-object v0, p0, Lcom/gathin/tvhome/BellDrawable;->paints:[Landroid/graphics/Paint;

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

.method public final swing(F)F
    .locals 7

    const v0, 0x41aae713

    mul-float/2addr v0, p1

    neg-float v1, p1

    const v2, 0x3e99999a    # 0.3f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Lcom/gathin/tvhome/BellDrawable;->startAngle:F

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v0, v5

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/gathin/tvhome/BellDrawable;->amplitude:F

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    mul-float/2addr v0, v1

    const v1, 0x3f59999a    # 0.85f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    sub-float/2addr p1, v1

    const v1, 0x3e19999a    # 0.15f

    div-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    mul-float v2, p1, p1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr p1, v3

    const/high16 v3, 0x40400000    # 3.0f

    sub-float/2addr v3, p1

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    mul-float/2addr v0, v1

    :cond_0
    const/high16 p1, 0x41800000    # 16.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, -0x3e800000    # -16.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method
