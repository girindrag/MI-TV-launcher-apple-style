.class public final synthetic Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/AppLibraryDialog;

.field public final synthetic f$1:Ljava/util/Map;

.field public final synthetic f$2:Ljava/text/Collator;


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/AppLibraryDialog;Ljava/util/HashMap;Ljava/text/Collator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda3;->f$0:Lcom/gathin/tvhome/AppLibraryDialog;

    iput-object p2, p0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda3;->f$1:Ljava/util/Map;

    iput-object p3, p0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda3;->f$2:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    move-object/from16 v2, p2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v3, v0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda3;->f$0:Lcom/gathin/tvhome/AppLibraryDialog;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-boolean v6, v3, Lcom/gathin/tvhome/AppLibraryDialog;->selectionMode:Z

    iget-object v7, v0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda3;->f$1:Ljava/util/Map;

    iget-object v8, v0, Lcom/gathin/tvhome/AppLibraryDialog$$ExternalSyntheticLambda3;->f$2:Ljava/text/Collator;

    if-eqz v6, :cond_2

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v3, v1}, Lcom/gathin/tvhome/AppLibraryDialog;->label(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v3, v2}, Lcom/gathin/tvhome/AppLibraryDialog;->label(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v6}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v8, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    move v3, v1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v9, v3, Lcom/gathin/tvhome/AppLibraryDialog;->installTimes:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-wide v14, v3, Lcom/gathin/tvhome/AppLibraryDialog;->catalogTime:J

    const/4 v9, -0x1

    const/16 v16, 0x1

    if-eq v6, v7, :cond_5

    if-eqz v6, :cond_4

    :cond_3
    move/from16 v9, v16

    :cond_4
    :goto_1
    move v7, v9

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v10, v11, v14, v15}, Lcom/gathin/tvhome/Sky;->recent(JJ)Z

    move-result v6

    invoke-static {v12, v13, v14, v15}, Lcom/gathin/tvhome/Sky;->recent(JJ)Z

    move-result v14

    if-eq v6, v14, :cond_7

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_7
    if-eqz v6, :cond_8

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Long;->compare(JJ)I

    move-result v7

    :cond_8
    :goto_2
    if-eqz v7, :cond_9

    move v3, v7

    goto :goto_3

    :cond_9
    invoke-virtual {v3, v1}, Lcom/gathin/tvhome/AppLibraryDialog;->label(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2}, Lcom/gathin/tvhome/AppLibraryDialog;->label(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_0

    :cond_a
    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :goto_3
    return v3
.end method
