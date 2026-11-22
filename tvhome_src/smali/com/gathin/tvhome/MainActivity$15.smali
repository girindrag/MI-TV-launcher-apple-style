.class public final Lcom/gathin/tvhome/MainActivity$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public frames:I

.field public final synthetic this$0:Lcom/gathin/tvhome/MainActivity;

.field public final synthetic val$pos:I


# direct methods
.method public constructor <init>(Lcom/gathin/tvhome/MainActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$15;->this$0:Lcom/gathin/tvhome/MainActivity;

    iput p2, p0, Lcom/gathin/tvhome/MainActivity$15;->val$pos:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$15;->this$0:Lcom/gathin/tvhome/MainActivity;

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/gathin/tvhome/MainActivity$15;->frames:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gathin/tvhome/MainActivity$15;->frames:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    iget-object v0, v0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget v1, p0, Lcom/gathin/tvhome/MainActivity$15;->val$pos:I

    invoke-virtual {v0, v1}, Lcom/gathin/tvhome/MainActivity;->focusTile(I)V

    invoke-virtual {v0}, Lcom/gathin/tvhome/MainActivity;->dimOthers()V

    return-void
.end method
