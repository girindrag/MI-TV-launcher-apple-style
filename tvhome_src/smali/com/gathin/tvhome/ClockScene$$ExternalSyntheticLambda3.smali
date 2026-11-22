.class public final synthetic Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/ClockScene;

.field public final synthetic f$1:Landroid/animation/ArgbEvaluator;

.field public final synthetic f$2:F

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/ClockScene;Landroid/animation/ArgbEvaluator;FII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda3;->f$0:Lcom/gathin/tvhome/ClockScene;

    iput-object p2, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda3;->f$1:Landroid/animation/ArgbEvaluator;

    iput p3, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda3;->f$2:F

    iput p4, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda3;->f$3:I

    iput p5, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda3;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda3;->f$0:Lcom/gathin/tvhome/ClockScene;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda3;->f$3:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda3;->f$4:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda3;->f$1:Landroid/animation/ArgbEvaluator;

    iget v4, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda3;->f$2:F

    invoke-virtual {v3, v4, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/gathin/tvhome/ClockScene;->glowColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v2, v1

    const/high16 v3, 0x14000000

    or-int/2addr v3, v1

    filled-new-array {v2, v3, v1}, [I

    move-result-object v1

    iget-object v0, v0, Lcom/gathin/tvhome/ClockScene;->glow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    return-void
.end method
