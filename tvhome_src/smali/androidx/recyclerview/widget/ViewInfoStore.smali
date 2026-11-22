.class public final Landroidx/recyclerview/widget/ViewInfoStore;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mLayoutHolderMap:Ljava/lang/Object;

.field public mOldChangedHolders:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ljava/lang/Object;

    new-instance p1, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p1, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    iput-object p1, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addToOldChangeHolders(JLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/LongSparseArray;

    iget-object v1, v0, Landroidx/collection/LongSparseArray;->mKeys:[J

    iget v2, v0, Landroidx/collection/LongSparseArray;->mSize:I

    invoke-static {v1, v2, p1, p2}, Landroidx/collection/ContainerHelpers;->binarySearch([JIJ)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object p1, v0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, p1, v1

    goto/16 :goto_2

    :cond_0
    not-int v1, v1

    iget v2, v0, Landroidx/collection/LongSparseArray;->mSize:I

    if-ge v1, v2, :cond_1

    iget-object v3, v0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v3, v1

    sget-object v5, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v4, v5, :cond_1

    iget-object v0, v0, Landroidx/collection/LongSparseArray;->mKeys:[J

    aput-wide p1, v0, v1

    aput-object p3, v3, v1

    goto :goto_2

    :cond_1
    iget-boolean v3, v0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroidx/collection/LongSparseArray;->mKeys:[J

    array-length v3, v3

    if-lt v2, v3, :cond_2

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->gc()V

    iget-object v1, v0, Landroidx/collection/LongSparseArray;->mKeys:[J

    iget v2, v0, Landroidx/collection/LongSparseArray;->mSize:I

    invoke-static {v1, v2, p1, p2}, Landroidx/collection/ContainerHelpers;->binarySearch([JIJ)I

    move-result v1

    not-int v1, v1

    :cond_2
    iget v2, v0, Landroidx/collection/LongSparseArray;->mSize:I

    iget-object v3, v0, Landroidx/collection/LongSparseArray;->mKeys:[J

    array-length v3, v3

    const/4 v4, 0x1

    if-lt v2, v3, :cond_5

    add-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x8

    const/4 v3, 0x4

    :goto_0
    const/16 v5, 0x20

    if-ge v3, v5, :cond_4

    shl-int v5, v4, v3

    add-int/lit8 v5, v5, -0xc

    if-gt v2, v5, :cond_3

    move v2, v5

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    div-int/lit8 v2, v2, 0x8

    new-array v3, v2, [J

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, v0, Landroidx/collection/LongSparseArray;->mKeys:[J

    array-length v6, v5

    const/4 v7, 0x0

    invoke-static {v5, v7, v3, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v6, v5

    invoke-static {v5, v7, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, v0, Landroidx/collection/LongSparseArray;->mKeys:[J

    iput-object v2, v0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    :cond_5
    iget v2, v0, Landroidx/collection/LongSparseArray;->mSize:I

    sub-int/2addr v2, v1

    if-eqz v2, :cond_6

    iget-object v3, v0, Landroidx/collection/LongSparseArray;->mKeys:[J

    add-int/lit8 v5, v1, 0x1

    invoke-static {v3, v1, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget v3, v0, Landroidx/collection/LongSparseArray;->mSize:I

    sub-int/2addr v3, v1

    invoke-static {v2, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iget-object v2, v0, Landroidx/collection/LongSparseArray;->mKeys:[J

    aput-wide p1, v2, v1

    iget-object p1, v0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, p1, v1

    iget p1, v0, Landroidx/collection/LongSparseArray;->mSize:I

    add-int/2addr p1, v4

    iput p1, v0, Landroidx/collection/LongSparseArray;->mSize:I

    :goto_2
    return-void
.end method

.method public addToPostLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-nez v1, :cond_0

    invoke-static {}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->obtain()Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget p1, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    return-void
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ljava/lang/Object;

    check-cast v0, [I

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Ljava/lang/Object;

    return-void
.end method

.method public ensureSize(I)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ljava/lang/Object;

    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    goto :goto_1

    :cond_0
    array-length v2, v0

    if-lt p1, v2, :cond_2

    array-length v2, v0

    :goto_0
    if-gt v2, p1, :cond_1

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    new-array p1, v2, [I

    iput-object p1, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ljava/lang/Object;

    check-cast p1, [I

    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v0, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    :cond_2
    :goto_1
    return-void
.end method

.method public findOneViewWithinBoundFlags(IIII)Landroid/view/View;
    .locals 9

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->getParentStart()I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->getParentEnd()I

    move-result v2

    if-le p2, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-eq p1, p2, :cond_3

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->getChildStart(Landroid/view/View;)I

    move-result v6

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->getChildEnd(Landroid/view/View;)I

    move-result v7

    iget-object v8, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Ljava/lang/Object;

    check-cast v8, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    iput v1, v8, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    iput v2, v8, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    iput v6, v8, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    iput v7, v8, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    if-eqz p3, :cond_1

    iput p3, v8, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    invoke-virtual {v8}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->boundsMatch()Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v5

    :cond_1
    if-eqz p4, :cond_2

    iput p4, v8, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    invoke-virtual {v8}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->boundsMatch()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v4, v5

    :cond_2
    add-int/2addr p1, v3

    goto :goto_1

    :cond_3
    return-object v4
.end method

.method public invalidateAfter(I)I
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    array-length v0, v0

    if-lt p1, v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_4

    :cond_3
    const/4 v2, 0x0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_6

    iget-object v3, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    iget v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-ne v4, p1, :cond_5

    move-object v2, v3

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    :goto_1
    if-eqz v2, :cond_7

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_9

    iget-object v3, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    iget v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v3, p1, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    move v2, v1

    :goto_3
    if-eq v2, v1, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    iget-object v3, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    :goto_4
    if-ne v0, v1, :cond_a

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ljava/lang/Object;

    check-cast v0, [I

    array-length v2, v0

    invoke-static {v0, p1, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    iget-object p1, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ljava/lang/Object;

    check-cast p1, [I

    array-length p1, p1

    return p1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ljava/lang/Object;

    check-cast v2, [I

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ljava/lang/Object;

    check-cast v2, [I

    invoke-static {v2, p1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    return v0
.end method

.method public isViewWithinBoundFlags(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->getParentStart()I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->getParentEnd()I

    move-result v2

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->getChildStart(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->getChildEnd(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    iput v1, v0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    iput v2, v0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    iput v3, v0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    iput p1, v0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    const/16 p1, 0x6003

    iput p1, v0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->boundsMatch()Z

    move-result p1

    return p1
.end method

.method public offsetForAddition(II)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ljava/lang/Object;

    check-cast v0, [I

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_2

    :cond_0
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ViewInfoStore;->ensureSize(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ljava/lang/Object;

    check-cast v1, [I

    array-length v2, v1

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-static {v1, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ljava/lang/Object;

    check-cast v1, [I

    const/4 v2, -0x1

    invoke-static {v1, p1, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    iget v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-ge v2, p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr v2, p2

    iput v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public offsetForRemoval(II)V
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ljava/lang/Object;

    check-cast v0, [I

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_2

    :cond_0
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ViewInfoStore;->ensureSize(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ljava/lang/Object;

    check-cast v1, [I

    array-length v2, v1

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-static {v1, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ljava/lang/Object;

    check-cast v1, [I

    array-length v2, v1

    sub-int/2addr v2, p2

    array-length v3, v1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v1, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    iget-object v2, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    iget v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-ge v3, p1, :cond_2

    goto :goto_1

    :cond_2
    if-ge v3, v0, :cond_3

    iget-object v2, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sub-int/2addr v3, p2

    iput v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public popFromLayoutStep(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, 0x0

    if-gez p1, :cond_0

    return-object v1

    :cond_0
    iget-object v2, v0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, p1, 0x1

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    check-cast v2, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-eqz v2, :cond_4

    iget v3, v2, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int v4, v3, p2

    if-eqz v4, :cond_4

    not-int v4, p2

    and-int/2addr v3, v4

    iput v3, v2, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v4, 0x4

    if-ne p2, v4, :cond_1

    iget-object p2, v2, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    goto :goto_0

    :cond_1
    const/16 v4, 0x8

    if-ne p2, v4, :cond_3

    iget-object p2, v2, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    :goto_0
    and-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_2

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, v2, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    iput-object v1, v2, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iput-object v1, v2, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    sget-object p1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->sPool:Landroidx/core/util/Pools$SimplePool;

    invoke-virtual {p1, v2}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    :cond_2
    return-object p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must provide flag PRE or POST"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v1
.end method

.method public removeFromDisappearedInLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    return-void
.end method

.method public removeViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/LongSparseArray;

    iget-boolean v1, v0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->gc()V

    :cond_0
    iget v1, v0, Landroidx/collection/LongSparseArray;->mSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    iget-boolean v3, v0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->gc()V

    :cond_1
    iget-object v3, v0, Landroidx/collection/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v3, v1

    if-ne p1, v4, :cond_2

    sget-object v5, Landroidx/collection/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v4, v5, :cond_3

    aput-object v5, v3, v1

    iput-boolean v2, v0, Landroidx/collection/LongSparseArray;->mGarbage:Z

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    iput v0, p1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iput-object v0, p1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    sget-object v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->sPool:Landroidx/core/util/Pools$SimplePool;

    invoke-virtual {v0, p1}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
