.class public final synthetic Lcom/gathin/tvhome/ThemeProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    sget p1, Lcom/gathin/tvhome/ThemeProvider;->$r8$clinit:I

    invoke-static {p2}, Lcom/gathin/tvhome/ThemeFiles;->collectionImage(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
