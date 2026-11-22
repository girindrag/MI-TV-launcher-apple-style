.class public final synthetic Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    iget v4, p0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v4, :pswitch_data_0

    check-cast p1, Landroid/media/tv/TvInputInfo;

    check-cast p2, Landroid/media/tv/TvInputInfo;

    sget v4, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    check-cast v3, Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getType()I

    move-result v4

    const/16 v5, 0x3ef

    if-ne v4, v5, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getType()I

    move-result v6

    if-ne v6, v5, :cond_1

    move v2, v1

    :cond_1
    if-eq v4, v2, :cond_3

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v3}, Landroid/media/tv/TvInputInfo;->loadLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3}, Landroid/media/tv/TvInputInfo;->loadLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    :goto_1
    return v0

    :pswitch_0
    check-cast p1, Lcom/gathin/tvhome/AppAdapter$Entry;

    check-cast p2, Lcom/gathin/tvhome/AppAdapter$Entry;

    check-cast v3, Lcom/gathin/tvhome/AppAdapter;

    iget-object v4, v3, Lcom/gathin/tvhome/AppAdapter;->savedRanks:Ljava/util/Map;

    iget-object v5, p1, Lcom/gathin/tvhome/AppAdapter$Entry;->component:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Lcom/gathin/tvhome/AppAdapter$Entry;->component:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v5, :cond_4

    if-nez v4, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    if-nez v5, :cond_5

    move v4, v1

    goto :goto_2

    :cond_5
    if-nez v4, :cond_6

    move v4, v0

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Integer;->compare(II)I

    move-result v4

    :goto_2
    if-eqz v4, :cond_7

    move v0, v4

    goto :goto_5

    :cond_7
    iget-object v3, v3, Lcom/gathin/tvhome/AppAdapter;->favourites:Ljava/util/List;

    iget-object v4, p1, Lcom/gathin/tvhome/AppAdapter$Entry;->pkg:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p2, Lcom/gathin/tvhome/AppAdapter$Entry;->pkg:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-gez v4, :cond_c

    if-ltz v3, :cond_8

    goto :goto_4

    :cond_8
    iget v3, p1, Lcom/gathin/tvhome/AppAdapter$Entry;->kind:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    move v3, v1

    goto :goto_3

    :cond_9
    move v3, v2

    :goto_3
    iget v5, p2, Lcom/gathin/tvhome/AppAdapter$Entry;->kind:I

    if-ne v5, v4, :cond_a

    move v2, v1

    :cond_a
    if-eq v3, v2, :cond_b

    if-eqz v3, :cond_d

    goto :goto_5

    :cond_b
    iget-object p1, p1, Lcom/gathin/tvhome/AppAdapter$Entry;->label:Ljava/lang/String;

    iget-object p2, p2, Lcom/gathin/tvhome/AppAdapter$Entry;->label:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_5

    :cond_c
    :goto_4
    if-gez v4, :cond_e

    :cond_d
    move v0, v1

    goto :goto_5

    :cond_e
    if-gez v3, :cond_f

    goto :goto_5

    :cond_f
    invoke-static {v4, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    :goto_5
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
