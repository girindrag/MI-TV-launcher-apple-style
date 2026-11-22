.class public final synthetic Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/AppAdapter$Holder;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:F

.field public final synthetic f$4:Z

.field public final synthetic f$5:F

.field public final synthetic f$6:Z

.field public final synthetic f$7:Lcom/gathin/tvhome/AppAdapter$TileListener;


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/AppAdapter$Holder;ZZFZFZLcom/gathin/tvhome/AppAdapter$TileListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda1;->f$0:Lcom/gathin/tvhome/AppAdapter$Holder;

    iput-boolean p2, p0, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda1;->f$1:Z

    iput-boolean p3, p0, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda1;->f$2:Z

    iput p4, p0, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda1;->f$3:F

    iput-boolean p5, p0, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda1;->f$4:Z

    iput p6, p0, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda1;->f$5:F

    iput-boolean p7, p0, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda1;->f$6:Z

    iput-object p8, p0, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda1;->f$7:Lcom/gathin/tvhome/AppAdapter$TileListener;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 13

    iget-object v0, p0, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda1;->f$0:Lcom/gathin/tvhome/AppAdapter$Holder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, v0, Lcom/gathin/tvhome/AppAdapter$Holder;->banner:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v2, v0, Lcom/gathin/tvhome/AppAdapter$Holder;->name:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-boolean v3, p0, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda1;->f$1:Z

    iget-boolean v4, p0, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda1;->f$2:Z

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v3, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    const v6, 0x3f8f5c29    # 1.12f

    goto :goto_0

    :cond_1
    const v6, 0x3f8ccccd    # 1.1f

    :goto_0
    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    iget v7, p0, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda1;->f$3:F

    const/4 v8, 0x0

    if-nez v3, :cond_4

    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationZ(F)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setScaleY(F)V

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move v5, v7

    :goto_2
    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_10

    :cond_4
    iget-boolean v3, p0, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda1;->f$4:Z

    iget v9, p0, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda1;->f$5:F

    const/high16 v10, 0x40800000    # 4.0f

    const/high16 v11, 0x41000000    # 8.0f

    const/high16 v12, -0x3f800000    # -4.0f

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p2, :cond_5

    if-eqz v4, :cond_5

    mul-float/2addr v12, v9

    goto :goto_3

    :cond_5
    move v12, v8

    :goto_3
    invoke-virtual {v1, v12}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p2, :cond_6

    if-eqz v4, :cond_6

    mul-float v8, v9, v11

    :cond_6
    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p2, :cond_7

    const-wide/16 v3, 0x5a

    goto :goto_4

    :cond_7
    const-wide/16 v3, 0x3c

    :goto_4
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    if-eqz p2, :cond_8

    goto :goto_5

    :cond_8
    move v5, v7

    :goto_5
    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    if-eqz p2, :cond_17

    mul-float/2addr v9, v10

    invoke-virtual {v2, v9}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_10

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz p2, :cond_a

    if-eqz v4, :cond_a

    mul-float/2addr v12, v9

    goto :goto_6

    :cond_a
    move v12, v8

    :goto_6
    invoke-virtual {v3, v12}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz p2, :cond_b

    if-eqz v4, :cond_b

    mul-float/2addr v11, v9

    goto :goto_7

    :cond_b
    move v11, v8

    :goto_7
    invoke-virtual {v3, v11}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v4, :cond_d

    if-eqz p2, :cond_c

    const/16 v6, 0xdc

    goto :goto_8

    :cond_c
    const/16 v6, 0xaa

    :goto_8
    int-to-long v11, v6

    goto :goto_9

    :cond_d
    if-eqz p2, :cond_e

    const/16 v6, 0x104

    goto :goto_8

    :cond_e
    const/16 v6, 0xb4

    goto :goto_8

    :goto_9
    invoke-virtual {v3, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz p2, :cond_f

    iget-boolean v6, p0, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda1;->f$6:Z

    if-nez v6, :cond_f

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v8, 0x3fc00000    # 1.5f

    invoke-direct {v6, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto :goto_b

    :cond_f
    new-instance v6, Landroid/view/animation/OvershootInterpolator;

    if-eqz p2, :cond_11

    if-eqz v4, :cond_10

    const v8, 0x3f333333    # 0.7f

    goto :goto_a

    :cond_10
    const v8, 0x3fcccccd    # 1.6f

    :cond_11
    :goto_a
    invoke-direct {v6, v8}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    :goto_b
    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    if-eqz v4, :cond_14

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const v3, 0x3f847ae1    # 1.035f

    if-eqz p2, :cond_12

    move v4, v3

    goto :goto_c

    :cond_12
    move v4, v5

    :goto_c
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p2, :cond_13

    goto :goto_d

    :cond_13
    move v3, v5

    :goto_d
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0x118

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_14
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p2, :cond_15

    goto :goto_e

    :cond_15
    move v5, v7

    :goto_e
    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p2, :cond_16

    mul-float/2addr v9, v10

    goto :goto_f

    :cond_16
    neg-float v2, v9

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float v9, v2, v3

    :goto_f
    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xdc

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_17
    :goto_10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    if-eqz p2, :cond_18

    iget-object p2, p0, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda1;->f$7:Lcom/gathin/tvhome/AppAdapter$TileListener;

    if-eqz p2, :cond_18

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    check-cast p2, Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {p2, p1, v0}, Lcom/gathin/tvhome/MainActivity;->onTileFocused(Landroid/view/View;I)V

    :cond_18
    return-void
.end method
