.class public final synthetic Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/MainActivity;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Landroid/app/Dialog;

.field public final synthetic f$3:Lcom/gathin/tvhome/Cards$Card;


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/MainActivity;[ZLandroid/app/Dialog;Lcom/gathin/tvhome/Cards$Card;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda62;->f$0:Lcom/gathin/tvhome/MainActivity;

    iput-object p2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda62;->f$1:[Z

    iput-object p3, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda62;->f$2:Landroid/app/Dialog;

    iput-object p4, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda62;->f$3:Lcom/gathin/tvhome/Cards$Card;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda62;->f$0:Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda62;->f$1:[Z

    const/4 v2, 0x0

    aget-boolean v3, v1, v2

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/gathin/tvhome/MainActivity;->cardPrompt:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda62;->f$2:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f090038

    if-ne p1, v1, :cond_1

    move v2, v3

    :cond_1
    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda62;->f$3:Lcom/gathin/tvhome/Cards$Card;

    invoke-virtual {v0, p1, v2}, Lcom/gathin/tvhome/MainActivity;->decideCard(Lcom/gathin/tvhome/Cards$Card;Z)V

    iget-boolean p1, v0, Lcom/gathin/tvhome/MainActivity;->libraryFocusPending:Z

    sget-object v1, Lcom/gathin/tvhome/MainActivity;->lastFocusedKey:Ljava/lang/String;

    sget v2, Lcom/gathin/tvhome/MainActivity;->lastFocused:I

    iget-object v3, v0, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda70;

    invoke-direct {v4, v0, v1, p1, v2}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda70;-><init>(Lcom/gathin/tvhome/MainActivity;Ljava/lang/String;ZI)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
