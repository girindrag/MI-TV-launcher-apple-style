.class public final synthetic Lcom/gathin/tvhome/BellDrawable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/gathin/tvhome/BellDrawable$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/BellDrawable$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    iget-object v0, p0, Lcom/gathin/tvhome/BellDrawable$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iget v1, p0, Lcom/gathin/tvhome/BellDrawable$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lcom/gathin/tvhome/MarigoldDrawable;

    iget-wide v1, v0, Lcom/gathin/tvhome/MarigoldDrawable;->from:D

    iget-wide v3, v0, Lcom/gathin/tvhome/MarigoldDrawable;->target:D

    sub-double/2addr v3, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v5, p1

    mul-double/2addr v3, v5

    add-double/2addr v3, v1

    iput-wide v3, v0, Lcom/gathin/tvhome/MarigoldDrawable;->rotation:D

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :pswitch_0
    sget v1, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    check-cast v0, Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/gathin/tvhome/MainActivity;->setAmbient(I)V

    return-void

    :pswitch_1
    check-cast v0, Lcom/gathin/tvhome/BellDrawable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v1

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/gathin/tvhome/BellDrawable;->swing(F)F

    move-result v1

    iput v1, v0, Lcom/gathin/tvhome/BellDrawable;->angle:F

    const v1, 0x3d6147ae    # 0.055f

    sub-float/2addr p1, v1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/gathin/tvhome/BellDrawable;->swing(F)F

    move-result p1

    iget v1, v0, Lcom/gathin/tvhome/BellDrawable;->angle:F

    const/high16 v2, 0x40e00000    # 7.0f

    sub-float v3, v1, v2

    add-float/2addr v1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, v0, Lcom/gathin/tvhome/BellDrawable;->clapperAngle:F

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
