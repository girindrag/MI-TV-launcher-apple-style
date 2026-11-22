.class public final enum Lcom/gathin/tvhome/RaceWeekend$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/gathin/tvhome/RaceWeekend$Status;

.field public static final enum DONE:Lcom/gathin/tvhome/RaceWeekend$Status;

.field public static final enum LATER:Lcom/gathin/tvhome/RaceWeekend$Status;

.field public static final enum LIVE:Lcom/gathin/tvhome/RaceWeekend$Status;

.field public static final enum NEXT:Lcom/gathin/tvhome/RaceWeekend$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/gathin/tvhome/RaceWeekend$Status;

    const-string v1, "DONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gathin/tvhome/RaceWeekend$Status;->DONE:Lcom/gathin/tvhome/RaceWeekend$Status;

    new-instance v1, Lcom/gathin/tvhome/RaceWeekend$Status;

    const-string v2, "LIVE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/gathin/tvhome/RaceWeekend$Status;->LIVE:Lcom/gathin/tvhome/RaceWeekend$Status;

    new-instance v2, Lcom/gathin/tvhome/RaceWeekend$Status;

    const-string v3, "NEXT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/gathin/tvhome/RaceWeekend$Status;->NEXT:Lcom/gathin/tvhome/RaceWeekend$Status;

    new-instance v3, Lcom/gathin/tvhome/RaceWeekend$Status;

    const-string v4, "LATER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/gathin/tvhome/RaceWeekend$Status;->LATER:Lcom/gathin/tvhome/RaceWeekend$Status;

    filled-new-array {v0, v1, v2, v3}, [Lcom/gathin/tvhome/RaceWeekend$Status;

    move-result-object v0

    sput-object v0, Lcom/gathin/tvhome/RaceWeekend$Status;->$VALUES:[Lcom/gathin/tvhome/RaceWeekend$Status;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gathin/tvhome/RaceWeekend$Status;
    .locals 1

    const-class v0, Lcom/gathin/tvhome/RaceWeekend$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gathin/tvhome/RaceWeekend$Status;

    return-object p0
.end method

.method public static values()[Lcom/gathin/tvhome/RaceWeekend$Status;
    .locals 1

    sget-object v0, Lcom/gathin/tvhome/RaceWeekend$Status;->$VALUES:[Lcom/gathin/tvhome/RaceWeekend$Status;

    invoke-virtual {v0}, [Lcom/gathin/tvhome/RaceWeekend$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gathin/tvhome/RaceWeekend$Status;

    return-object v0
.end method
