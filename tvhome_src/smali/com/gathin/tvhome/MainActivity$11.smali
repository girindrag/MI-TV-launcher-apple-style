.class public final Lcom/gathin/tvhome/MainActivity$11;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/gathin/tvhome/MainActivity$11;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$11;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 8

    iget v0, p0, Lcom/gathin/tvhome/MainActivity$11;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity$11;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/gathin/tvhome/AppLibraryDialog;

    iget p3, p1, Lcom/gathin/tvhome/AppLibraryDialog;->scrollOffset:F

    int-to-float p2, p2

    add-float/2addr p3, p2

    iput p3, p1, Lcom/gathin/tvhome/AppLibraryDialog;->scrollOffset:F

    iget-object p1, p1, Lcom/gathin/tvhome/AppLibraryDialog;->highlight:Lcom/gathin/tvhome/GlassView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p3

    sub-float/2addr p3, p2

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationX(F)V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    iget-object p3, p0, Lcom/gathin/tvhome/MainActivity$11;->this$0:Ljava/lang/Object;

    check-cast p3, Landroidx/recyclerview/widget/FastScroller;

    iget-object v0, p3, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    iget v1, p3, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    sub-int v2, v0, v1

    iget v3, p3, Landroidx/recyclerview/widget/FastScroller;->mScrollbarMinimumRange:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v2, :cond_0

    if-lt v1, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p3, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    iget-object v2, p3, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v2

    iget v6, p3, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    sub-int v7, v2, v6

    if-lez v7, :cond_1

    if-lt v6, v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iput-boolean v3, p3, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    iget-boolean v7, p3, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    if-nez v7, :cond_2

    if-nez v3, :cond_2

    iget p1, p3, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-eqz p1, :cond_6

    invoke-virtual {p3, v4}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    goto :goto_2

    :cond_2
    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v7, :cond_3

    int-to-float p1, p1

    int-to-float v4, v1

    div-float v7, v4, v3

    add-float/2addr v7, p1

    mul-float/2addr v7, v4

    int-to-float p1, v0

    div-float/2addr v7, p1

    float-to-int p1, v7

    iput p1, p3, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    mul-int p1, v1, v1

    div-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p3, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    :cond_3
    iget-boolean p1, p3, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz p1, :cond_4

    int-to-float p1, p2

    int-to-float p2, v6

    div-float v0, p2, v3

    add-float/2addr v0, p1

    mul-float/2addr v0, p2

    int-to-float p1, v2

    div-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p3, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    mul-int p1, v6, v6

    div-int/2addr p1, v2

    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p3, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    :cond_4
    iget p1, p3, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-eqz p1, :cond_5

    if-ne p1, v5, :cond_6

    :cond_5
    invoke-virtual {p3, v5}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    :cond_6
    :goto_2
    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity$11;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/gathin/tvhome/MainActivity;

    iget-boolean v0, p1, Lcom/gathin/tvhome/MainActivity;->glassShown:Z

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    int-to-float p3, p3

    iget v0, p1, Lcom/gathin/tvhome/MainActivity;->glassScrollShift:F

    sub-float/2addr v0, p3

    iput v0, p1, Lcom/gathin/tvhome/MainActivity;->glassScrollShift:F

    iget-object v0, p1, Lcom/gathin/tvhome/MainActivity;->glass:Lcom/gathin/tvhome/GlassView;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    sub-float/2addr v1, p3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    if-eqz p2, :cond_8

    int-to-float p2, p2

    iget p3, p1, Lcom/gathin/tvhome/MainActivity;->glassScrollShiftX:F

    sub-float/2addr p3, p2

    iput p3, p1, Lcom/gathin/tvhome/MainActivity;->glassScrollShiftX:F

    iget-object p1, p1, Lcom/gathin/tvhome/MainActivity;->glass:Lcom/gathin/tvhome/GlassView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p3

    sub-float/2addr p3, p2

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationX(F)V

    :cond_8
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
