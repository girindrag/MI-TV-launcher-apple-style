.class public final Lcom/gathin/tvhome/MainActivity$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/gathin/tvhome/MainActivity;


# direct methods
.method public constructor <init>(Lcom/gathin/tvhome/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$10;->this$0:Lcom/gathin/tvhome/MainActivity;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$10;->this$0:Lcom/gathin/tvhome/MainActivity;

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    sget v1, Lcom/gathin/tvhome/MainActivity;->lastFocused:I

    iget-object v2, v0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v2}, Lcom/gathin/tvhome/AppAdapter;->appCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f09003a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2, v1}, Lcom/gathin/tvhome/MainActivity;->onTileFocused(Landroid/view/View;I)V

    :cond_1
    return-void
.end method
