.class public final synthetic Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gathin/tvhome/CardFeature$Step;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/MainActivity;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/MainActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda28;->f$0:Lcom/gathin/tvhome/MainActivity;

    iput-object p2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda28;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 27

    move-object/from16 v1, p0

    const/16 v2, 0x9

    const/4 v3, 0x1

    iget-object v13, v1, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda28;->f$0:Lcom/gathin/tvhome/MainActivity;

    iget-object v14, v13, Lcom/gathin/tvhome/MainActivity;->hiddenApps:Ljava/util/Set;

    sget-object v0, Lcom/gathin/tvhome/Cards;->RESERVED_ANYWHERE:[Ljava/lang/String;

    const-string v15, ": "

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v12, 0x2

    and-int/2addr v0, v12

    const/16 v11, 0x20

    const-string v10, "TvHomeCards"

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/gathin/tvhome/Cards;->selfChecked:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    sput-boolean v3, Lcom/gathin/tvhome/Cards;->selfChecked:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "Retro"

    invoke-static {v4}, Lcom/gathin/tvhome/Cards;->checkLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, "label Retro rejected"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v4, "Verified\u202e"

    invoke-static {v4}, Lcom/gathin/tvhome/Cards;->checkLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, "control character accepted"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v4, "NES games"

    invoke-static {v4}, Lcom/gathin/tvhome/Cards;->checkCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v4, "caption rejected"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v4, "#E8A33D"

    invoke-static {v4}, Lcom/gathin/tvhome/Cards;->parseAccent(Ljava/lang/String;)I

    move-result v4

    const v5, -0x175cc3

    if-ne v4, v5, :cond_4

    const-string v4, "#ffe8a33d"

    invoke-static {v4}, Lcom/gathin/tvhome/Cards;->parseAccent(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_5

    :cond_4
    const-string v4, "accent"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v4, "Live TV"

    invoke-static {v4}, Lcom/gathin/tvhome/Cards;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "livetv"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/util/HashSet;

    const-string v6, "Home"

    invoke-static {v6}, Lcom/gathin/tvhome/Cards;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v6, "Settings"

    invoke-static {v6}, Lcom/gathin/tvhome/Cards;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v6, "Inputs"

    invoke-static {v6}, Lcom/gathin/tvhome/Cards;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v6, "Wi-Fi"

    invoke-static {v6}, Lcom/gathin/tvhome/Cards;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static {v4}, Lcom/gathin/tvhome/Cards;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v4, "Default home"

    invoke-static {v4}, Lcom/gathin/tvhome/Cards;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v4, "Clock"

    invoke-static {v4}, Lcom/gathin/tvhome/Cards;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    filled-new-array/range {v16 .. v22}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string v4, "hdmi2"

    invoke-static {v4, v5}, Lcom/gathin/tvhome/Cards;->isReserved(Ljava/lang/String;Ljava/util/HashSet;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    const-string v4, "fold or reserved"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string v4, "Netflix\u202e\n"

    const-string v5, "x"

    invoke-static {v4, v5}, Lcom/gathin/tvhome/Cards;->cleanLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Netflix"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "cleanLabel"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string v4, "io.example.a"

    invoke-static {v4}, Lcom/gathin/tvhome/Cards;->isPackageName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "example"

    invoke-static {v5}, Lcom/gathin/tvhome/Cards;->isPackageName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    const-string v5, "package name"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    new-array v6, v11, [B

    invoke-static {v6}, Lcom/gathin/tvhome/Cards;->hex([B)Ljava/lang/String;

    move-result-object v18

    new-instance v6, Lcom/gathin/tvhome/Cards$Record;

    const-string v19, "a"

    const-string v20, "show"

    const-string v17, "io.example.a"

    const-wide/16 v21, 0x1

    const-wide/16 v23, 0x2

    move-object/from16 v16, v6

    invoke-direct/range {v16 .. v24}, Lcom/gathin/tvhome/Cards$Record;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v5, v4, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Lcom/gathin/tvhome/Cards;->encode(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gathin/tvhome/Cards;->decode(Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/util/TreeMap;->size()I

    move-result v6

    if-ne v6, v3, :cond_b

    invoke-virtual {v5, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gathin/tvhome/Cards$Record;

    iget-wide v4, v4, Lcom/gathin/tvhome/Cards$Record;->decidedAt:J

    const-wide/16 v6, 0x2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_c

    :cond_b
    const-string v4, "store round trip"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    const-string v4, "{}"

    invoke-static {v4}, Lcom/gathin/tvhome/Cards;->decode(Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object v4

    if-eqz v4, :cond_d

    const-string v4, "bad store accepted"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v0, "self-check ok"

    goto :goto_0

    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "self-check FAILED: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.gathin.tvhome.category.DOCK_CARD"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v4, 0x80

    invoke-virtual {v8, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_14

    :cond_10
    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    new-instance v0, Ljava/io/File;

    invoke-virtual {v13}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "cards.json"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gathin/tvhome/Cards;->load(Ljava/io/File;)Ljava/util/TreeMap;

    move-result-object v7

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v0, v1, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda28;->f$1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v12, :cond_11

    :goto_3
    const/4 v12, 0x2

    goto :goto_2

    :cond_11
    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    new-instance v11, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :try_start_1
    invoke-virtual {v0, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12, v5}, Lcom/gathin/tvhome/Cards;->addName(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12, v5}, Lcom/gathin/tvhome/Cards;->addName(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": label unreadable, "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const/4 v3, 0x1

    const/16 v11, 0x20

    goto :goto_3

    :cond_12
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v2, :cond_13

    aget v2, v3, v11

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gathin/tvhome/Cards;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    add-int/2addr v11, v2

    const/16 v2, 0x9

    goto :goto_5

    :cond_13
    const/4 v2, 0x1

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    const/4 v11, 0x0

    :goto_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    add-int/2addr v11, v2

    const/16 v2, 0x20

    if-le v11, v2, :cond_15

    const-string v0, "more than 32 cards declared; the rest are ignored"

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move-object/from16 v22, v7

    move-object v1, v9

    move-object v13, v10

    const/4 v14, 0x2

    goto/16 :goto_c

    :cond_15
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_16

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :goto_7
    move-object v2, v4

    goto :goto_8

    :cond_16
    const-string v4, "?"

    goto :goto_7

    :goto_8
    move-object v4, v13

    move-object/from16 v16, v5

    move-object v5, v8

    move-object/from16 v21, v6

    move-object v6, v0

    move-object/from16 v22, v7

    move-object/from16 v7, v21

    move-object/from16 v23, v8

    move-object/from16 v8, v16

    move-object v1, v9

    move-object v9, v12

    move-object/from16 v24, v13

    move-object v13, v10

    move-object v10, v14

    move/from16 v25, v11

    const/16 v18, 0x20

    move-object v11, v3

    move-object/from16 v17, v12

    move-object/from16 v26, v14

    const/4 v14, 0x2

    move-object/from16 v12, v22

    :try_start_2
    invoke-static/range {v4 .. v12}, Lcom/gathin/tvhome/Cards;->read(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Ljava/util/HashSet;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/Set;Ljava/util/HashSet;Ljava/util/Map;)Lcom/gathin/tvhome/Cards$Card;

    move-result-object v0

    iget-object v4, v0, Lcom/gathin/tvhome/Cards$Card;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/gathin/tvhome/Cards$CardException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_a

    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :goto_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    move-object v9, v1

    move-object v10, v13

    move-object/from16 v5, v16

    move-object/from16 v12, v17

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v13, v24

    move/from16 v11, v25

    move-object/from16 v14, v26

    const/4 v2, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_6

    :goto_c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gathin/tvhome/Cards$Card;

    iget-object v4, v3, Lcom/gathin/tvhome/Cards$Card;->label:Ljava/lang/String;

    invoke-static {v4}, Lcom/gathin/tvhome/Cards;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_17

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_18
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gathin/tvhome/Cards$Card;

    iget-object v4, v3, Lcom/gathin/tvhome/Cards$Card;->label:Ljava/lang/String;

    invoke-static {v4}, Lcom/gathin/tvhome/Cards;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_19

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_19
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gathin/tvhome/Cards$Card;

    iget v7, v6, Lcom/gathin/tvhome/Cards$Card;->state:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1a

    if-eq v7, v14, :cond_1a

    const/4 v10, 0x3

    if-ne v7, v10, :cond_1b

    :cond_1a
    move-object/from16 v18, v9

    move-object/from16 v10, v22

    goto :goto_12

    :cond_1b
    if-eqz v5, :cond_1f

    iget-object v7, v6, Lcom/gathin/tvhome/Cards$Card;->pkg:Ljava/lang/String;

    move-object/from16 v10, v22

    invoke-virtual {v10, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/gathin/tvhome/Cards$Record;

    iget-object v12, v5, Lcom/gathin/tvhome/Cards$Card;->pkg:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/gathin/tvhome/Cards$Record;

    const-wide v16, 0x7fffffffffffffffL

    move-object/from16 v18, v9

    if-eqz v11, :cond_1c

    iget-wide v8, v11, Lcom/gathin/tvhome/Cards$Record;->firstSeen:J

    goto :goto_10

    :cond_1c
    move-wide/from16 v8, v16

    :goto_10
    if-eqz v15, :cond_1d

    iget-wide v14, v15, Lcom/gathin/tvhome/Cards$Record;->firstSeen:J

    move-wide/from16 v16, v14

    :cond_1d
    cmp-long v8, v8, v16

    if-eqz v8, :cond_1e

    if-gez v8, :cond_20

    goto :goto_11

    :cond_1e
    invoke-virtual {v7, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_20

    goto :goto_11

    :cond_1f
    move-object/from16 v18, v9

    move-object/from16 v10, v22

    :goto_11
    move-object v5, v6

    :cond_20
    :goto_12
    move-object/from16 v22, v10

    move-object/from16 v9, v18

    const/4 v14, 0x2

    goto :goto_f

    :cond_21
    move-object/from16 v18, v9

    move-object/from16 v10, v22

    move-object/from16 v4, v18

    if-ne v5, v3, :cond_22

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    move-object v9, v4

    move-object/from16 v22, v10

    const/4 v14, 0x2

    goto/16 :goto_e

    :cond_23
    move-object v4, v9

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gathin/tvhome/Cards$Card;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/gathin/tvhome/Cards$Card;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": another card is also named \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/gathin/tvhome/Cards$Card;->label:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_25
    move-object v9, v4

    goto :goto_14

    :catch_3
    move-exception v0

    move-object v1, v9

    move-object v13, v10

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "card query failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v1

    :goto_14
    return-object v9

    nop

    :array_0
    .array-data 4
        0x7f100005
        0x7f10007d
        0x7f10003d
        0x7f100018
        0x7f1000a2
        0x7f10004b
        0x7f100038
        0x7f100004
        0x7f100022
    .end array-data
.end method
