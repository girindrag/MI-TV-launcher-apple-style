.class public final synthetic Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/gathin/tvhome/MainActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/MainActivity;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda17;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda17;->f$0:Lcom/gathin/tvhome/MainActivity;

    iput-object p2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda17;->f$1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda17;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda17;->f$0:Lcom/gathin/tvhome/MainActivity;

    iget v3, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda17;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v2, v1}, Lcom/gathin/tvhome/MainActivity;->openInput(Ljava/lang/String;)V

    return-void

    :pswitch_0
    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v2, v1}, Lcom/gathin/tvhome/MainActivity;->openInput(Ljava/lang/String;)V

    return-void

    :pswitch_1
    sget v3, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/gathin/tvhome/Sky;->save(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v3, v0, v0}, Lcom/gathin/tvhome/MainActivity;->reloadApps(ZZZ)V

    goto :goto_0

    :cond_0
    const v1, 0x7f10004a

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :pswitch_2
    sget v3, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v2}, Lcom/gathin/tvhome/MainActivity;->beginReorder()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, v2, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v3, v1}, Lcom/gathin/tvhome/AppAdapter;->positionOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v1}, Lcom/gathin/tvhome/MainActivity;->focusTile(I)V

    iget-object v3, v2, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v3}, Lcom/gathin/tvhome/AppAdapter;->movableCount()I

    move-result v3

    if-lt v1, v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, v2, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v3, v1}, Lcom/gathin/tvhome/AppAdapter;->keyAt(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/gathin/tvhome/MainActivity;->movingKey:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/gathin/tvhome/MainActivity;->dimOthers()V

    :goto_1
    const v1, 0x7f10007a

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
