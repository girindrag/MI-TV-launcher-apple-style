.class public abstract Lcom/gathin/tvhome/RaceWeekend;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LEAD:Ljava/time/Duration;

.field public static final TAIL:Ljava/time/Duration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0xc

    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/gathin/tvhome/RaceWeekend;->LEAD:Ljava/time/Duration;

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/gathin/tvhome/RaceWeekend;->TAIL:Ljava/time/Duration;

    return-void
.end method
