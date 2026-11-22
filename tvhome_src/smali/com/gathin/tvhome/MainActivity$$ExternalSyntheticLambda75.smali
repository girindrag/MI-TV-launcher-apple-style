.class public final synthetic Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda75;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gathin/tvhome/CardFeature$Step;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/MainActivity;

.field public final synthetic f$1:Lcom/gathin/tvhome/Cards$Card;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/MainActivity;Lcom/gathin/tvhome/Cards$Card;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda75;->f$0:Lcom/gathin/tvhome/MainActivity;

    iput-object p2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda75;->f$1:Lcom/gathin/tvhome/Cards$Card;

    iput-boolean p3, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda75;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 14

    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda75;->f$0:Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/gathin/tvhome/Cards;->RESERVED_ANYWHERE:[Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "cards.json"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gathin/tvhome/Cards;->load(Ljava/io/File;)Ljava/util/TreeMap;

    move-result-object v0

    iget-object v2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda75;->f$1:Lcom/gathin/tvhome/Cards$Card;

    iget-object v3, v2, Lcom/gathin/tvhome/Cards$Card;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gathin/tvhome/Cards$Record;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/gathin/tvhome/Cards$Record;->digest:Ljava/lang/String;

    iget-object v5, v2, Lcom/gathin/tvhome/Cards$Card;->digest:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-wide v3, v3, Lcom/gathin/tvhome/Cards$Record;->firstSeen:J

    move-wide v9, v3

    goto :goto_0

    :cond_0
    move-wide v9, v11

    :goto_0
    new-instance v3, Lcom/gathin/tvhome/Cards$Record;

    iget-object v4, v2, Lcom/gathin/tvhome/Cards$Card;->label:Ljava/lang/String;

    invoke-static {v4}, Lcom/gathin/tvhome/Cards;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-boolean v4, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda75;->f$2:Z

    if-eqz v4, :cond_1

    const-string v4, "show"

    :goto_1
    move-object v8, v4

    goto :goto_2

    :cond_1
    const-string v4, "hide"

    goto :goto_1

    :goto_2
    iget-object v13, v2, Lcom/gathin/tvhome/Cards$Card;->pkg:Ljava/lang/String;

    iget-object v6, v2, Lcom/gathin/tvhome/Cards$Card;->digest:Ljava/lang/String;

    move-object v4, v3

    move-object v5, v13

    invoke-direct/range {v4 .. v12}, Lcom/gathin/tvhome/Cards$Record;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v13, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v0}, Lcom/gathin/tvhome/Cards;->encode(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v3, 0x0

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cannot write "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TvHomeCards"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_2
    const/4 v0, 0x0

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
