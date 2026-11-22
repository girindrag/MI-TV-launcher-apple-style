.class public final synthetic Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/gathin/tvhome/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/MainActivity;I)V
    .locals 0

    iput p2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda7;->f$0:Lcom/gathin/tvhome/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14

    const/4 p1, 0x1

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda7;->f$0:Lcom/gathin/tvhome/MainActivity;

    iget v1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda7;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    sget p1, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v0}, Lcom/gathin/tvhome/MainActivity;->openNetworkPill()V

    return-void

    :pswitch_0
    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    const v0, 0x7f090037

    iget-object v8, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda7;->f$0:Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, v8, Lcom/gathin/tvhome/MainActivity;->root:Landroid/widget/FrameLayout;

    const v3, 0x7f0b0010

    const/4 v9, 0x0

    invoke-virtual {v1, v3, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    const v1, 0x7f0900ad

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/LinearLayout;

    iget v1, v8, Lcom/gathin/tvhome/MainActivity;->density:F

    const/high16 v12, 0x435c0000    # 220.0f

    mul-float/2addr v1, v12

    float-to-int v1, v1

    invoke-virtual {v8, v10, v1}, Lcom/gathin/tvhome/MainActivity;->glassPopup(Landroid/view/View;I)Landroid/widget/PopupWindow;

    move-result-object v13

    iget-boolean v1, v8, Lcom/gathin/tvhome/MainActivity;->showInputsMenuRow:Z

    if-eqz v1, :cond_0

    const v1, 0x7f10003d

    invoke-virtual {v8, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/16 v1, 0x17

    invoke-direct {v7, v8, v1}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    const v4, 0x7f070011

    const/4 v6, -0x1

    move-object v1, v8

    move-object v2, v11

    move-object v3, v13

    invoke-virtual/range {v1 .. v7}, Lcom/gathin/tvhome/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    :cond_0
    const v1, 0x7f100060

    invoke-virtual {v8, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/16 v1, 0x18

    invoke-direct {v7, v8, v1}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    const v4, 0x7f07001a

    const/4 v6, -0x1

    move-object v1, v8

    move-object v2, v11

    move-object v3, v13

    invoke-virtual/range {v1 .. v7}, Lcom/gathin/tvhome/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    iget-boolean v1, v8, Lcom/gathin/tvhome/MainActivity;->wifiIconOnly:Z

    if-eqz v1, :cond_1

    iget-object v1, v8, Lcom/gathin/tvhome/MainActivity;->btnWifi:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, v8, Lcom/gathin/tvhome/MainActivity;->btnWifi:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const v2, 0x7f0900c2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const p1, 0x7f100079

    invoke-virtual {v8, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/16 p1, 0x10

    invoke-direct {v7, v8, p1}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    const v4, 0x7f070017

    const/4 v6, -0x1

    move-object v1, v8

    move-object v2, v11

    move-object v3, v13

    invoke-virtual/range {v1 .. v7}, Lcom/gathin/tvhome/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    const p1, 0x7f10007d

    invoke-virtual {v8, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;

    const/16 p1, 0x19

    invoke-direct {v7, v8, p1}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gathin/tvhome/MainActivity;I)V

    const v4, 0x7f070015

    invoke-virtual/range {v1 .. v7}, Lcom/gathin/tvhome/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    invoke-virtual {v10, v9, v9}, Landroid/view/View;->measure(II)V

    iget p1, v8, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr p1, v12

    float-to-int p1, p1

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    iget v3, v8, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v3, v2

    float-to-int v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v13, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f040027

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x800003

    goto :goto_1

    :cond_3
    const p1, 0x800005

    :goto_1
    invoke-virtual {v8, v13, v10, v0, p1}, Lcom/gathin/tvhome/MainActivity;->dropIn(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {v11, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void

    :pswitch_1
    sget v1, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v0}, Lcom/gathin/tvhome/MainActivity;->onLibraryRequested()V

    iput-boolean p1, v0, Lcom/gathin/tvhome/MainActivity;->libraryFromTopBar:Z

    return-void

    :pswitch_2
    sget p1, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v0}, Lcom/gathin/tvhome/MainActivity;->toggleReorder()V

    return-void

    :pswitch_3
    sget p1, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/gathin/tvhome/LauncherSettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x2a

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :pswitch_4
    sget p1, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v0}, Lcom/gathin/tvhome/MainActivity;->showInputs()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
