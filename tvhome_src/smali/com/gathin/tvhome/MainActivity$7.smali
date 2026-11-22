.class public final Lcom/gathin/tvhome/MainActivity$7;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/gathin/tvhome/MainActivity;


# direct methods
.method public constructor <init>(Lcom/gathin/tvhome/MainActivity;II)V
    .locals 0

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$7;->this$0:Lcom/gathin/tvhome/MainActivity;

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final isLayoutRTL()Z
    .locals 1

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$7;->this$0:Lcom/gathin/tvhome/MainActivity;

    iget-boolean v0, v0, Lcom/gathin/tvhome/MainActivity;->rtlAppGrid:Z

    return v0
.end method

.method public final requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 4

    iget-object p5, p0, Lcom/gathin/tvhome/MainActivity$7;->this$0:Lcom/gathin/tvhome/MainActivity;

    iget-boolean v0, p5, Lcom/gathin/tvhome/MainActivity;->singleRow:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    if-ge p3, v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p3, p2

    goto :goto_0

    :cond_0
    iget p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v0

    sub-int/2addr p3, v0

    if-le p2, p3, :cond_1

    iget p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v0

    sub-int/2addr p3, v0

    sub-int p3, p2, p3

    goto :goto_0

    :cond_1
    move p3, v1

    :goto_0
    if-nez p3, :cond_2

    return v1

    :cond_2
    if-nez p4, :cond_4

    iget-boolean p2, p5, Lcom/gathin/tvhome/MainActivity;->reducedMotion:Z

    if-nez p2, :cond_4

    iget-boolean p2, p5, Lcom/gathin/tvhome/MainActivity;->animations:Z

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p3, v1, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IIZ)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p1, p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :goto_2
    return v2

    :cond_5
    iget-boolean v0, p5, Lcom/gathin/tvhome/MainActivity;->dockRow:Z

    if-eqz v0, :cond_6

    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    sget v3, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    if-ge v0, v3, :cond_6

    return v1

    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iget v0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, p2

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    if-gez p2, :cond_7

    goto :goto_3

    :cond_7
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    if-gt p3, v3, :cond_8

    move p2, v1

    goto :goto_3

    :cond_8
    sub-int/2addr p3, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_3
    if-nez p2, :cond_9

    return v1

    :cond_9
    if-nez p4, :cond_b

    iget-boolean p3, p5, Lcom/gathin/tvhome/MainActivity;->reducedMotion:Z

    if-nez p3, :cond_b

    iget-boolean p3, p5, Lcom/gathin/tvhome/MainActivity;->animations:Z

    if-nez p3, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {p1, v1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IIZ)V

    goto :goto_5

    :cond_b
    :goto_4
    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :goto_5
    return v2
.end method
