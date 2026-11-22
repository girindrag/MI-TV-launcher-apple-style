.class public final Lcom/gathin/tvhome/RaceWeekend$Race;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final name:Ljava/lang/String;

.field public final place:Ljava/lang/String;

.field public final round:I

.field public final sessions:Ljava/util/List;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/gathin/tvhome/RaceWeekend$Race;->round:I

    iput-object p2, p0, Lcom/gathin/tvhome/RaceWeekend$Race;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/gathin/tvhome/RaceWeekend$Race;->place:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p2, Lcom/gathin/tvhome/Cards$$ExternalSyntheticLambda3;

    const/4 p3, 0x6

    invoke-direct {p2, p3}, Lcom/gathin/tvhome/Cards$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/gathin/tvhome/RaceWeekend$Race;->sessions:Ljava/util/List;

    return-void
.end method
