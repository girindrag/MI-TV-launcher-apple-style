.class public final Landroidx/recyclerview/widget/LinearSmoothScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field public final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public mHasCalculatedMillisPerPixel:Z

.field public mInterimTargetDx:I

.field public mInterimTargetDy:I

.field public mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field public final mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field public mMillisPerPixel:F

.field public mPendingInitialRun:Z

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

.field public mRunning:Z

.field public mStarted:Z

.field public mTargetPosition:I

.field public mTargetVector:Landroid/graphics/PointF;

.field public mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetPosition:I

    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    const/4 v0, 0x0

    iput-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    const/high16 v2, -0x80000000

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mHasCalculatedMillisPerPixel:Z

    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public static calculateDtToFit(IIIII)I
    .locals 1

    const/4 v0, -0x1

    if-eq p4, v0, :cond_4

    if-eqz p4, :cond_1

    const/4 p0, 0x1

    if-ne p4, p0, :cond_0

    sub-int/2addr p3, p1

    return p3

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sub-int/2addr p2, p0

    if-lez p2, :cond_2

    return p2

    :cond_2
    sub-int/2addr p3, p1

    if-gez p3, :cond_3

    return p3

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    sub-int/2addr p2, p0

    return p2
.end method


# virtual methods
.method public final calculateTimeForScrolling(I)I
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mHasCalculatedMillisPerPixel:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x41c80000    # 25.0f

    div-float/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mMillisPerPixel:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mHasCalculatedMillisPerPixel:Z

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mMillisPerPixel:F

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method public final computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecyclerView"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onAnimation(II)V
    .locals 13

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->stop()V

    :cond_1
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mPendingInitialRun:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetView:Landroid/view/View;

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_3

    iget v1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetPosition:I

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v5, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v6, v5, v4

    if-nez v6, :cond_2

    iget v6, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v6, v6, v4

    if-eqz v6, :cond_3

    :cond_2
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    float-to-int v5, v5

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v5, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mPendingInitialRun:Z

    iget-object v5, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetView:Landroid/view/View;

    const/4 v6, 0x1

    iget-object v7, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mRecyclingAction:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    if-eqz v5, :cond_11

    iget-object v8, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    goto :goto_0

    :cond_4
    move v5, v2

    :goto_0
    iget v8, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetPosition:I

    if-ne v5, v8, :cond_10

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetView:Landroid/view/View;

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-object v5, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    if-eqz v5, :cond_7

    iget v5, v5, Landroid/graphics/PointF;->x:F

    cmpl-float v5, v5, v4

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    if-lez v5, :cond_6

    move v5, v6

    goto :goto_2

    :cond_6
    move v5, v2

    goto :goto_2

    :cond_7
    :goto_1
    move v5, v1

    :goto_2
    iget-object v8, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v10

    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v10, v11

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v11

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v9

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v9

    iget v12, v8, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v8

    sub-int/2addr v12, v8

    invoke-static {v10, v11, v9, v12, v5}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result v5

    goto :goto_4

    :cond_9
    :goto_3
    move v5, v1

    :goto_4
    iget-object v8, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    if-eqz v8, :cond_b

    iget v8, v8, Landroid/graphics/PointF;->y:F

    cmpl-float v8, v8, v4

    if-nez v8, :cond_a

    goto :goto_5

    :cond_a
    if-lez v8, :cond_c

    move v2, v6

    goto :goto_6

    :cond_b
    :goto_5
    move v2, v1

    :cond_c
    :goto_6
    iget-object v8, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v10

    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v10, v11

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v3

    iget v3, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v3

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v3

    iget v9, v8, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v9, v8

    invoke-static {v10, v11, v3, v9, v2}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result v2

    goto :goto_8

    :cond_e
    :goto_7
    move v2, v1

    :goto_8
    mul-int v3, v5, v5

    mul-int v8, v2, v2

    add-int/2addr v8, v3

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v3, v8

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v3

    int-to-double v8, v3

    const-wide v10, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v3, v8

    if-lez v3, :cond_f

    neg-int v5, v5

    neg-int v2, v2

    iget-object v8, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iput v5, v7, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iput v2, v7, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iput v3, v7, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    iput-object v8, v7, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean v6, v7, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    :cond_f
    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->stop()V

    goto :goto_9

    :cond_10
    const-string v2, "RecyclerView"

    const-string v5, "Passed over target position while smooth scrolling."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetView:Landroid/view/View;

    :cond_11
    :goto_9
    iget-boolean v2, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mRunning:Z

    if-eqz v2, :cond_19

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->stop()V

    goto/16 :goto_b

    :cond_12
    iget v2, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    sub-int p1, v2, p1

    mul-int/2addr v2, p1

    if-gtz v2, :cond_13

    move p1, v1

    :cond_13
    iput p1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    iget v2, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    sub-int p2, v2, p2

    mul-int/2addr v2, p2

    if-gtz v2, :cond_14

    move p2, v1

    :cond_14
    iput p2, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    if-nez p1, :cond_17

    if-nez p2, :cond_17

    iget p1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetPosition:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_16

    iget p2, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v2, p2, v4

    if-nez v2, :cond_15

    iget v2, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_15

    goto :goto_a

    :cond_15
    mul-float/2addr p2, p2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v2

    add-float/2addr v2, p2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p2, v2

    iget v2, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v2, p2

    iput v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v3, p2

    iput v3, p1, Landroid/graphics/PointF;->y:F

    iput-object p1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    const p1, 0x461c4000    # 10000.0f

    mul-float/2addr v2, p1

    float-to-int p2, v2

    iput p2, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    mul-float/2addr v3, p1

    float-to-int p1, v3

    iput p1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    const/16 p1, 0x2710

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result p1

    iget p2, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    int-to-float p2, p2

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr p2, v2

    float-to-int p2, p2

    iget v3, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float p1, p1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    iput p2, v7, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iput v3, v7, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iput p1, v7, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    iput-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean v6, v7, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    goto :goto_b

    :cond_16
    :goto_a
    iget p1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetPosition:I

    iput p1, v7, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->stop()V

    :cond_17
    :goto_b
    iget p1, v7, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz p1, :cond_18

    move v1, v6

    :cond_18
    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Landroidx/recyclerview/widget/RecyclerView;)V

    if-eqz v1, :cond_19

    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mRunning:Z

    if-eqz p1, :cond_19

    iput-boolean v6, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mPendingInitialRun:Z

    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    :cond_19
    return-void
.end method

.method public final stop()V
    .locals 4

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mRunning:Z

    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v3, -0x1

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mTargetPosition:I

    iput-object v1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetView:Landroid/view/View;

    iput v3, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetPosition:I

    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mPendingInitialRun:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/LinearSmoothScroller;

    if-ne v2, p0, :cond_1

    iput-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/LinearSmoothScroller;

    :cond_1
    iput-object v1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iput-object v1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
