.class public Lcom/gathin/tvhome/BluetoothMenu;
.super Ljava/lang/Object;
.source "BluetoothMenu.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$show$0(Lcom/gathin/tvhome/MainActivity;)V
    .locals 2

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.intent.action.CONNECT_INPUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/gathin/tvhome/MainActivity;->open(Landroid/content/Intent;)V

    .line 33
    return-void
.end method

.method static synthetic lambda$show$1(Lcom/gathin/tvhome/MainActivity;)V
    .locals 2

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    const-string v1, "com.android.tv.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    :cond_0
    invoke-virtual {p0, v0}, Lcom/gathin/tvhome/MainActivity;->open(Landroid/content/Intent;)V

    .line 42
    return-void
.end method

.method static synthetic lambda$show$2(Lcom/gathin/tvhome/MainActivity;)V
    .locals 2

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.intent.action.CONNECT_INPUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/gathin/tvhome/MainActivity;->open(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method static synthetic lambda$show$3(Lcom/gathin/tvhome/MainActivity;)V
    .locals 2

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.intent.action.CONNECT_INPUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/gathin/tvhome/MainActivity;->open(Landroid/content/Intent;)V

    .line 78
    return-void
.end method

.method static synthetic lambda$show$4(Lcom/gathin/tvhome/MainActivity;)V
    .locals 2

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.intent.action.CONNECT_INPUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/gathin/tvhome/MainActivity;->open(Landroid/content/Intent;)V

    .line 87
    return-void
.end method

.method static synthetic lambda$show$5(Lcom/gathin/tvhome/MainActivity;)V
    .locals 2

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.intent.action.CONNECT_INPUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/gathin/tvhome/MainActivity;->open(Landroid/content/Intent;)V

    .line 93
    return-void
.end method

.method static synthetic lambda$show$6(Lcom/gathin/tvhome/MainActivity;)V
    .locals 2

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.intent.action.CONNECT_INPUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/gathin/tvhome/MainActivity;->open(Landroid/content/Intent;)V

    .line 101
    return-void
.end method

.method static synthetic lambda$show$7(Lcom/gathin/tvhome/MainActivity;)V
    .locals 2

    .line 104
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    const-string v1, "com.android.tv.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0}, Lcom/gathin/tvhome/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    :cond_0
    invoke-virtual {p0, v0}, Lcom/gathin/tvhome/MainActivity;->open(Landroid/content/Intent;)V

    .line 110
    return-void
.end method

.method public static show(Lcom/gathin/tvhome/MainActivity;)V
    .locals 17

    .line 18
    move-object/from16 v8, p0

    const v0, 0x7f0900df

    invoke-virtual {v8, v0}, Lcom/gathin/tvhome/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    const v0, 0x7f090032

    invoke-virtual {v8, v0}, Lcom/gathin/tvhome/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_0
    move-object v9, v0

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/gathin/tvhome/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 22
    const v1, 0x7f0b0010

    iget-object v2, v8, Lcom/gathin/tvhome/MainActivity;->root:Landroid/widget/FrameLayout;

    const/4 v10, 0x0

    invoke-virtual {v0, v1, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 23
    const v0, 0x7f0900ad

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/LinearLayout;

    .line 25
    iget v13, v8, Lcom/gathin/tvhome/MainActivity;->density:F

    .line 26
    const/high16 v0, 0x43a00000    # 320.0f

    mul-float v0, v0, v13

    float-to-int v0, v0

    .line 27
    invoke-virtual {v8, v11, v0}, Lcom/gathin/tvhome/MainActivity;->glassPopup(Landroid/view/View;I)Landroid/widget/PopupWindow;

    move-result-object v14

    .line 29
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_a

    .line 44
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 45
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 46
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 48
    if-eqz v0, :cond_3

    .line 49
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 50
    nop

    .line 52
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "isConnected"

    new-array v4, v10, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 53
    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 55
    :goto_1
    if-eqz v0, :cond_2

    .line 56
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 58
    :cond_2
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :goto_2
    goto :goto_0

    .line 63
    :cond_3
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bluetooth \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 65
    if-lez v0, :cond_4

    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    const/4 v0, -0x1

    const/4 v6, -0x1

    .line 66
    :goto_3
    new-instance v0, Lcom/gathin/tvhome/BluetoothMenu$$ExternalSyntheticLambda2;

    invoke-direct {v0, v8}, Lcom/gathin/tvhome/BluetoothMenu$$ExternalSyntheticLambda2;-><init>(Lcom/gathin/tvhome/MainActivity;)V

    const v4, 0x7f070031

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v14

    move-object/from16 v16, v7

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/gathin/tvhome/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    .line 70
    invoke-virtual {v8, v12}, Lcom/gathin/tvhome/MainActivity;->addSeparator(Landroid/widget/LinearLayout;)V

    .line 73
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 74
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 75
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_5

    :cond_5
    move-object v5, v2

    goto :goto_6

    :cond_6
    :goto_5
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 76
    :goto_6
    new-instance v7, Lcom/gathin/tvhome/BluetoothMenu$$ExternalSyntheticLambda3;

    invoke-direct {v7, v8}, Lcom/gathin/tvhome/BluetoothMenu$$ExternalSyntheticLambda3;-><init>(Lcom/gathin/tvhome/MainActivity;)V

    const v4, 0x7f070031

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v14

    invoke-virtual/range {v1 .. v7}, Lcom/gathin/tvhome/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    .line 79
    goto :goto_4

    .line 82
    :cond_7
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 83
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 84
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_8

    :cond_8
    move-object v5, v2

    goto :goto_9

    :cond_9
    :goto_8
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 85
    :goto_9
    new-instance v7, Lcom/gathin/tvhome/BluetoothMenu$$ExternalSyntheticLambda4;

    invoke-direct {v7, v8}, Lcom/gathin/tvhome/BluetoothMenu$$ExternalSyntheticLambda4;-><init>(Lcom/gathin/tvhome/MainActivity;)V

    const v4, 0x7f070031

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v14

    invoke-virtual/range {v1 .. v7}, Lcom/gathin/tvhome/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    .line 88
    goto :goto_7

    .line 90
    :cond_a
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 91
    new-instance v7, Lcom/gathin/tvhome/BluetoothMenu$$ExternalSyntheticLambda5;

    invoke-direct {v7, v8}, Lcom/gathin/tvhome/BluetoothMenu$$ExternalSyntheticLambda5;-><init>(Lcom/gathin/tvhome/MainActivity;)V

    const v4, 0x7f070031

    const-string v5, "No Paired Devices"

    const/4 v6, -0x1

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v14

    invoke-virtual/range {v1 .. v7}, Lcom/gathin/tvhome/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    .line 96
    :cond_b
    invoke-virtual {v8, v12}, Lcom/gathin/tvhome/MainActivity;->addSeparator(Landroid/widget/LinearLayout;)V

    .line 99
    new-instance v7, Lcom/gathin/tvhome/BluetoothMenu$$ExternalSyntheticLambda6;

    invoke-direct {v7, v8}, Lcom/gathin/tvhome/BluetoothMenu$$ExternalSyntheticLambda6;-><init>(Lcom/gathin/tvhome/MainActivity;)V

    const v4, 0x7f070031

    const-string v5, "+ Add Accessory"

    const/4 v6, -0x1

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v14

    invoke-virtual/range {v1 .. v7}, Lcom/gathin/tvhome/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    .line 103
    new-instance v7, Lcom/gathin/tvhome/BluetoothMenu$$ExternalSyntheticLambda7;

    invoke-direct {v7, v8}, Lcom/gathin/tvhome/BluetoothMenu$$ExternalSyntheticLambda7;-><init>(Lcom/gathin/tvhome/MainActivity;)V

    const v4, 0x7f070015

    const-string v5, "Bluetooth Settings"

    invoke-virtual/range {v1 .. v7}, Lcom/gathin/tvhome/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    goto :goto_b

    .line 31
    :cond_c
    :goto_a
    new-instance v7, Lcom/gathin/tvhome/BluetoothMenu$$ExternalSyntheticLambda0;

    invoke-direct {v7, v8}, Lcom/gathin/tvhome/BluetoothMenu$$ExternalSyntheticLambda0;-><init>(Lcom/gathin/tvhome/MainActivity;)V

    const v4, 0x7f070031

    const-string v5, "Bluetooth \u00b7 Off"

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v14

    invoke-virtual/range {v1 .. v7}, Lcom/gathin/tvhome/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    .line 34
    invoke-virtual {v8, v12}, Lcom/gathin/tvhome/MainActivity;->addSeparator(Landroid/widget/LinearLayout;)V

    .line 35
    new-instance v7, Lcom/gathin/tvhome/BluetoothMenu$$ExternalSyntheticLambda1;

    invoke-direct {v7, v8}, Lcom/gathin/tvhome/BluetoothMenu$$ExternalSyntheticLambda1;-><init>(Lcom/gathin/tvhome/MainActivity;)V

    const v4, 0x7f070015

    const-string v5, "Bluetooth Settings"

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v7}, Lcom/gathin/tvhome/MainActivity;->addInputRow(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;ILjava/lang/String;ILjava/lang/Runnable;)V

    .line 113
    :goto_b
    invoke-virtual {v11, v10, v10}, Landroid/view/View;->measure(II)V

    .line 114
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 115
    const/high16 v1, 0x43960000    # 300.0f

    mul-float v1, v1, v13

    float-to-int v1, v1

    .line 116
    const/high16 v2, 0x43c80000    # 400.0f

    mul-float v13, v13, v2

    float-to-int v2, v13

    .line 117
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 119
    if-eqz v9, :cond_d

    goto :goto_c

    :cond_d
    iget-object v9, v8, Lcom/gathin/tvhome/MainActivity;->root:Landroid/widget/FrameLayout;

    .line 120
    :goto_c
    const v0, 0x800005

    invoke-virtual {v8, v14, v11, v9, v0}, Lcom/gathin/tvhome/MainActivity;->dropIn(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;I)V

    .line 121
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 122
    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 124
    :cond_e
    return-void
.end method
