.class public final synthetic Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8

    const/16 v0, 0x14

    const/16 v1, 0x13

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x15

    iget-object v6, p0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    iget v7, p0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v7, :pswitch_data_0

    sget-object p1, Lcom/gathin/tvhome/LauncherSettingsActivity;->DOCK_OPACITIES:[I

    check-cast v6, Lcom/gathin/tvhome/LauncherSettingsActivity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    if-ne p2, v5, :cond_0

    iget-object p1, v6, Lcom/gathin/tvhome/LauncherSettingsActivity;->tabs:[Landroid/widget/TextView;

    iget p2, v6, Lcom/gathin/tvhome/LauncherSettingsActivity;->currentCategory:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move v3, v4

    :cond_0
    return v3

    :pswitch_0
    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-nez p3, :cond_3

    if-eq p2, v5, :cond_2

    if-eq p2, v2, :cond_2

    if-ne p2, v1, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    if-ne p2, v0, :cond_3

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v4

    if-ne p1, p2, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    return v3

    :pswitch_1
    check-cast v6, Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    if-ne p2, v1, :cond_6

    iget-object p1, v6, Lcom/gathin/tvhome/AppAdapter;->listener:Lcom/gathin/tvhome/AppAdapter$TileListener;

    check-cast p1, Lcom/gathin/tvhome/MainActivity;

    iget-object p3, p1, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {p3}, Lcom/gathin/tvhome/AppAdapter;->appCount()I

    move-result p3

    if-nez p3, :cond_5

    invoke-virtual {p1}, Lcom/gathin/tvhome/MainActivity;->firstTopButton()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_5
    iget-object p3, p1, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {p3}, Lcom/gathin/tvhome/AppAdapter;->appCount()I

    move-result p3

    sub-int/2addr p3, v4

    sget v6, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    div-int/2addr p3, v6

    mul-int/2addr p3, v6

    sget v7, Lcom/gathin/tvhome/MainActivity;->lastFocused:I

    rem-int/2addr v7, v6

    add-int/2addr v7, p3

    iget-object p3, p1, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {p3}, Lcom/gathin/tvhome/AppAdapter;->appCount()I

    move-result p3

    sub-int/2addr p3, v4

    invoke-static {v7, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/gathin/tvhome/MainActivity;->focusTile(I)V

    :cond_6
    :goto_0
    if-eq p2, v1, :cond_7

    if-eq p2, v0, :cond_7

    if-eq p2, v5, :cond_7

    if-ne p2, v2, :cond_8

    :cond_7
    move v3, v4

    :cond_8
    :goto_1
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
