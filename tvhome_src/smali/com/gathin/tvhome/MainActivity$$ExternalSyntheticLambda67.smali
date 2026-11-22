.class public final synthetic Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda67;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic f$0:[Z

.field public final synthetic f$1:Landroid/widget/PopupWindow;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>([ZLandroid/widget/PopupWindow;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda67;->f$0:[Z

    iput-object p2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda67;->f$1:Landroid/widget/PopupWindow;

    iput-object p3, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda67;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    sget p1, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    const/16 p1, 0x17

    const/4 v0, 0x0

    if-eq p2, p1, :cond_0

    const/16 p1, 0x42

    if-eq p2, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    iget-object p2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda67;->f$0:[Z

    const/4 v1, 0x1

    if-nez p1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_1

    aput-boolean v1, p2, v0

    :cond_1
    :goto_0
    move v0, v1

    goto :goto_1

    :cond_2
    aget-boolean p1, p2, v0

    aput-boolean v0, p2, v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda67;->f$1:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda67;->f$2:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :goto_1
    return v0
.end method
