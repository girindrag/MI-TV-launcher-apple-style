.class public final synthetic Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/gathin/tvhome/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/MainActivity;I)V
    .locals 0

    iput p2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda2;->f$0:Lcom/gathin/tvhome/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 9

    const/4 p1, 0x1

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda2;->f$0:Lcom/gathin/tvhome/MainActivity;

    iget v1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    sget v1, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v0}, Lcom/gathin/tvhome/MainActivity;->showSamsungQuickBar()V

    return p1

    :pswitch_0
    sget v1, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-static {v0, v1}, Lcom/gathin/tvhome/Sky;->intent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gathin/tvhome/MainActivity;->open(Landroid/content/Intent;)V

    return p1

    :pswitch_1
    sget v1, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    const v1, 0x7f090037

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, v0, Lcom/gathin/tvhome/MainActivity;->root:Landroid/widget/FrameLayout;

    const v4, 0x7f0b0010

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0900ad

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget v4, v0, Lcom/gathin/tvhome/MainActivity;->density:F

    const/high16 v6, 0x43480000    # 200.0f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v0, v2, v4}, Lcom/gathin/tvhome/MainActivity;->glassPopup(Landroid/view/View;I)Landroid/widget/PopupWindow;

    move-result-object v4

    iget-boolean v7, v0, Lcom/gathin/tvhome/MainActivity;->launcherSettingsButton:Z

    if-nez v7, :cond_0

    new-instance v7, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/16 v8, 0xc

    invoke-direct {v7, v0, v8}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    const v8, 0x7f100040

    invoke-virtual {v0, v3, v4, v8, v7}, Lcom/gathin/tvhome/MainActivity;->addSettingsMenuRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/Runnable;)V

    :cond_0
    invoke-static {v0}, Lcom/gathin/tvhome/Sky;->vendorIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_1

    new-instance v7, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/16 v8, 0xd

    invoke-direct {v7, v0, v8}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    const v8, 0x7f100054

    invoke-virtual {v0, v3, v4, v8, v7}, Lcom/gathin/tvhome/MainActivity;->addSettingsMenuRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/Runnable;)V

    :cond_1
    iget-boolean v7, v0, Lcom/gathin/tvhome/MainActivity;->moduleCards:Z

    if-eqz v7, :cond_2

    new-instance v7, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/16 v8, 0xe

    invoke-direct {v7, v0, v8}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    const v8, 0x7f100053

    invoke-virtual {v0, v3, v4, v8, v7}, Lcom/gathin/tvhome/MainActivity;->addSettingsMenuRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/Runnable;)V

    :cond_2
    iget-boolean v7, v0, Lcom/gathin/tvhome/MainActivity;->dockRow:Z

    if-eqz v7, :cond_3

    new-instance v7, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/16 v8, 0xf

    invoke-direct {v7, v0, v8}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    const v8, 0x7f10001d

    invoke-virtual {v0, v3, v4, v8, v7}, Lcom/gathin/tvhome/MainActivity;->addSettingsMenuRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/Runnable;)V

    :cond_3
    new-instance v7, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/16 v8, 0x10

    invoke-direct {v7, v0, v8}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    const v8, 0x7f100079

    invoke-virtual {v0, v3, v4, v8, v7}, Lcom/gathin/tvhome/MainActivity;->addSettingsMenuRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/Runnable;)V

    invoke-virtual {v2, v5, v5}, Landroid/view/View;->measure(II)V

    iget v7, v0, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v7, v6

    float-to-int v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f040027

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const v6, 0x800003

    goto :goto_0

    :cond_4
    const v6, 0x800005

    :goto_0
    invoke-virtual {v0, v4, v2, v1, v6}, Lcom/gathin/tvhome/MainActivity;->dropIn(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
