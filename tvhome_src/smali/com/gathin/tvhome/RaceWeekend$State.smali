.class public final Lcom/gathin/tvhome/RaceWeekend$State;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final live:Lcom/gathin/tvhome/RaceWeekend$Session;

.field public final next:Lcom/gathin/tvhome/RaceWeekend$Session;

.field public final race:Lcom/gathin/tvhome/RaceWeekend$Race;

.field public final statuses:Ljava/util/List;

.field public final untilNext:Ljava/time/Duration;


# direct methods
.method public constructor <init>(Lcom/gathin/tvhome/RaceWeekend$Race;Ljava/util/ArrayList;Lcom/gathin/tvhome/RaceWeekend$Session;Lcom/gathin/tvhome/RaceWeekend$Session;Ljava/time/Duration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/RaceWeekend$State;->race:Lcom/gathin/tvhome/RaceWeekend$Race;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/gathin/tvhome/RaceWeekend$State;->statuses:Ljava/util/List;

    iput-object p3, p0, Lcom/gathin/tvhome/RaceWeekend$State;->live:Lcom/gathin/tvhome/RaceWeekend$Session;

    iput-object p4, p0, Lcom/gathin/tvhome/RaceWeekend$State;->next:Lcom/gathin/tvhome/RaceWeekend$Session;

    iput-object p5, p0, Lcom/gathin/tvhome/RaceWeekend$State;->untilNext:Ljava/time/Duration;

    return-void
.end method
