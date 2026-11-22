.class public final synthetic Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/AppLibraryDialog;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/Set;

.field public final synthetic f$3:Ljava/util/Map;

.field public final synthetic f$4:Ljava/util/Map;

.field public final synthetic f$5:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/AppLibraryDialog;ILjava/util/HashSet;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/LinkedHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda2;->f$0:Lcom/gathin/tvhome/AppLibraryDialog;

    iput p2, p0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda2;->f$2:Ljava/util/Set;

    iput-object p4, p0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda2;->f$3:Ljava/util/Map;

    iput-object p5, p0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda2;->f$4:Ljava/util/Map;

    iput-object p6, p0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda2;->f$5:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda2;->f$0:Lcom/gathin/tvhome/AppLibraryDialog;

    iget-boolean v1, v0, Lcom/gathin/tvhome/AppLibraryDialog;->closed:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/gathin/tvhome/AppLibraryDialog;->loads:Lcom/gathin/tvhome/LibraryLoads;

    iget v2, v1, Lcom/gathin/tvhome/LibraryLoads;->latest:I

    iget v3, p0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda2;->f$1:I

    if-ne v3, v2, :cond_2

    iget-object v2, v0, Lcom/gathin/tvhome/AppLibraryDialog;->tvPackages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget-object v3, p0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda2;->f$2:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v0, Lcom/gathin/tvhome/AppLibraryDialog;->installTimes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v3, p0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda2;->f$3:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v2, v0, Lcom/gathin/tvhome/AppLibraryDialog;->labels:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v3, p0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda2;->f$4:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda2;->f$5:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Lcom/gathin/tvhome/AppLibraryDialog;->fill(Ljava/util/ArrayList;)V

    iget-boolean v2, v1, Lcom/gathin/tvhome/LibraryLoads;->revealPending:Z

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/gathin/tvhome/LibraryLoads;->revealPending:Z

    if-eqz v2, :cond_2

    iget-object v1, v0, Lcom/gathin/tvhome/AppLibraryDialog;->popup:Landroid/widget/PopupWindow;

    iget-object v2, v0, Lcom/gathin/tvhome/AppLibraryDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x11

    invoke-virtual {v1, v4, v5, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v1, v0, Lcom/gathin/tvhome/AppLibraryDialog;->panel:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v5, 0x3f0ccccd    # 0.55f

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2, v3, v4}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-boolean v0, v0, Lcom/gathin/tvhome/AppLibraryDialog;->reducedMotion:Z

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x5a

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0xb4

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    return-void
.end method
