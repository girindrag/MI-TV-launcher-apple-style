.class public final synthetic Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda35;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda35;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda35;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 4

    iget v0, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda35;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda35;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/gathin/tvhome/AppLibraryDialog;

    iget-object v1, v0, Lcom/gathin/tvhome/AppLibraryDialog;->actionPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda35;->f$1:Ljava/lang/Object;

    check-cast v2, Landroid/widget/PopupWindow;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/gathin/tvhome/AppLibraryDialog;->actionPopup:Landroid/widget/PopupWindow;

    :cond_0
    iget-object v1, v0, Lcom/gathin/tvhome/AppLibraryDialog;->catalog:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/gathin/tvhome/AppLibraryDialog;->popup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/gathin/tvhome/AppLibraryDialog;->catalog:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/gathin/tvhome/SleepTimer$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/gathin/tvhome/SleepTimer$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda35;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/gathin/tvhome/AppLibraryDialog;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gathin/tvhome/AppLibraryDialog;->closed:Z

    invoke-virtual {v0}, Lcom/gathin/tvhome/AppLibraryDialog;->dismissActions()V

    iget-object v1, v0, Lcom/gathin/tvhome/AppLibraryDialog;->spring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_3
    iget-object v1, v0, Lcom/gathin/tvhome/AppLibraryDialog;->catalog:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    :cond_4
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/gathin/tvhome/AppLibraryDialog;->catalog:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gathin/tvhome/AppLibraryDialog;->highlightShown:Z

    iget-object v0, v0, Lcom/gathin/tvhome/AppLibraryDialog;->icons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda35;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda35;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/gathin/tvhome/MainActivity;

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->openPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda35;->f$1:Ljava/lang/Object;

    check-cast v2, Landroid/widget/PopupWindow;

    if-ne v1, v2, :cond_5

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/gathin/tvhome/MainActivity;->openPopup:Landroid/widget/PopupWindow;

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
