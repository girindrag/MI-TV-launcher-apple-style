.class public abstract Lcom/gathin/tvhome/StatsText;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MEASUREMENT:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[0-9]+(?:[.,][0-9]+)?(?:\\s*/\\s*[0-9]+(?:[.,][0-9]+)?)?(?:\\s+(?:MB|GB)|%)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gathin/tvhome/StatsText;->MEASUREMENT:Ljava/util/regex/Pattern;

    return-void
.end method
