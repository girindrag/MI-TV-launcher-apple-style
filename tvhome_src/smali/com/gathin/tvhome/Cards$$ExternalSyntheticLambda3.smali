.class public final synthetic Lcom/gathin/tvhome/Cards$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/gathin/tvhome/Cards$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 9

    const-string v0, "HDMI"

    const-string v1, "VOD"

    const-string v2, "AV"

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget v7, p0, Lcom/gathin/tvhome/Cards$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v7, :pswitch_data_0

    check-cast p1, Lcom/gathin/tvhome/RaceWeekend$Session;

    check-cast p2, Lcom/gathin/tvhome/RaceWeekend$Session;

    iget-object p1, p1, Lcom/gathin/tvhome/RaceWeekend$Session;->start:Ljava/time/Instant;

    iget-object p2, p2, Lcom/gathin/tvhome/RaceWeekend$Session;->start:Ljava/time/Instant;

    invoke-virtual {p1, p2}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

    move-result p1

    return p1

    :pswitch_0
    check-cast p1, Lcom/gathin/tvhome/Cards$Card;

    check-cast p2, Lcom/gathin/tvhome/Cards$Card;

    sget-object v0, Lcom/gathin/tvhome/Cards;->RESERVED_ANYWHERE:[Ljava/lang/String;

    iget-object v0, p1, Lcom/gathin/tvhome/Cards$Card;->label:Ljava/lang/String;

    iget-object v1, p2, Lcom/gathin/tvhome/Cards$Card;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/gathin/tvhome/Cards$Card;->pkg:Ljava/lang/String;

    iget-object p2, p2, Lcom/gathin/tvhome/Cards$Card;->pkg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    check-cast p1, [Ljava/lang/String;

    check-cast p2, [Ljava/lang/String;

    sget-object v0, Lcom/gathin/tvhome/LauncherSettingsActivity;->DOCK_OPACITIES:[I

    aget-object p1, p1, v6

    aget-object p2, p2, v6

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    :pswitch_2
    check-cast p1, Lcom/gathin/tvhome/CoocaaSources$Source;

    check-cast p2, Lcom/gathin/tvhome/CoocaaSources$Source;

    iget-object v7, p1, Lcom/gathin/tvhome/CoocaaSources$Source;->name:Ljava/lang/String;

    iget-object v8, p2, Lcom/gathin/tvhome/CoocaaSources$Source;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget p1, p1, Lcom/gathin/tvhome/CoocaaSources$Source;->index:I

    iget p2, p2, Lcom/gathin/tvhome/CoocaaSources$Source;->index:I

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    goto/16 :goto_6

    :cond_1
    const/4 v7, 0x3

    iget-object p1, p1, Lcom/gathin/tvhome/CoocaaSources$Source;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :goto_1
    move p1, v3

    goto :goto_2

    :sswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move p1, v4

    goto :goto_2

    :sswitch_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move p1, v5

    goto :goto_2

    :sswitch_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move p1, v6

    :goto_2
    packed-switch p1, :pswitch_data_1

    move p1, v4

    goto :goto_3

    :pswitch_3
    move p1, v6

    goto :goto_3

    :pswitch_4
    move p1, v7

    goto :goto_3

    :pswitch_5
    move p1, v5

    :goto_3
    iget-object p2, p2, Lcom/gathin/tvhome/CoocaaSources$Source;->name:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    goto :goto_4

    :sswitch_3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_4

    :cond_5
    move v3, v4

    goto :goto_4

    :sswitch_4
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_4

    :cond_6
    move v3, v5

    goto :goto_4

    :sswitch_5
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_4

    :cond_7
    move v3, v6

    :goto_4
    packed-switch v3, :pswitch_data_2

    goto :goto_5

    :pswitch_6
    move v4, v6

    goto :goto_5

    :pswitch_7
    move v4, v7

    goto :goto_5

    :pswitch_8
    move v4, v5

    :goto_5
    invoke-static {p1, v4}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    :goto_6
    return p1

    :pswitch_9
    check-cast p1, Lcom/gathin/tvhome/Cards$Record;

    check-cast p2, Lcom/gathin/tvhome/Cards$Record;

    iget-object p1, p1, Lcom/gathin/tvhome/Cards$Record;->pkg:Ljava/lang/String;

    iget-object p2, p2, Lcom/gathin/tvhome/Cards$Record;->pkg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :pswitch_a
    check-cast p1, Lcom/gathin/tvhome/Cards$Record;

    check-cast p2, Lcom/gathin/tvhome/Cards$Record;

    iget-wide v0, p2, Lcom/gathin/tvhome/Cards$Record;->decidedAt:J

    iget-wide p1, p1, Lcom/gathin/tvhome/Cards$Record;->decidedAt:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    :pswitch_b
    check-cast p1, Lcom/gathin/tvhome/Cards$Card;

    check-cast p2, Lcom/gathin/tvhome/Cards$Card;

    iget-object v0, p1, Lcom/gathin/tvhome/Cards$Card;->label:Ljava/lang/String;

    iget-object v1, p2, Lcom/gathin/tvhome/Cards$Card;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_7

    :cond_8
    iget-object p1, p1, Lcom/gathin/tvhome/Cards$Card;->pkg:Ljava/lang/String;

    iget-object p2, p2, Lcom/gathin/tvhome/Cards$Card;->pkg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_7
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x835 -> :sswitch_2
        0x14cab -> :sswitch_1
        0x21c398 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x835 -> :sswitch_5
        0x14cab -> :sswitch_4
        0x21c398 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
