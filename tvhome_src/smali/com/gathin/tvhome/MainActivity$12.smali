.class public final Lcom/gathin/tvhome/MainActivity$12;
.super Lkotlin/ResultKt;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/gathin/tvhome/MainActivity$12;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$12;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;)F
    .locals 1

    iget v0, p0, Lcom/gathin/tvhome/MainActivity$12;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$12;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/gathin/tvhome/AppLibraryDialog;

    iget v0, v0, Lcom/gathin/tvhome/AppLibraryDialog;->scrollOffset:F

    add-float/2addr p1, v0

    return p1

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$12;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/gathin/tvhome/MainActivity;

    iget v0, v0, Lcom/gathin/tvhome/MainActivity;->glassScrollShift:F

    sub-float/2addr p1, v0

    return p1

    :pswitch_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$12;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/gathin/tvhome/MainActivity;

    iget v0, v0, Lcom/gathin/tvhome/MainActivity;->glassScrollShiftX:F

    sub-float/2addr p1, v0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 1

    iget v0, p0, Lcom/gathin/tvhome/MainActivity$12;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$12;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/gathin/tvhome/AppLibraryDialog;

    iget v0, v0, Lcom/gathin/tvhome/AppLibraryDialog;->scrollOffset:F

    sub-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    return-void

    :pswitch_0
    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$12;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/gathin/tvhome/MainActivity;

    iget v0, v0, Lcom/gathin/tvhome/MainActivity;->glassScrollShift:F

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :pswitch_1
    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$12;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/gathin/tvhome/MainActivity;

    iget v0, v0, Lcom/gathin/tvhome/MainActivity;->glassScrollShiftX:F

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
