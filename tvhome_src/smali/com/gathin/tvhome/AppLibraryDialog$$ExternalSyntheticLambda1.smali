.class public final synthetic Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/AppLibraryDialog;

.field public final synthetic f$1:Landroid/content/pm/PackageManager;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/AppLibraryDialog;Landroid/content/pm/PackageManager;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda1;->f$0:Lcom/gathin/tvhome/AppLibraryDialog;

    iput-object p2, p0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda1;->f$1:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda1;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda1;->f$0:Lcom/gathin/tvhome/AppLibraryDialog;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const-string v1, "android.intent.category.LEANBACK_LAUNCHER"

    const-string v3, "android.intent.category.LAUNCHER"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v8, 0x2

    iget-object v9, v0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda1;->f$1:Landroid/content/pm/PackageManager;

    if-ge v6, v8, :cond_4

    aget-object v8, v3, v6

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_0

    iget-boolean v12, v11, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v12, :cond_1

    goto :goto_1

    :cond_1
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v4, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v12, v0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-interface {v7, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-interface {v7, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v10, Lcom/gathin/tvhome/AppLibraryDialog;->KNOWN:Ljava/util/HashMap;

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    :try_start_0
    invoke-virtual {v9, v11, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    iget-wide v13, v12, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v12, v12, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v8, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/gathin/tvhome/AppLibraryDialog$Known;

    move-object v15, v6

    if-eqz v14, :cond_5

    iget-wide v5, v14, Lcom/gathin/tvhome/AppLibraryDialog$Known;->updated:J

    cmp-long v5, v5, v12

    if-eqz v5, :cond_6

    :cond_5
    new-instance v14, Lcom/gathin/tvhome/AppLibraryDialog$Known;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :try_start_1
    invoke-virtual {v3, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/gathin/tvhome/Cards;->cleanLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-direct {v14, v12, v13, v5}, Lcom/gathin/tvhome/AppLibraryDialog$Known;-><init>(JLjava/lang/String;)V

    invoke-virtual {v10, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v3, v14, Lcom/gathin/tvhome/AppLibraryDialog$Known;->label:Ljava/lang/String;

    move-object v6, v15

    invoke-virtual {v6, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    goto :goto_2

    :cond_7
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    iget-object v9, v2, Lcom/gathin/tvhome/AppLibraryDialog;->main:Landroid/os/Handler;

    new-instance v10, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda2;

    iget v3, v0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda1;->f$3:I

    move-object v1, v10

    move-object v5, v8

    invoke-direct/range {v1 .. v7}, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda2;-><init>(Lcom/gathin/tvhome/AppLibraryDialog;ILjava/util/HashSet;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/LinkedHashMap;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
