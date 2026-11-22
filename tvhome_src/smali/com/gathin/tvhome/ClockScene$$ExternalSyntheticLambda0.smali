.class public final synthetic Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget p1, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/gathin/tvhome/MainActivity;

    iget-object p3, p1, Lcom/gathin/tvhome/MainActivity;->greeting:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget p5, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr p4, p2

    if-eq p5, p4, :cond_0

    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p4, p1, Lcom/gathin/tvhome/MainActivity;->greeting:Landroid/widget/TextView;

    invoke-virtual {p4, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object p1, p1, Lcom/gathin/tvhome/MainActivity;->greeting:Landroid/widget/TextView;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/gathin/tvhome/ClockScene;

    iget-object p1, p1, Lcom/gathin/tvhome/ClockScene;->glow:Landroid/graphics/drawable/GradientDrawable;

    sub-int/2addr p4, p2

    int-to-float p2, p4

    const p3, 0x3f0ccccd    # 0.55f

    mul-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
