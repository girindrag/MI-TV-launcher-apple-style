.class public final synthetic Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8

    iget p1, p0, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/gathin/tvhome/AppLibraryDialog$Catalog;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/gathin/tvhome/AppLibraryDialog$Row;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-nez p3, :cond_3

    const/16 p3, 0x13

    const/4 v1, 0x1

    if-eq p2, p3, :cond_4

    const/16 p3, 0x14

    if-eq p2, p3, :cond_4

    iget-object p1, p1, Lcom/gathin/tvhome/AppLibraryDialog$Catalog;->this$0:Lcom/gathin/tvhome/AppLibraryDialog;

    iget-boolean p3, p1, Lcom/gathin/tvhome/AppLibraryDialog;->rtl:Z

    const/16 v2, 0x15

    const/16 v3, 0x16

    if-eqz p3, :cond_0

    if-ne p2, v3, :cond_1

    goto :goto_0

    :cond_0
    if-ne p2, v2, :cond_1

    :goto_0
    if-eqz v0, :cond_4

    :cond_1
    if-eqz p3, :cond_2

    if-ne p2, v2, :cond_3

    goto :goto_1

    :cond_2
    if-ne p2, v3, :cond_3

    :goto_1
    iget-object p1, p1, Lcom/gathin/tvhome/AppLibraryDialog;->apps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    if-ne v0, p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_2
    return v1

    :pswitch_0
    iget-object p1, p0, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/gathin/tvhome/AppAdapter$Holder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    goto/16 :goto_c

    :cond_5
    const/16 p3, 0x16

    const/16 v1, 0x15

    const/16 v2, 0x14

    const/16 v3, 0x13

    if-eq p2, v3, :cond_6

    if-eq p2, v2, :cond_6

    if-eq p2, v1, :cond_6

    if-eq p2, p3, :cond_6

    goto/16 :goto_c

    :cond_6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    iget-object v4, p0, Lcom/gathin/tvhome/AppAdapter$Holder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v4, Lcom/gathin/tvhome/AppAdapter$TileListener;

    if-eqz v4, :cond_1a

    const/4 v5, -0x1

    if-eq p1, v5, :cond_1a

    check-cast v4, Lcom/gathin/tvhome/MainActivity;

    iget-object v5, v4, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    iget-object v5, v5, Lcom/gathin/tvhome/AppAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-boolean v6, v4, Lcom/gathin/tvhome/MainActivity;->singleRow:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_c

    if-ne p2, v3, :cond_7

    goto/16 :goto_c

    :cond_7
    if-ne p2, v2, :cond_8

    goto/16 :goto_b

    :cond_8
    iget-boolean v2, v4, Lcom/gathin/tvhome/MainActivity;->rtlAppGrid:Z

    if-eqz v2, :cond_a

    if-ne p2, v1, :cond_9

    :goto_3
    move p2, v7

    goto :goto_4

    :cond_9
    move p2, v0

    goto :goto_4

    :cond_a
    if-ne p2, p3, :cond_9

    goto :goto_3

    :goto_4
    iget-object p3, v4, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    add-int/lit8 v1, v5, -0x1

    invoke-virtual {p3, v1}, Lcom/gathin/tvhome/AppAdapter;->focusablePosition(I)I

    move-result p3

    if-eqz p2, :cond_b

    if-lt p1, p3, :cond_b

    iget-object p1, v4, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {p1, v5}, Lcom/gathin/tvhome/AppAdapter;->isLibraryAt(I)Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-virtual {v4}, Lcom/gathin/tvhome/MainActivity;->focusLibrary()V

    goto/16 :goto_b

    :cond_b
    if-nez p2, :cond_1a

    if-nez p1, :cond_1a

    goto/16 :goto_b

    :cond_c
    if-eq p2, v1, :cond_12

    if-ne p2, p3, :cond_d

    goto :goto_7

    :cond_d
    if-ne p2, v3, :cond_f

    sget p3, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    if-ge p1, p3, :cond_e

    goto/16 :goto_c

    :cond_e
    sub-int/2addr p1, p3

    goto :goto_5

    :cond_f
    add-int/lit8 p3, v5, -0x1

    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    div-int v1, p3, v0

    mul-int/2addr v1, v0

    if-lt p1, v1, :cond_10

    iget-object p1, v4, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {p1, v5}, Lcom/gathin/tvhome/AppAdapter;->isLibraryAt(I)Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-virtual {v4}, Lcom/gathin/tvhome/MainActivity;->focusLibrary()V

    goto :goto_b

    :cond_10
    add-int/2addr p1, v0

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_5
    invoke-virtual {v4, p1}, Lcom/gathin/tvhome/MainActivity;->focusTile(I)V

    iget-object p1, v4, Lcom/gathin/tvhome/MainActivity;->grid:Landroidx/recyclerview/widget/RecyclerView;

    if-ne p2, v3, :cond_11

    const/4 p2, 0x2

    goto :goto_6

    :cond_11
    const/4 p2, 0x4

    :goto_6
    invoke-virtual {p1, p2}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_b

    :cond_12
    :goto_7
    iget-boolean v2, v4, Lcom/gathin/tvhome/MainActivity;->rtlAppGrid:Z

    if-eqz v2, :cond_13

    if-ne p2, v1, :cond_14

    goto :goto_8

    :cond_13
    if-ne p2, p3, :cond_14

    :goto_8
    iget-object p3, v4, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    add-int/lit8 v2, v5, -0x1

    invoke-virtual {p3, v2}, Lcom/gathin/tvhome/AppAdapter;->focusablePosition(I)I

    move-result p3

    if-ne p1, p3, :cond_14

    iget-object p3, v4, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {p3, v5}, Lcom/gathin/tvhome/AppAdapter;->isLibraryAt(I)Z

    move-result p3

    if-eqz p3, :cond_14

    invoke-virtual {v4}, Lcom/gathin/tvhome/MainActivity;->focusLibrary()V

    goto :goto_b

    :cond_14
    sget p3, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    if-ge p1, p3, :cond_16

    iget-object p3, v4, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    iget v2, p3, Lcom/gathin/tvhome/AppAdapter;->emptySlots:I

    if-lez v2, :cond_15

    iget p3, p3, Lcom/gathin/tvhome/AppAdapter;->docked:I

    goto :goto_9

    :cond_15
    iget p3, p3, Lcom/gathin/tvhome/AppAdapter;->dockSize:I

    :goto_9
    invoke-static {v5, p3}, Ljava/lang/Math;->min(II)I

    move-result v5

    :cond_16
    sget p3, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    iget-boolean v2, v4, Lcom/gathin/tvhome/MainActivity;->rtlAppGrid:Z

    if-ne p2, v1, :cond_17

    move p2, v7

    goto :goto_a

    :cond_17
    move p2, v0

    :goto_a
    if-eq p2, v2, :cond_18

    rem-int/2addr p1, p3

    if-nez p1, :cond_1a

    goto :goto_b

    :cond_18
    rem-int p2, p1, p3

    sub-int/2addr p3, v7

    if-eq p2, p3, :cond_19

    sub-int/2addr v5, v7

    if-ne p1, v5, :cond_1a

    :cond_19
    :goto_b
    move v0, v7

    :cond_1a
    :goto_c
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
