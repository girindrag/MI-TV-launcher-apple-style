.class public final Lcom/gathin/tvhome/Cards$Record;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final decidedAt:J

.field public final decision:Ljava/lang/String;

.field public final digest:Ljava/lang/String;

.field public final firstSeen:J

.field public final label:Ljava/lang/String;

.field public final pkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/Cards$Record;->pkg:Ljava/lang/String;

    iput-object p2, p0, Lcom/gathin/tvhome/Cards$Record;->digest:Ljava/lang/String;

    iput-object p3, p0, Lcom/gathin/tvhome/Cards$Record;->label:Ljava/lang/String;

    iput-object p4, p0, Lcom/gathin/tvhome/Cards$Record;->decision:Ljava/lang/String;

    iput-wide p5, p0, Lcom/gathin/tvhome/Cards$Record;->firstSeen:J

    iput-wide p7, p0, Lcom/gathin/tvhome/Cards$Record;->decidedAt:J

    return-void
.end method
