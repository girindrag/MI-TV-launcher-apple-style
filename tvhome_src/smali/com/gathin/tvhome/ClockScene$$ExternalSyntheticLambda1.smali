.class public final synthetic Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/gathin/tvhome/ClockScene;


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/ClockScene;I)V
    .locals 0

    iput p2, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda1;->f$0:Lcom/gathin/tvhome/ClockScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda1;->f$0:Lcom/gathin/tvhome/ClockScene;

    invoke-virtual {v0}, Lcom/gathin/tvhome/ClockScene;->placeClock()V

    iget-object v0, v0, Lcom/gathin/tvhome/ClockScene;->content:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda1;->f$0:Lcom/gathin/tvhome/ClockScene;

    invoke-virtual {v0}, Lcom/gathin/tvhome/ClockScene;->placeClock()V

    iget-object v0, v0, Lcom/gathin/tvhome/ClockScene;->content:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
