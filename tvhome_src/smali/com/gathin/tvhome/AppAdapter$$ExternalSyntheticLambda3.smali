.class public final synthetic Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 4

    iget-object v0, p0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iget v1, p0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    sget v1, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    check-cast v0, Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f851eb8    # 1.04f

    if-eqz p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-boolean p2, v0, Lcom/gathin/tvhome/MainActivity;->reducedMotion:Z

    if-eqz p2, :cond_2

    const-wide/16 v0, 0x5a

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0xa0

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :pswitch_0
    check-cast v0, Lcom/gathin/tvhome/AppAdapter;

    if-eqz p2, :cond_3

    iget-object p1, v0, Lcom/gathin/tvhome/AppAdapter;->listener:Lcom/gathin/tvhome/AppAdapter$TileListener;

    check-cast p1, Lcom/gathin/tvhome/MainActivity;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/gathin/tvhome/MainActivity;->libraryFocusPending:Z

    invoke-virtual {p1}, Lcom/gathin/tvhome/MainActivity;->hideGlass()V

    invoke-virtual {p1}, Lcom/gathin/tvhome/MainActivity;->hideHero()V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
