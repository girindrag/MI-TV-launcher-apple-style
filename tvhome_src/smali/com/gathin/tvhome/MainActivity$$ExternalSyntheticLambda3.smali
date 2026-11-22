.class public final synthetic Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/MainActivity;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/MainActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda3;->f$0:Lcom/gathin/tvhome/MainActivity;

    iput-boolean p2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda3;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda3;->f$0:Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    goto :goto_5

    :cond_0
    const/16 p3, 0x13

    const/4 v2, 0x1

    if-ne p2, p3, :cond_1

    :goto_0
    move v1, v2

    goto :goto_5

    :cond_1
    const/16 p3, 0x14

    if-ne p2, p3, :cond_3

    iget-boolean p1, v0, Lcom/gathin/tvhome/MainActivity;->singleRow:Z

    if-eqz p1, :cond_2

    sget p1, Lcom/gathin/tvhome/MainActivity;->lastFocused:I

    goto :goto_1

    :cond_2
    sget p1, Lcom/gathin/tvhome/MainActivity;->lastFocused:I

    sget p2, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    rem-int/2addr p1, p2

    :goto_1
    invoke-virtual {v0, p1}, Lcom/gathin/tvhome/MainActivity;->focusTile(I)V

    goto :goto_0

    :cond_3
    iget-object p3, v0, Lcom/gathin/tvhome/MainActivity;->btnInputs:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_4

    const p3, 0x7f090032

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/gathin/tvhome/MainActivity;->firstTopButton()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    :goto_2
    iget-boolean v0, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda3;->f$1:Z

    const v3, 0x7f090037

    if-eqz v0, :cond_5

    move v4, v3

    goto :goto_3

    :cond_5
    move v4, p3

    :goto_3
    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move p3, v3

    :goto_4
    const/16 v0, 0x15

    if-ne p2, v0, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne p1, v4, :cond_8

    goto :goto_0

    :cond_7
    const/16 v0, 0x16

    if-ne p2, v0, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne p1, p3, :cond_8

    goto :goto_0

    :cond_8
    :goto_5
    return v1
.end method
