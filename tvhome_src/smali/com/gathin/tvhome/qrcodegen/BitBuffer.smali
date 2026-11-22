.class public final Lcom/gathin/tvhome/qrcodegen/BitBuffer;
.super Ljava/lang/Object;
.source "BitBuffer.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private bitLength:I

.field private data:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->data:Ljava/util/BitSet;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->bitLength:I

    .line 51
    return-void
.end method


# virtual methods
.method public appendBits(II)V
    .locals 3

    .line 90
    if-ltz p2, :cond_2

    const/16 v0, 0x1f

    if-gt p2, v0, :cond_2

    ushr-int v0, p1, p2

    if-nez v0, :cond_2

    .line 92
    const v0, 0x7fffffff

    iget v1, p0, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->bitLength:I

    sub-int/2addr v0, v1

    if-lt v0, p2, :cond_1

    .line 94
    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_0

    .line 95
    iget-object v0, p0, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->data:Ljava/util/BitSet;

    iget v1, p0, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->bitLength:I

    invoke-static {p1, p2}, Lcom/gathin/tvhome/qrcodegen/QrCode;->getBit(II)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 94
    add-int/lit8 p2, p2, -0x1

    iget v0, p0, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->bitLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->bitLength:I

    goto :goto_0

    .line 96
    :cond_0
    return-void

    .line 93
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Maximum length reached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Value out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public appendData(Lcom/gathin/tvhome/qrcodegen/BitBuffer;)V
    .locals 4

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    const v0, 0x7fffffff

    iget v1, p0, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->bitLength:I

    sub-int/2addr v0, v1

    iget v1, p1, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->bitLength:I

    if-lt v0, v1, :cond_1

    .line 110
    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->bitLength:I

    if-ge v0, v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->data:Ljava/util/BitSet;

    iget v2, p0, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->bitLength:I

    iget-object v3, p1, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->data:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->bitLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->bitLength:I

    goto :goto_0

    .line 112
    :cond_0
    return-void

    .line 109
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Maximum length reached"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public bitLength()I
    .locals 1

    .line 62
    nop

    .line 63
    iget v0, p0, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->bitLength:I

    return v0
.end method

.method public clone()Lcom/gathin/tvhome/qrcodegen/BitBuffer;
    .locals 2

    .line 121
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gathin/tvhome/qrcodegen/BitBuffer;

    .line 122
    iget-object v1, v0, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->data:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, v0, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->data:Ljava/util/BitSet;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    return-object v0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->clone()Lcom/gathin/tvhome/qrcodegen/BitBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getBit(I)I
    .locals 1

    .line 74
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->bitLength:I

    if-ge p1, v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->data:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
