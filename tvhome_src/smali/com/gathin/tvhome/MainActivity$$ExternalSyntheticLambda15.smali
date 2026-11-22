.class public final synthetic Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/gathin/tvhome/MainActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/MainActivity;II)V
    .locals 0

    iput p3, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda15;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda15;->f$0:Lcom/gathin/tvhome/MainActivity;

    iput p2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda15;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-wide/16 v0, 0x1f4

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda15;->f$1:I

    iget-object v4, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda15;->f$0:Lcom/gathin/tvhome/MainActivity;

    iget v5, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda15;->$r8$classId:I

    packed-switch v5, :pswitch_data_0

    sget v5, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v4, v3}, Lcom/gathin/tvhome/MainActivity;->setAmbient(I)V

    iget-object v3, v4, Lcom/gathin/tvhome/MainActivity;->ambient:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :pswitch_0
    sget v5, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v4, v3}, Lcom/gathin/tvhome/MainActivity;->setAmbient(I)V

    iget-object v3, v4, Lcom/gathin/tvhome/MainActivity;->ambient:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :pswitch_1
    iget-object v0, v4, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
