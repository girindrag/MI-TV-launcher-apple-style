.class public final Lcom/gathin/tvhome/qrcodegen/QrSegment;
.super Ljava/lang/Object;
.source "QrSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;
    }
.end annotation


# static fields
.field static final ALPHANUMERIC_CHARSET:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:"

.field private static final ALPHANUMERIC_REGEX:Ljava/util/regex/Pattern;

.field private static final NUMERIC_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field final data:Lcom/gathin/tvhome/qrcodegen/BitBuffer;

.field public final mode:Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

.field public final numChars:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 262
    const-string v0, "[0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gathin/tvhome/qrcodegen/QrSegment;->NUMERIC_REGEX:Ljava/util/regex/Pattern;

    .line 265
    const-string v0, "[A-Z0-9 $%*+./:-]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gathin/tvhome/qrcodegen/QrSegment;->ALPHANUMERIC_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;ILcom/gathin/tvhome/qrcodegen/BitBuffer;)V
    .locals 1

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    iput-object p1, p0, Lcom/gathin/tvhome/qrcodegen/QrSegment;->mode:Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    .line 221
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    if-ltz p2, :cond_0

    .line 224
    iput p2, p0, Lcom/gathin/tvhome/qrcodegen/QrSegment;->numChars:I

    .line 225
    invoke-virtual {p3}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->clone()Lcom/gathin/tvhome/qrcodegen/BitBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/gathin/tvhome/qrcodegen/QrSegment;->data:Lcom/gathin/tvhome/qrcodegen/BitBuffer;

    .line 226
    return-void

    .line 223
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static getTotalBits(Ljava/util/List;I)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gathin/tvhome/qrcodegen/QrSegment;",
            ">;I)I"
        }
    .end annotation

    .line 244
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    nop

    .line 246
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gathin/tvhome/qrcodegen/QrSegment;

    .line 247
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    iget-object v3, v2, Lcom/gathin/tvhome/qrcodegen/QrSegment;->mode:Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    invoke-virtual {v3, p1}, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;->numCharCountBits(I)I

    move-result v3

    .line 249
    iget v4, v2, Lcom/gathin/tvhome/qrcodegen/QrSegment;->numChars:I

    const/4 v5, 0x1

    shl-int/2addr v5, v3

    const/4 v6, -0x1

    if-lt v4, v5, :cond_0

    .line 250
    return v6

    .line 251
    :cond_0
    const-wide/16 v4, 0x4

    int-to-long v7, v3

    add-long/2addr v7, v4

    iget-object v2, v2, Lcom/gathin/tvhome/qrcodegen/QrSegment;->data:Lcom/gathin/tvhome/qrcodegen/BitBuffer;

    invoke-virtual {v2}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->bitLength()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v7, v2

    add-long/2addr v0, v7

    .line 252
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 253
    return v6

    .line 254
    :cond_1
    goto :goto_0

    .line 255
    :cond_2
    long-to-int p0, v0

    return p0
.end method

.method public static isAlphanumeric(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 188
    sget-object v0, Lcom/gathin/tvhome/qrcodegen/QrSegment;->ALPHANUMERIC_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isNumeric(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 174
    sget-object v0, Lcom/gathin/tvhome/qrcodegen/QrSegment;->NUMERIC_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static makeAlphanumeric(Ljava/lang/CharSequence;)Lcom/gathin/tvhome/qrcodegen/QrSegment;
    .locals 5

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    invoke-static {p0}, Lcom/gathin/tvhome/qrcodegen/QrSegment;->isAlphanumeric(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    new-instance v0, Lcom/gathin/tvhome/qrcodegen/BitBuffer;

    invoke-direct {v0}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;-><init>()V

    .line 106
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:"

    if-gt v1, v2, :cond_0

    .line 107
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2d

    .line 108
    add-int/lit8 v4, v1, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 109
    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->appendBits(II)V

    .line 106
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 111
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 112
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->appendBits(II)V

    .line 113
    :cond_1
    new-instance v1, Lcom/gathin/tvhome/qrcodegen/QrSegment;

    sget-object v2, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;->ALPHANUMERIC:Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-direct {v1, v2, p0, v0}, Lcom/gathin/tvhome/qrcodegen/QrSegment;-><init>(Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;ILcom/gathin/tvhome/qrcodegen/BitBuffer;)V

    return-object v1

    .line 102
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String contains unencodable characters in alphanumeric mode"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static makeBytes([B)Lcom/gathin/tvhome/qrcodegen/QrSegment;
    .locals 5

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    new-instance v0, Lcom/gathin/tvhome/qrcodegen/BitBuffer;

    invoke-direct {v0}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;-><init>()V

    .line 62
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 63
    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->appendBits(II)V

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_0
    new-instance v1, Lcom/gathin/tvhome/qrcodegen/QrSegment;

    sget-object v2, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;->BYTE:Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    array-length p0, p0

    invoke-direct {v1, v2, p0, v0}, Lcom/gathin/tvhome/qrcodegen/QrSegment;-><init>(Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;ILcom/gathin/tvhome/qrcodegen/BitBuffer;)V

    return-object v1
.end method

.method public static makeEci(I)Lcom/gathin/tvhome/qrcodegen/QrSegment;
    .locals 3

    .line 148
    new-instance v0, Lcom/gathin/tvhome/qrcodegen/BitBuffer;

    invoke-direct {v0}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;-><init>()V

    .line 149
    const-string v1, "ECI assignment value out of range"

    if-ltz p0, :cond_3

    .line 151
    const/16 v2, 0x80

    if-ge p0, v2, :cond_0

    .line 152
    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->appendBits(II)V

    goto :goto_0

    .line 153
    :cond_0
    const/16 v2, 0x4000

    if-ge p0, v2, :cond_1

    .line 154
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v1}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->appendBits(II)V

    .line 155
    const/16 v1, 0xe

    invoke-virtual {v0, p0, v1}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->appendBits(II)V

    goto :goto_0

    .line 156
    :cond_1
    const v2, 0xf4240

    if-ge p0, v2, :cond_2

    .line 157
    const/4 v1, 0x6

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->appendBits(II)V

    .line 158
    const/16 v1, 0x15

    invoke-virtual {v0, p0, v1}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->appendBits(II)V

    .line 161
    :goto_0
    new-instance p0, Lcom/gathin/tvhome/qrcodegen/QrSegment;

    sget-object v1, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;->ECI:Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/gathin/tvhome/qrcodegen/QrSegment;-><init>(Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;ILcom/gathin/tvhome/qrcodegen/BitBuffer;)V

    return-object p0

    .line 160
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 150
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makeNumeric(Ljava/lang/CharSequence;)Lcom/gathin/tvhome/qrcodegen/QrSegment;
    .locals 5

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    invoke-static {p0}, Lcom/gathin/tvhome/qrcodegen/QrSegment;->isNumeric(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Lcom/gathin/tvhome/qrcodegen/BitBuffer;

    invoke-direct {v0}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;-><init>()V

    .line 81
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 82
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 83
    add-int v4, v1, v2

    invoke-interface {p0, v1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->appendBits(II)V

    .line 84
    nop

    .line 85
    move v1, v4

    goto :goto_0

    .line 86
    :cond_0
    new-instance v1, Lcom/gathin/tvhome/qrcodegen/QrSegment;

    sget-object v2, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;->NUMERIC:Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-direct {v1, v2, p0, v0}, Lcom/gathin/tvhome/qrcodegen/QrSegment;-><init>(Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;ILcom/gathin/tvhome/qrcodegen/BitBuffer;)V

    return-object v1

    .line 78
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String contains non-numeric characters"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static makeSegments(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Lcom/gathin/tvhome/qrcodegen/QrSegment;",
            ">;"
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {p0}, Lcom/gathin/tvhome/qrcodegen/QrSegment;->isNumeric(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    invoke-static {p0}, Lcom/gathin/tvhome/qrcodegen/QrSegment;->makeNumeric(Ljava/lang/CharSequence;)Lcom/gathin/tvhome/qrcodegen/QrSegment;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_1
    invoke-static {p0}, Lcom/gathin/tvhome/qrcodegen/QrSegment;->isAlphanumeric(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    invoke-static {p0}, Lcom/gathin/tvhome/qrcodegen/QrSegment;->makeAlphanumeric(Ljava/lang/CharSequence;)Lcom/gathin/tvhome/qrcodegen/QrSegment;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/gathin/tvhome/qrcodegen/QrSegment;->makeBytes([B)Lcom/gathin/tvhome/qrcodegen/QrSegment;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getData()Lcom/gathin/tvhome/qrcodegen/BitBuffer;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/gathin/tvhome/qrcodegen/QrSegment;->data:Lcom/gathin/tvhome/qrcodegen/BitBuffer;

    invoke-virtual {v0}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->clone()Lcom/gathin/tvhome/qrcodegen/BitBuffer;

    move-result-object v0

    return-object v0
.end method
