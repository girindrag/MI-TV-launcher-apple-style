.class public final synthetic Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V
    .locals 0

    iput p4, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda16;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda16;->f$1:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda16;->f$2:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda16;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda16;->f$2:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/gathin/tvhome/AppLibraryDialog;

    iget-object v2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda16;->f$1:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v2, v0}, Lcom/gathin/tvhome/AppLibraryDialog;->changeHome(Landroid/content/pm/ResolveInfo;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/gathin/tvhome/MainActivity;

    iget-boolean v1, v0, Lcom/gathin/tvhome/MainActivity;->reordering:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/gathin/tvhome/MainActivity;->endReorder()V

    :cond_0
    invoke-virtual {v0}, Lcom/gathin/tvhome/MainActivity;->beginReorder()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gathin/tvhome/MainActivity;->dockEditing:Z

    iget-object v2, v0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    iget-object v3, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda16;->f$1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/gathin/tvhome/AppAdapter;->positionOf(Ljava/lang/String;)I

    move-result v2

    iget-object v4, v0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v4}, Lcom/gathin/tvhome/AppAdapter;->movableCount()I

    move-result v4

    if-gez v2, :cond_2

    invoke-virtual {v0}, Lcom/gathin/tvhome/MainActivity;->endReorder()V

    goto :goto_0

    :cond_2
    iget-boolean v5, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda16;->f$2:Z

    if-eqz v5, :cond_3

    iput v2, v0, Lcom/gathin/tvhome/MainActivity;->dockEditSlot:I

    invoke-virtual {v0}, Lcom/gathin/tvhome/MainActivity;->dimOthers()V

    sget v2, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    sub-int/2addr v4, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/gathin/tvhome/MainActivity;->focusTile(I)V

    const v2, 0x7f10001f

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iput-object v3, v0, Lcom/gathin/tvhome/MainActivity;->dockEditAppKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/gathin/tvhome/MainActivity;->focusTile(I)V

    const v2, 0x7f100020

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
