.class public final synthetic Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/view/View;II)V
    .locals 0

    iput p4, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda45;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda45;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda45;->f$1:Landroid/view/View;

    iput p3, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda45;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda45;->f$2:I

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda45;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda45;->f$0:Ljava/lang/Object;

    iget v3, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda45;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    check-cast v2, Lcom/gathin/tvhome/AppLibraryDialog;

    iget-object v3, v2, Lcom/gathin/tvhome/AppLibraryDialog;->catalog:Landroidx/recyclerview/widget/RecyclerView;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    if-ne v3, v1, :cond_1

    iget-object v2, v2, Lcom/gathin/tvhome/AppLibraryDialog;->popup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    sget v3, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    check-cast v2, Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v2, v1, v0}, Lcom/gathin/tvhome/MainActivity;->onTileFocused(Landroid/view/View;I)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
