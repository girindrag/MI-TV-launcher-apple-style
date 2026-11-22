.class public final Lcom/gathin/tvhome/MainActivity$17;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/gathin/tvhome/MainActivity;

.field public final synthetic val$position:I


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/MainActivity;II)V
    .locals 0

    iput p3, p0, Lcom/gathin/tvhome/MainActivity$17;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$17;->this$0:Lcom/gathin/tvhome/MainActivity;

    iput p2, p0, Lcom/gathin/tvhome/MainActivity$17;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    iget v0, p0, Lcom/gathin/tvhome/MainActivity$17;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object p2, p0, Lcom/gathin/tvhome/MainActivity$17;->this$0:Lcom/gathin/tvhome/MainActivity;

    iget-object v0, p2, Lcom/gathin/tvhome/MainActivity;->pendingFocusScroll:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eq v0, p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p2, Lcom/gathin/tvhome/MainActivity;->pendingFocusScroll:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    iget p2, p0, Lcom/gathin/tvhome/MainActivity$17;->val$position:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f09003a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_4
    :goto_1
    return-void

    :pswitch_0
    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/ArrayList;

    if-eqz p2, :cond_6

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_6
    iget-object p2, p0, Lcom/gathin/tvhome/MainActivity$17;->this$0:Lcom/gathin/tvhome/MainActivity;

    iget-object v0, p2, Lcom/gathin/tvhome/MainActivity;->pendingFocusScroll:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eq v0, p0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p2, Lcom/gathin/tvhome/MainActivity;->pendingFocusScroll:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    iget v0, p0, Lcom/gathin/tvhome/MainActivity$17;->val$position:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f090034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    iput-boolean p1, p2, Lcom/gathin/tvhome/MainActivity;->libraryFocusPending:Z

    :cond_8
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
