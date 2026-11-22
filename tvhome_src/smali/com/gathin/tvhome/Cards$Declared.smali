.class public final Lcom/gathin/tvhome/Cards$Declared;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final accent:I

.field public final caption:Ljava/lang/String;

.field public final label:Ljava/lang/String;

.field public final spec:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/gathin/tvhome/Cards$Declared;->spec:I

    iput-object p2, p0, Lcom/gathin/tvhome/Cards$Declared;->label:Ljava/lang/String;

    iput-object p3, p0, Lcom/gathin/tvhome/Cards$Declared;->caption:Ljava/lang/String;

    iput p4, p0, Lcom/gathin/tvhome/Cards$Declared;->accent:I

    return-void
.end method
