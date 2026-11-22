.class public final synthetic Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda66;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/widget/PopupWindow;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/PopupWindow;Ljava/lang/Runnable;I)V
    .locals 0

    iput p3, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda66;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda66;->f$0:Landroid/widget/PopupWindow;

    iput-object p2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda66;->f$1:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda66;->f$1:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda66;->f$0:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda66;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    sget v1, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_0
    sget v1, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
