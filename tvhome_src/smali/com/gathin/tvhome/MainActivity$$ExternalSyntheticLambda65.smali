.class public final synthetic Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda65;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    const/16 p3, 0x13

    const/4 v1, 0x1

    if-eq p2, p3, :cond_3

    const/16 p3, 0x14

    if-ne p2, p3, :cond_1

    goto :goto_0

    :cond_1
    const/16 p3, 0x15

    if-ne p2, p3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f090033

    if-ne p1, p2, :cond_4

    goto :goto_0

    :cond_2
    const/16 p3, 0x16

    if-ne p2, p3, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f090038

    if-ne p1, p2, :cond_4

    :cond_3
    :goto_0
    move v0, v1

    :cond_4
    :goto_1
    return v0
.end method
