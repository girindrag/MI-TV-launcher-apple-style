.class public final Lcom/gathin/tvhome/Sky$Stop;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final bottom:I

.field public final mid:I

.field public final minute:I

.field public final sun:I

.field public final sunX:F

.field public final top:I


# direct methods
.method public constructor <init>(IIIIIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/gathin/tvhome/Sky$Stop;->minute:I

    iput p2, p0, Lcom/gathin/tvhome/Sky$Stop;->top:I

    iput p3, p0, Lcom/gathin/tvhome/Sky$Stop;->mid:I

    iput p4, p0, Lcom/gathin/tvhome/Sky$Stop;->bottom:I

    iput p5, p0, Lcom/gathin/tvhome/Sky$Stop;->sun:I

    iput p6, p0, Lcom/gathin/tvhome/Sky$Stop;->sunX:F

    return-void
.end method
