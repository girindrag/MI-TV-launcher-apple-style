.class public final Lcom/gathin/tvhome/Festival;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NONE:Lcom/gathin/tvhome/Festival;


# instance fields
.field public final accent:I

.field public final greeting:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final until:Ljava/time/LocalDate;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/gathin/tvhome/Festival;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v3, v1, v3, v2}, Lcom/gathin/tvhome/Festival;-><init>(Ljava/lang/String;Ljava/time/LocalDate;Ljava/lang/String;I)V

    sput-object v0, Lcom/gathin/tvhome/Festival;->NONE:Lcom/gathin/tvhome/Festival;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/time/LocalDate;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/Festival;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/gathin/tvhome/Festival;->until:Ljava/time/LocalDate;

    iput-object p3, p0, Lcom/gathin/tvhome/Festival;->greeting:Ljava/lang/String;

    iput p4, p0, Lcom/gathin/tvhome/Festival;->accent:I

    return-void
.end method
