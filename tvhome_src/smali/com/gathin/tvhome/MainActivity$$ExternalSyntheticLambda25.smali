.class public final synthetic Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gathin/tvhome/CardFeature$Step;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/gathin/tvhome/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/MainActivity;I)V
    .locals 0

    iput p2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda25;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda25;->f$0:Lcom/gathin/tvhome/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    const/4 v2, 0x2

    const/16 v3, 0x8

    const v4, 0x7f0900d9

    iget-object v5, v0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda25;->f$0:Lcom/gathin/tvhome/MainActivity;

    const/4 v7, 0x0

    iget v8, v0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda25;->$r8$classId:I

    packed-switch v8, :pswitch_data_0

    sget v8, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    const v8, 0x7f090037

    invoke-virtual {v5, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    iget-object v10, v5, Lcom/gathin/tvhome/MainActivity;->root:Landroid/widget/FrameLayout;

    const v11, 0x7f0b000f

    invoke-virtual {v9, v11, v10, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0900ad

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const/high16 v11, 0x43c80000    # 400.0f

    iget v12, v5, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v12, v11

    float-to-int v11, v12

    invoke-virtual {v5, v9, v11}, Lcom/gathin/tvhome/MainActivity;->glassPopup(Landroid/view/View;I)Landroid/widget/PopupWindow;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    iget-object v13, v5, Lcom/gathin/tvhome/MainActivity;->cards:Ljava/util/List;

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v13, Lcom/gathin/tvhome/Cards$$ExternalSyntheticLambda3;

    const/4 v14, 0x5

    invoke-direct {v13, v14}, Lcom/gathin/tvhome/Cards$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/gathin/tvhome/Cards$Card;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v14

    const v15, 0x7f0b0007

    invoke-virtual {v14, v15, v10, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    iget-object v15, v13, Lcom/gathin/tvhome/Cards$Card;->pkg:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v14, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    iget-object v4, v13, Lcom/gathin/tvhome/Cards$Card;->label:Ljava/lang/String;

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v15, 0x7f09002d

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    invoke-static {v4}, Lcom/gathin/tvhome/Cards;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, v13, Lcom/gathin/tvhome/Cards$Card;->appLabel:Ljava/lang/String;

    invoke-static {v1}, Lcom/gathin/tvhome/Cards;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v15, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    const v4, 0x7f100007

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const v1, 0x7f0900a3

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, v13, Lcom/gathin/tvhome/Cards$Card;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f09004c

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v6, v13, Lcom/gathin/tvhome/Cards$Card;->digest:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/gathin/tvhome/Cards;->grouped(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda79;

    invoke-direct {v1, v5, v4, v10}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda79;-><init>(Lcom/gathin/tvhome/MainActivity;Ljava/lang/String;Landroid/widget/LinearLayout;)V

    invoke-virtual {v14, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v10, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v4, 0x7f0900d9

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v5, v10}, Lcom/gathin/tvhome/MainActivity;->updateCardStates(Landroid/widget/LinearLayout;)V

    invoke-virtual {v9, v7, v7}, Landroid/view/View;->measure(II)V

    new-array v1, v2, [I

    invoke-virtual {v8, v1}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v2, v5, Lcom/gathin/tvhome/MainActivity;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    sub-int/2addr v2, v3

    const/high16 v1, 0x42080000    # 34.0f

    iget v3, v5, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v3, v1

    float-to-int v1, v3

    sub-int/2addr v2, v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/high16 v3, 0x42f00000    # 120.0f

    iget v4, v5, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v4, v3

    float-to-int v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x800003

    goto :goto_2

    :cond_2
    const v1, 0x800005

    :goto_2
    invoke-virtual {v5, v11, v9, v8, v1}, Lcom/gathin/tvhome/MainActivity;->dropIn(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {v10, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    const/4 v1, 0x0

    return-object v1

    :pswitch_0
    iget-object v1, v5, Lcom/gathin/tvhome/MainActivity;->cards:Ljava/util/List;

    sget-object v4, Lcom/gathin/tvhome/Cards;->RESERVED_ANYWHERE:[Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v8, 0x3

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gathin/tvhome/Cards$Card;

    iget v9, v6, Lcom/gathin/tvhome/Cards$Card;->state:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_4

    if-eq v9, v2, :cond_4

    if-ne v9, v8, :cond_3

    :cond_4
    if-eqz v4, :cond_5

    iget-object v8, v6, Lcom/gathin/tvhome/Cards$Card;->pkg:Ljava/lang/String;

    iget-object v9, v4, Lcom/gathin/tvhome/Cards$Card;->pkg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_3

    :cond_5
    move-object v4, v6

    goto :goto_3

    :cond_6
    if-nez v4, :cond_7

    :goto_4
    const/4 v1, 0x0

    goto/16 :goto_7

    :cond_7
    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v6, v5, Lcom/gathin/tvhome/MainActivity;->root:Landroid/widget/FrameLayout;

    const v9, 0x7f0b0004

    invoke-virtual {v1, v9, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v6, 0x7f0900d9

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v9, v4, Lcom/gathin/tvhome/Cards$Card;->appLabel:Ljava/lang/String;

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v10

    const v11, 0x7f100010

    invoke-virtual {v5, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f090031

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget v10, v4, Lcom/gathin/tvhome/Cards$Card;->state:I

    if-ne v10, v2, :cond_8

    const v2, 0x7f10000f

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v2, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_8
    if-ne v10, v8, :cond_9

    const v2, 0x7f10000e

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v2, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_9
    const v2, 0x7f10000a

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v2, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f090091

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v6, v4, Lcom/gathin/tvhome/Cards$Card;->label:Ljava/lang/String;

    invoke-static {v6}, Lcom/gathin/tvhome/Cards;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9}, Lcom/gathin/tvhome/Cards;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_a
    const v3, 0x7f10000d

    filled-new-array {v6, v9}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    const v2, 0x7f090082

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v4, Lcom/gathin/tvhome/Cards$Card;->digest:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v9, 0xc

    if-lt v6, v9, :cond_b

    invoke-virtual {v3, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_b
    invoke-static {v8, v3}, Lcom/gathin/tvhome/Cards;->grouped(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v4, Lcom/gathin/tvhome/Cards$Card;->pkg:Ljava/lang/String;

    filled-new-array {v6, v3}, [Ljava/lang/Object;

    move-result-object v3

    const v6, 0x7f10000c

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f090033

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090038

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v6, Landroid/app/Dialog;

    invoke-direct {v6, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v8}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v8, 0x43dc0000    # 440.0f

    iget v9, v5, Lcom/gathin/tvhome/MainActivity;->density:F

    mul-float/2addr v9, v8

    float-to-int v8, v9

    const/4 v9, -0x2

    invoke-virtual {v1, v8, v9}, Landroid/view/Window;->setLayout(II)V

    const v8, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v8}, Landroid/view/Window;->setDimAmount(F)V

    :cond_c
    const/4 v1, 0x1

    new-array v1, v1, [Z

    aput-boolean v7, v1, v7

    new-instance v7, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda62;

    invoke-direct {v7, v5, v1, v6, v4}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda62;-><init>(Lcom/gathin/tvhome/MainActivity;[ZLandroid/app/Dialog;Lcom/gathin/tvhome/Cards$Card;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda63;

    invoke-direct {v1, v7, v2}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda63;-><init>(Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda62;Landroid/widget/TextView;)V

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v1, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda64;

    invoke-direct {v1, v5, v6}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda64;-><init>(Lcom/gathin/tvhome/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v1, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda65;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iput-object v6, v5, Lcom/gathin/tvhome/MainActivity;->cardPrompt:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_4

    :goto_7
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
