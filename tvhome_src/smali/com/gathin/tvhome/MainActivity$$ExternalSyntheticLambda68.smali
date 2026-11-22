.class public final synthetic Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda68;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/MainActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/MainActivity;ILjava/lang/String;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda68;->f$0:Lcom/gathin/tvhome/MainActivity;

    iput p2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda68;->f$1:I

    iput-object p3, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda68;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda68;->f$3:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda68;->f$0:Lcom/gathin/tvhome/MainActivity;

    iget v1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda68;->f$1:I

    iget-object v2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda68;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/gathin/tvhome/MainActivity;->fillHero(ILjava/lang/String;)V

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->hero:Landroid/view/View;

    iget v2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda68;->f$3:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->hero:Landroid/view/View;

    const/high16 v2, 0x41400000    # 12.0f

    iget v3, v0, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, v0, Lcom/gathin/tvhome/MainActivity;->hero:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
