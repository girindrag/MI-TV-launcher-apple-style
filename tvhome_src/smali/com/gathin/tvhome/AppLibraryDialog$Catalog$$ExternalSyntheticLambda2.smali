.class public final synthetic Lcom/gathin/tvhome/AppLibraryDialog$Catalog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/AppLibraryDialog$Catalog;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/gathin/tvhome/AppLibraryDialog$Row;


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/AppLibraryDialog$Catalog;Ljava/lang/String;Lcom/gathin/tvhome/AppLibraryDialog$Row;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/AppLibraryDialog$Catalog$$ExternalSyntheticLambda2;->f$0:Lcom/gathin/tvhome/AppLibraryDialog$Catalog;

    iput-object p2, p0, Lcom/gathin/tvhome/AppLibraryDialog$Catalog$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/gathin/tvhome/AppLibraryDialog$Catalog$$ExternalSyntheticLambda2;->f$2:Lcom/gathin/tvhome/AppLibraryDialog$Row;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 4

    iget-object v0, p0, Lcom/gathin/tvhome/AppLibraryDialog$Catalog$$ExternalSyntheticLambda2;->f$0:Lcom/gathin/tvhome/AppLibraryDialog$Catalog;

    if-eqz p2, :cond_0

    iget-object p2, v0, Lcom/gathin/tvhome/AppLibraryDialog$Catalog;->this$0:Lcom/gathin/tvhome/AppLibraryDialog;

    iget-object v1, p0, Lcom/gathin/tvhome/AppLibraryDialog$Catalog$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object v1, p2, Lcom/gathin/tvhome/AppLibraryDialog;->selectedPackage:Ljava/lang/String;

    iget-object v2, p2, Lcom/gathin/tvhome/AppLibraryDialog;->instructions:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/gathin/tvhome/AppLibraryDialog;->onHome:Ljava/util/function/Predicate;

    invoke-interface {v3, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/gathin/tvhome/AppLibraryDialog;->hint(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda41;

    const/4 v2, 0x2

    invoke-direct {v1, v0, p1, v2}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda41;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/gathin/tvhome/AppLibraryDialog$Catalog$$ExternalSyntheticLambda2;->f$2:Lcom/gathin/tvhome/AppLibraryDialog$Row;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iput p1, p2, Lcom/gathin/tvhome/AppLibraryDialog;->selectedPosition:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    return-void
.end method
