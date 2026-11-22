.class public final Lcom/gathin/tvhome/ClockScene$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/gathin/tvhome/ClockScene$1;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/ClockScene$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-wide/32 v3, 0xea60

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v7, v0, Lcom/gathin/tvhome/ClockScene$1;->this$0:Ljava/lang/Object;

    iget v8, v0, Lcom/gathin/tvhome/ClockScene$1;->$r8$classId:I

    packed-switch v8, :pswitch_data_0

    sget v1, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    check-cast v7, Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {v7}, Lcom/gathin/tvhome/MainActivity;->updateGreeting()V

    invoke-virtual {v7}, Lcom/gathin/tvhome/MainActivity;->updateRace()V

    iget-boolean v1, v7, Lcom/gathin/tvhome/MainActivity;->festive:Z

    if-eqz v1, :cond_0

    invoke-virtual {v7}, Lcom/gathin/tvhome/MainActivity;->updateWifiLabel()V

    :cond_0
    iget-object v1, v7, Lcom/gathin/tvhome/MainActivity;->sky:Lcom/gathin/tvhome/SkyView;

    iget v2, v1, Lcom/gathin/tvhome/SkyView;->intensity:I

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v5}, Lcom/gathin/tvhome/SkyView;->render(Z)V

    :cond_2
    :goto_0
    iget-object v1, v7, Lcom/gathin/tvhome/MainActivity;->wallpaperPlayer:Lcom/gathin/tvhome/WallpaperPlayer;

    invoke-virtual {v1}, Lcom/gathin/tvhome/WallpaperPlayer;->update()V

    iget-object v1, v7, Lcom/gathin/tvhome/MainActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    check-cast v7, Lcom/gathin/tvhome/DiyaDrawable;

    invoke-virtual {v7, v1, v2}, Lcom/gathin/tvhome/DiyaDrawable;->update(J)V

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    invoke-virtual {v7}, Lcom/gathin/tvhome/DiyaDrawable;->wantsFrames()Z

    move-result v3

    if-eqz v3, :cond_3

    const-wide/16 v3, 0x42

    add-long/2addr v1, v3

    invoke-virtual {v7, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_3
    return-void

    :pswitch_1
    check-cast v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    return-void

    :pswitch_2
    check-cast v7, Landroidx/recyclerview/widget/FastScroller;

    iget v3, v7, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    iget-object v4, v7, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    if-eq v3, v6, :cond_4

    if-eq v3, v2, :cond_5

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    const/4 v3, 0x3

    iput v3, v7, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    new-array v2, v2, [F

    aput v3, v2, v5

    aput v1, v2, v6

    invoke-virtual {v4, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const/16 v1, 0x1f4

    int-to-long v1, v1

    invoke-virtual {v4, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    :goto_1
    return-void

    :pswitch_3
    move-object v2, v7

    check-cast v2, Lcom/gathin/tvhome/ClockScene;

    iget-object v5, v2, Lcom/gathin/tvhome/ClockScene;->content:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v7, 0x384

    invoke-virtual {v1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v5, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda1;

    invoke-direct {v5, v2, v6}, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda1;-><init>(Lcom/gathin/tvhome/ClockScene;I)V

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-boolean v1, v2, Lcom/gathin/tvhome/ClockScene;->wallpaperShown:Z

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    iget v1, v2, Lcom/gathin/tvhome/ClockScene;->glowColor:I

    iget v5, v2, Lcom/gathin/tvhome/ClockScene;->colorIndex:I

    add-int/2addr v5, v6

    rem-int/lit8 v5, v5, 0x5

    iput v5, v2, Lcom/gathin/tvhome/ClockScene;->colorIndex:I

    sget-object v7, Lcom/gathin/tvhome/ClockScene;->PALETTE:[I

    aget v5, v7, v5

    new-instance v13, Landroid/animation/ArgbEvaluator;

    invoke-direct {v13}, Landroid/animation/ArgbEvaluator;-><init>()V

    move v14, v6

    :goto_2
    const/16 v7, 0x10

    if-gt v14, v7, :cond_7

    int-to-float v7, v14

    const/high16 v8, 0x41800000    # 16.0f

    div-float v10, v7, v8

    iget-object v15, v2, Lcom/gathin/tvhome/ClockScene;->handler:Landroid/os/Handler;

    new-instance v12, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda3;

    move-object v7, v12

    move-object v8, v2

    move-object v9, v13

    move v11, v1

    move-object v3, v12

    move v12, v5

    invoke-direct/range {v7 .. v12}, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda3;-><init>(Lcom/gathin/tvhome/ClockScene;Landroid/animation/ArgbEvaluator;FII)V

    int-to-long v7, v14

    const-wide/16 v9, 0x1f4

    mul-long/2addr v7, v9

    invoke-virtual {v15, v3, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/2addr v14, v6

    const-wide/32 v3, 0xea60

    goto :goto_2

    :cond_7
    :goto_3
    iget-object v1, v2, Lcom/gathin/tvhome/ClockScene;->handler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
