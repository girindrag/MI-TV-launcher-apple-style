.class public abstract Lcom/gathin/tvhome/Cards;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RESERVED_ANYWHERE:[Ljava/lang/String;

.field public static final RESERVED_EXACT:Ljava/util/HashSet;

.field public static selfChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "verified"

    const-string v1, "official"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gathin/tvhome/Cards;->RESERVED_ANYWHERE:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    const-string v6, "home"

    const-string v7, "defaulthome"

    const-string v1, "tvvibehack"

    const-string v2, "cleanyourtv"

    const-string v3, "settings"

    const-string v4, "inputs"

    const-string v5, "livetv"

    const-string v8, "wifi"

    const-string v9, "av"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/gathin/tvhome/Cards;->RESERVED_EXACT:Ljava/util/HashSet;

    return-void
.end method

.method public static addName(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1

    invoke-static {p0}, Lcom/gathin/tvhome/Cards;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static checkCaption(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_1

    const-string p0, "caption is longer than 32 characters"

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/gathin/tvhome/Cards;->isReference(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "caption is a resource reference; write the text itself"

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/gathin/tvhome/Cards;->isText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string p0, "caption has characters outside A-Z a-z 0-9 space . & + \' -"

    return-object p0

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v2, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lcom/gathin/tvhome/Cards;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/gathin/tvhome/Cards;->RESERVED_ANYWHERE:[Ljava/lang/String;

    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_6

    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "caption claims endorsement (\'"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-object v0

    :cond_7
    :goto_1
    const-string p0, "caption starts or ends with a space"

    return-object p0

    :cond_8
    :goto_2
    return-object v0
.end method

.method public static checkLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    if-le v0, v1, :cond_1

    const-string p0, "label is longer than 24 characters"

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/gathin/tvhome/Cards;->isReference(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "label is a resource reference; write the text itself"

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/gathin/tvhome/Cards;->isText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "label has characters outside A-Z a-z 0-9 space . & + \' -"

    return-object p0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/gathin/tvhome/Cards;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "label has no letter or digit"

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0

    :cond_6
    :goto_0
    const-string p0, "label starts or ends with a space"

    return-object p0

    :cond_7
    :goto_1
    const-string p0, "label is missing"

    return-object p0
.end method

.method public static cleanLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x30

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_8

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->getType(C)I

    move-result v6

    const/16 v7, 0x20

    if-eq v5, v7, :cond_6

    invoke-static {v5}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_6

    const/16 v8, 0x10

    if-eq v6, v8, :cond_6

    const/16 v8, 0xd

    if-eq v6, v8, :cond_6

    const/16 v8, 0xe

    if-eq v6, v8, :cond_6

    const/16 v8, 0xc

    if-ne v6, v8, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v4, :cond_3

    const/4 v7, 0x2

    goto :goto_2

    :cond_3
    move v7, v2

    :goto_2
    add-int/2addr v6, v7

    const/16 v7, 0x28

    if-le v6, v7, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_5

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    move v4, v1

    goto :goto_4

    :cond_6
    :goto_3
    if-nez v4, :cond_7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    move v4, v2

    :goto_4
    add-int/2addr v3, v2

    goto :goto_0

    :cond_8
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6

    :cond_9
    move-object p1, p0

    :goto_6
    return-object p1
.end method

.method public static decode(Ljava/lang/String;)Ljava/util/TreeMap;
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/high16 v3, 0x10000

    if-le v2, v3, :cond_1

    :cond_0
    move-object v0, v1

    goto/16 :goto_7

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v4, v6, :cond_4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v4, v6, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_3

    :cond_2
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v4, 0x1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "{\"version\":2,\"records\":["

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move-object v0, v1

    goto/16 :goto_7

    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v5, v0, -0x2

    :cond_7
    const/4 v0, 0x1

    if-lt v5, v0, :cond_8

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "]}"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    move-object v0, v1

    goto/16 :goto_7

    :cond_9
    add-int/lit8 v4, v5, -0x1

    const/16 v6, 0x80

    if-le v4, v6, :cond_a

    return-object v1

    :cond_a
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    move v7, v0

    :goto_1
    if-ge v7, v5, :cond_1a

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-ne v7, v4, :cond_b

    goto :goto_2

    :cond_b
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    return-object v1

    :cond_c
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v0

    invoke-virtual {v8, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    :goto_2
    filled-new-array {v3}, [I

    move-result-object v9

    const-string v10, "{\"package\":\""

    invoke-static {v8, v9, v10}, Lcom/gathin/tvhome/Cards;->take(Ljava/lang/String;[ILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    :goto_3
    move-object v0, v1

    goto/16 :goto_5

    :cond_d
    const/16 v10, 0x22

    invoke-static {v8, v9, v10}, Lcom/gathin/tvhome/Cards;->until(Ljava/lang/String;[IC)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_17

    invoke-static {v12}, Lcom/gathin/tvhome/Cards;->isPackageName(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_17

    const-string v11, "\",\"signer_sha256\":\""

    invoke-static {v8, v9, v11}, Lcom/gathin/tvhome/Cards;->take(Ljava/lang/String;[ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_e

    goto/16 :goto_4

    :cond_e
    invoke-static {v8, v9, v10}, Lcom/gathin/tvhome/Cards;->until(Ljava/lang/String;[IC)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_17

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v14, 0x40

    if-ne v11, v14, :cond_17

    invoke-static {v13, v0}, Lcom/gathin/tvhome/Cards;->isHex(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_17

    const-string v11, "\",\"label\":\""

    invoke-static {v8, v9, v11}, Lcom/gathin/tvhome/Cards;->take(Ljava/lang/String;[ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_f

    goto/16 :goto_4

    :cond_f
    invoke-static {v8, v9, v10}, Lcom/gathin/tvhome/Cards;->until(Ljava/lang/String;[IC)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_17

    invoke-static {v14}, Lcom/gathin/tvhome/Cards;->isFolded(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_17

    const-string v11, "\",\"decision\":\""

    invoke-static {v8, v9, v11}, Lcom/gathin/tvhome/Cards;->take(Ljava/lang/String;[ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_10

    goto/16 :goto_4

    :cond_10
    invoke-static {v8, v9, v10}, Lcom/gathin/tvhome/Cards;->until(Ljava/lang/String;[IC)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_17

    const-string v10, "show"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    const-string v10, "hide"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    goto :goto_4

    :cond_11
    const-string v10, "\",\"first_seen\":"

    invoke-static {v8, v9, v10}, Lcom/gathin/tvhome/Cards;->take(Ljava/lang/String;[ILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_12

    goto :goto_3

    :cond_12
    const/16 v10, 0x2c

    invoke-static {v8, v9, v10}, Lcom/gathin/tvhome/Cards;->until(Ljava/lang/String;[IC)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_17

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v0, 0x12

    if-gt v11, v0, :cond_17

    invoke-static {v10}, Lcom/gathin/tvhome/Cards;->isDigits(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_13

    goto :goto_4

    :cond_13
    const-string v11, ",\"decided_at\":"

    invoke-static {v8, v9, v11}, Lcom/gathin/tvhome/Cards;->take(Ljava/lang/String;[ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_14

    goto/16 :goto_3

    :cond_14
    const/16 v11, 0x7d

    invoke-static {v8, v9, v11}, Lcom/gathin/tvhome/Cards;->until(Ljava/lang/String;[IC)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_17

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_17

    invoke-static {v11}, Lcom/gathin/tvhome/Cards;->isDigits(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_4

    :cond_15
    const-string v0, "}"

    invoke-static {v8, v9, v0}, Lcom/gathin/tvhome/Cards;->take(Ljava/lang/String;[ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    aget v0, v9, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_16

    goto :goto_4

    :cond_16
    new-instance v0, Lcom/gathin/tvhome/Cards$Record;

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-object v11, v0

    invoke-direct/range {v11 .. v19}, Lcom/gathin/tvhome/Cards$Record;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_5

    :cond_17
    :goto_4
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_18

    iget-object v1, v0, Lcom/gathin/tvhome/Cards$Record;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    :cond_18
    const/4 v0, 0x0

    goto :goto_6

    :cond_19
    invoke-virtual {v6, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    goto/16 :goto_1

    :goto_6
    return-object v0

    :cond_1a
    return-object v6

    :goto_7
    return-object v0
.end method

.method public static encode(Ljava/util/TreeMap;)Ljava/lang/String;
    .locals 15

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    const/16 v2, 0x80

    if-le p0, v2, :cond_0

    new-instance p0, Lcom/gathin/tvhome/Cards$$ExternalSyntheticLambda3;

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/gathin/tvhome/Cards$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, p0

    :cond_0
    new-instance p0, Lcom/gathin/tvhome/Cards$$ExternalSyntheticLambda3;

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/gathin/tvhome/Cards$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "{\"version\":2,\"records\":[\n"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gathin/tvhome/Cards$Record;

    iget-object v3, v2, Lcom/gathin/tvhome/Cards$Record;->pkg:Ljava/lang/String;

    invoke-static {v3}, Lcom/gathin/tvhome/Cards;->isPackageName(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, v2, Lcom/gathin/tvhome/Cards$Record;->pkg:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/gathin/tvhome/Cards$Record;->digest:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x40

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/gathin/tvhome/Cards;->isHex(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v2, Lcom/gathin/tvhome/Cards$Record;->label:Ljava/lang/String;

    invoke-static {v6}, Lcom/gathin/tvhome/Cards;->isFolded(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "show"

    iget-object v8, v2, Lcom/gathin/tvhome/Cards$Record;->decision:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "hide"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_1
    iget-wide v9, v2, Lcom/gathin/tvhome/Cards$Record;->firstSeen:J

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-ltz v7, :cond_3

    iget-wide v13, v2, Lcom/gathin/tvhome/Cards$Record;->decidedAt:J

    cmp-long v2, v13, v11

    if-ltz v2, :cond_3

    const-string v2, "{\"package\":\""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"signer_sha256\":\""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"label\":\""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"decision\":\""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"first_seen\":"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",\"decided_at\":"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_2

    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "record for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not valid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const-string v0, "]}\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fold(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    const/16 v3, 0x61

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7a

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x30

    if-lt v2, v3, :cond_3

    const/16 v3, 0x39

    if-gt v2, v3, :cond_3

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static grouped(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    div-int/lit8 v2, v1, 0x4

    rem-int/2addr v2, p0

    if-nez v2, :cond_0

    const/16 v2, 0xa

    goto :goto_1

    :cond_0
    const/16 v2, 0x20

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v1, 0x4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hex([B)Ljava/lang/String;
    .locals 6

    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x2

    aget-byte v4, p0, v2

    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v0, v5

    aput-char v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v0, v4

    aput-char v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static isDigits(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_2

    const/16 v3, 0x39

    if-le v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static isFolded(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x18

    if-le v1, v2, :cond_0

    goto :goto_2

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7a

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x30

    if-lt v2, v3, :cond_3

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    return v0
.end method

.method public static isHex(Ljava/lang/String;Z)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    const/16 v3, 0x39

    if-le v2, v3, :cond_3

    :cond_1
    const/16 v3, 0x61

    if-lt v2, v3, :cond_2

    const/16 v3, 0x66

    if-le v2, v3, :cond_3

    :cond_2
    if-nez p1, :cond_4

    const/16 v3, 0x41

    if-lt v2, v3, :cond_4

    const/16 v3, 0x46

    if-gt v2, v3, :cond_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public static isPackageName(Ljava/lang/String;)Z
    .locals 9

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xff

    if-le v0, v2, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    move v2, v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_9

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7a

    const/16 v5, 0x61

    const/16 v6, 0x5a

    const/16 v7, 0x41

    if-lt v3, v7, :cond_2

    if-le v3, v6, :cond_3

    :cond_2
    if-lt v3, v5, :cond_8

    if-le v3, v4, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_7

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v8, 0x2e

    if-eq v3, v8, :cond_7

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_4

    if-le v3, v6, :cond_3

    :cond_4
    if-lt v3, v5, :cond_5

    if-le v3, v4, :cond_3

    :cond_5
    const/16 v8, 0x30

    if-lt v3, v8, :cond_6

    const/16 v8, 0x39

    if-le v3, v8, :cond_3

    :cond_6
    const/16 v8, 0x5f

    if-eq v3, v8, :cond_3

    return v1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_9

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v0, v3, :cond_1

    :cond_8
    :goto_0
    return v1

    :cond_9
    const/4 p0, 0x2

    if-lt v2, p0, :cond_a

    const/4 v1, 0x1

    :cond_a
    :goto_1
    return v1
.end method

.method public static isReference(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isReserved(Ljava/lang/String;Ljava/util/HashSet;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/gathin/tvhome/Cards;->RESERVED_ANYWHERE:[Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "hdmi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    sget-object v0, Lcom/gathin/tvhome/Cards;->RESERVED_EXACT:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :cond_5
    :goto_1
    return v1
.end method

.method public static isTaken(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 1

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    const/4 p2, 0x0

    if-nez p0, :cond_0

    return p2

    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return p2
.end method

.method public static isText(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x41

    if-lt v2, v3, :cond_0

    const/16 v3, 0x5a

    if-le v2, v3, :cond_4

    :cond_0
    const/16 v3, 0x61

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7a

    if-le v2, v3, :cond_4

    :cond_1
    const/16 v3, 0x30

    if-lt v2, v3, :cond_2

    const/16 v3, 0x39

    if-le v2, v3, :cond_4

    :cond_2
    const/16 v3, 0x20

    if-eq v2, v3, :cond_4

    const-string v3, ".&+\'-"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_3

    goto :goto_1

    :cond_3
    return v0

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public static load(Ljava/io/File;)Ljava/util/TreeMap;
    .locals 4

    const-string v0, "TvHomeCards"

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    return-object p0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lcom/gathin/tvhome/Cards;->decode(Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not valid; moved to cards.json.bad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".bad"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    :cond_2
    :goto_0
    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    return-object p0

    :cond_3
    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot read "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    return-object p0
.end method

.method public static parse(Landroid/content/res/XmlResourceParser;)Lcom/gathin/tvhome/Cards$Declared;
    .locals 15

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v7, v4

    move-object v6, v5

    :goto_0
    if-eq v3, v2, :cond_17

    add-int/2addr v7, v2

    const/16 v8, 0x40

    if-gt v7, v8, :cond_16

    if-eq v3, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-gt v3, v1, :cond_15

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-eq v3, v2, :cond_1

    goto/16 :goto_5

    :cond_1
    if-nez v6, :cond_14

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "card"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    const/16 v6, 0x10

    if-gt v3, v6, :cond_12

    move v6, v4

    move-object v8, v5

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    :goto_1
    if-ge v6, v3, :cond_9

    invoke-interface {p0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-interface {p0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x8

    if-le v13, v14, :cond_3

    goto :goto_3

    :cond_3
    const/4 v13, -0x1

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v14, "caption"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_2

    :cond_4
    move v13, v0

    goto :goto_2

    :sswitch_1
    const-string v14, "label"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_2

    :cond_5
    move v13, v1

    goto :goto_2

    :sswitch_2
    const-string v14, "spec"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    goto :goto_2

    :cond_6
    move v13, v2

    goto :goto_2

    :sswitch_3
    const-string v14, "accent"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    goto :goto_2

    :cond_7
    move v13, v4

    :goto_2
    packed-switch v13, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-interface {p0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :pswitch_1
    invoke-interface {p0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :pswitch_2
    invoke-interface {p0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :pswitch_3
    invoke-interface {p0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    :cond_8
    :goto_3
    add-int/2addr v6, v2

    goto :goto_1

    :cond_9
    if-eqz v8, :cond_11

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v0, :cond_11

    invoke-static {v8}, Lcom/gathin/tvhome/Cards;->isDigits(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static {v9}, Lcom/gathin/tvhome/Cards;->checkLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10

    invoke-static {v10}, Lcom/gathin/tvhome/Cards;->checkCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v11}, Lcom/gathin/tvhome/Cards;->isReference(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-static {v11}, Lcom/gathin/tvhome/Cards;->parseAccent(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_4

    :cond_a
    new-instance p0, Lcom/gathin/tvhome/Cards$CardException;

    const-string v0, "accent is not #RRGGBB"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Lcom/gathin/tvhome/Cards$CardException;

    const-string v0, "accent is a resource reference; write #RRGGBB itself"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    move v3, v4

    :goto_4
    new-instance v6, Lcom/gathin/tvhome/Cards$Declared;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_e

    :cond_d
    move-object v10, v5

    :cond_e
    invoke-direct {v6, v8, v9, v10, v3}, Lcom/gathin/tvhome/Cards$Declared;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    :goto_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto/16 :goto_0

    :cond_f
    new-instance p0, Lcom/gathin/tvhome/Cards$CardException;

    invoke-direct {p0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    new-instance p0, Lcom/gathin/tvhome/Cards$CardException;

    invoke-direct {p0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    new-instance p0, Lcom/gathin/tvhome/Cards$CardException;

    const-string v0, "spec is missing or not a small integer"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    new-instance p0, Lcom/gathin/tvhome/Cards$CardException;

    const-string v0, "more than 16 attributes on <card>"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    new-instance p0, Lcom/gathin/tvhome/Cards$CardException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "root element is <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">, expected <card>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    new-instance p0, Lcom/gathin/tvhome/Cards$CardException;

    const-string v0, "more than one root element"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    new-instance p0, Lcom/gathin/tvhome/Cards$CardException;

    const-string v0, "XML nested deeper than 2"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    new-instance p0, Lcom/gathin/tvhome/Cards$CardException;

    const-string v0, "more than 64 XML events"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    if-eqz v6, :cond_18

    return-object v6

    :cond_18
    new-instance p0, Lcom/gathin/tvhome/Cards$CardException;

    const-string v0, "no <card> element"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54d84b36 -> :sswitch_3
        0x35f7bb -> :sswitch_2
        0x61f7ef4 -> :sswitch_1
        0x20ef99e6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseAccent(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_2

    :cond_1
    return v2

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/gathin/tvhome/Cards;->isHex(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    const/high16 v0, -0x1000000

    or-int/2addr p0, v0

    return p0
.end method

.method public static read(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Ljava/util/HashSet;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/Set;Ljava/util/HashSet;Ljava/util/Map;)Lcom/gathin/tvhome/Cards$Card;
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_18

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    move-object/from16 v4, p6

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    move-object/from16 v4, p7

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    iget-boolean v4, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v4, :cond_14

    iget-boolean v4, v2, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v4, :cond_14

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_14

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p3

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v5, "com.gathin.tvhome.card"

    invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageItemInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    if-eqz v5, :cond_12

    :try_start_0
    invoke-static {v5}, Lcom/gathin/tvhome/Cards;->parse(Landroid/content/res/XmlResourceParser;)Lcom/gathin/tvhome/Cards$Declared;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    const/4 v5, 0x1

    iget v7, v6, Lcom/gathin/tvhome/Cards$Declared;->spec:I

    if-ne v7, v5, :cond_11

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1c

    if-lt v7, v8, :cond_2

    const/high16 v7, 0x8000000

    invoke-virtual {v0, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/gathin/tvhome/Cards$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageInfo;)Landroid/content/pm/SigningInfo;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {v7}, Lcom/gathin/tvhome/Cards$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/SigningInfo;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v7}, Lcom/gathin/tvhome/Cards$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/SigningInfo;)[Landroid/content/pm/Signature;

    move-result-object v7

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/gathin/tvhome/Cards$CardException;

    const-string v1, "package has more than one signer"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/gathin/tvhome/Cards$CardException;

    const-string v1, "package has no signing certificate"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v7, 0x40

    invoke-virtual {v0, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    :goto_0
    const/4 v8, 0x0

    if-eqz v7, :cond_f

    array-length v9, v7

    if-eq v9, v5, :cond_3

    goto/16 :goto_5

    :cond_3
    const-string v9, "SHA-256"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    invoke-static {v7}, Lcom/gathin/tvhome/Cards;->hex([B)Ljava/lang/String;

    move-result-object v7

    iget-object v9, v6, Lcom/gathin/tvhome/Cards$Declared;->label:Ljava/lang/String;

    invoke-static {v9}, Lcom/gathin/tvhome/Cards;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, p8

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/gathin/tvhome/Cards$Record;

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-nez v11, :cond_4

    move v11, v5

    goto :goto_1

    :cond_4
    iget-object v14, v11, Lcom/gathin/tvhome/Cards$Record;->digest:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    move v11, v13

    goto :goto_1

    :cond_5
    iget-object v14, v11, Lcom/gathin/tvhome/Cards$Record;->label:Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    move v11, v12

    goto :goto_1

    :cond_6
    const-string v14, "show"

    iget-object v11, v11, Lcom/gathin/tvhome/Cards$Record;->decision:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x4

    goto :goto_1

    :cond_7
    const/4 v11, 0x5

    :goto_1
    if-eq v11, v5, :cond_9

    if-eq v11, v13, :cond_9

    if-ne v11, v12, :cond_8

    goto :goto_2

    :cond_8
    move v5, v8

    :cond_9
    :goto_2
    move-object/from16 v8, p5

    invoke-static {v10, v8}, Lcom/gathin/tvhome/Cards;->isReserved(Ljava/lang/String;Ljava/util/HashSet;)Z

    move-result v8

    const-string v12, "label \'"

    if-nez v8, :cond_e

    const-string v8, "\' is the name of another installed app"

    if-eqz v5, :cond_b

    invoke-static {v10, v3, v1}, Lcom/gathin/tvhome/Cards;->isTaken(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v10

    if-nez v10, :cond_a

    goto :goto_3

    :cond_a
    new-instance v0, Lcom/gathin/tvhome/Cards$CardException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_3
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/gathin/tvhome/Cards;->cleanLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v5, :cond_d

    invoke-static {v0}, Lcom/gathin/tvhome/Cards;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v1}, Lcom/gathin/tvhome/Cards;->isTaken(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_4

    :cond_c
    new-instance v1, Lcom/gathin/tvhome/Cards$CardException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "app label \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    :goto_4
    new-instance v1, Lcom/gathin/tvhome/Cards$Card;

    iget v2, v6, Lcom/gathin/tvhome/Cards$Declared;->accent:I

    iget-object v5, v6, Lcom/gathin/tvhome/Cards$Declared;->label:Ljava/lang/String;

    iget-object v6, v6, Lcom/gathin/tvhome/Cards$Declared;->caption:Ljava/lang/String;

    move-object p0, v1

    move-object/from16 p1, v3

    move-object/from16 p2, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v0

    move-object/from16 p5, v6

    move/from16 p6, v2

    move-object/from16 p7, v7

    move/from16 p8, v11

    invoke-direct/range {p0 .. p8}, Lcom/gathin/tvhome/Cards$Card;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-object v1

    :cond_e
    new-instance v0, Lcom/gathin/tvhome/Cards$CardException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' is reserved"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_5
    new-instance v0, Lcom/gathin/tvhome/Cards$CardException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package has "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v7, :cond_10

    goto :goto_6

    :cond_10
    array-length v8, v7

    :goto_6
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " signing certificates, expected one"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Lcom/gathin/tvhome/Cards$CardException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "spec "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not supported (this launcher reads spec 1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    throw v1

    :cond_12
    new-instance v0, Lcom/gathin/tvhome/Cards$CardException;

    const-string v1, "no <meta-data android:name=\"com.gathin.tvhome.card\" android:resource=...>"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Lcom/gathin/tvhome/Cards$CardException;

    const-string v1, "card activity has no LEANBACK_LAUNCHER intent filter"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/gathin/tvhome/Cards$CardException;

    const-string v1, "card activity is not exported and enabled"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Lcom/gathin/tvhome/Cards$CardException;

    const-string v1, "declares a second card; one per package is read"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Lcom/gathin/tvhome/Cards$CardException;

    const-string v1, "listed in hidden_apps"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Lcom/gathin/tvhome/Cards$CardException;

    const-string v1, "the launcher itself"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Lcom/gathin/tvhome/Cards$CardException;

    const-string v1, "not an activity"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static shown(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gathin/tvhome/Cards$Card;

    iget v2, v1, Lcom/gathin/tvhome/Cards$Card;->state:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/gathin/tvhome/Cards$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/gathin/tvhome/Cards$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/16 v1, 0x8

    if-le p0, v1, :cond_2

    new-instance p0, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, p0

    :cond_2
    return-object v0
.end method

.method public static take(Ljava/lang/String;[ILjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    aget p0, p1, v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p0

    aput p2, p1, v0

    const/4 p0, 0x1

    return p0
.end method

.method public static until(Ljava/lang/String;[IC)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result p2

    if-gez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    aget v1, p1, v0

    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    aput p2, p1, v0

    return-object p0
.end method
