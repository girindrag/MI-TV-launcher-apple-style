.class public final Lcom/gathin/tvhome/qrcodegen/QrCode;
.super Ljava/lang/Object;
.source "QrCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gathin/tvhome/qrcodegen/QrCode$Ecc;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ECC_CODEWORDS_PER_BLOCK:[[B

.field public static final MAX_VERSION:I = 0x28

.field public static final MIN_VERSION:I = 0x1

.field private static final NUM_ERROR_CORRECTION_BLOCKS:[[B

.field private static final PENALTY_N1:I = 0x3

.field private static final PENALTY_N2:I = 0x3

.field private static final PENALTY_N3:I = 0x28

.field private static final PENALTY_N4:I = 0xa


# instance fields
.field public final errorCorrectionLevel:Lcom/gathin/tvhome/qrcodegen/QrCode$Ecc;

.field private isFunction:[[Z

.field public final mask:I

.field private modules:[[Z

.field public final size:I

.field public final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 52
    nop

    .line 773
    const/16 v0, 0x29

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v2, v0, [B

    fill-array-data v2, :array_1

    new-array v3, v0, [B

    fill-array-data v3, :array_2

    new-array v4, v0, [B

    fill-array-data v4, :array_3

    const/4 v5, 0x4

    new-array v6, v5, [[B

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v2, v6, v1

    const/4 v2, 0x2

    aput-object v3, v6, v2

    const/4 v3, 0x3

    aput-object v4, v6, v3

    sput-object v6, Lcom/gathin/tvhome/qrcodegen/QrCode;->ECC_CODEWORDS_PER_BLOCK:[[B

    .line 782
    new-array v3, v0, [B

    fill-array-data v3, :array_4

    new-array v4, v0, [B

    fill-array-data v4, :array_5

    new-array v6, v0, [B

    fill-array-data v6, :array_6

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    new-array v5, v5, [[B

    aput-object v3, v5, v7

    aput-object v4, v5, v1

    aput-object v6, v5, v2

    const/4 v1, 0x3

    aput-object v0, v5, v1

    sput-object v5, Lcom/gathin/tvhome/qrcodegen/QrCode;->NUM_ERROR_CORRECTION_BLOCKS:[[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        0x7t
        0xat
        0xft
        0x14t
        0x1at
        0x12t
        0x14t
        0x18t
        0x1et
        0x12t
        0x14t
        0x18t
        0x1at
        0x1et
        0x16t
        0x18t
        0x1ct
        0x1et
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1et
        0x1et
        0x1at
        0x1ct
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x1t
        0xat
        0x10t
        0x1at
        0x12t
        0x18t
        0x10t
        0x12t
        0x16t
        0x16t
        0x1at
        0x1et
        0x16t
        0x16t
        0x18t
        0x18t
        0x1ct
        0x1ct
        0x1at
        0x1at
        0x1at
        0x1at
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x1t
        0xdt
        0x16t
        0x12t
        0x1at
        0x12t
        0x18t
        0x12t
        0x16t
        0x14t
        0x18t
        0x1ct
        0x1at
        0x18t
        0x14t
        0x1et
        0x18t
        0x1ct
        0x1ct
        0x1at
        0x1et
        0x1ct
        0x1et
        0x1et
        0x1et
        0x1et
        0x1ct
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x1t
        0x11t
        0x1ct
        0x16t
        0x10t
        0x16t
        0x1ct
        0x1at
        0x1at
        0x18t
        0x1ct
        0x18t
        0x1ct
        0x16t
        0x18t
        0x18t
        0x1et
        0x1ct
        0x1ct
        0x1at
        0x1ct
        0x1et
        0x18t
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
        0x1et
    .end array-data

    nop

    :array_4
    .array-data 1
        -0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x8t
        0x8t
        0x9t
        0x9t
        0xat
        0xct
        0xct
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x13t
        0x14t
        0x15t
        0x16t
        0x18t
        0x19t
    .end array-data

    nop

    :array_5
    .array-data 1
        -0x1t
        0x1t
        0x1t
        0x1t
        0x2t
        0x2t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x8t
        0x9t
        0x9t
        0xat
        0xat
        0xbt
        0xdt
        0xet
        0x10t
        0x11t
        0x11t
        0x12t
        0x14t
        0x15t
        0x17t
        0x19t
        0x1at
        0x1ct
        0x1dt
        0x1ft
        0x21t
        0x23t
        0x25t
        0x26t
        0x28t
        0x2bt
        0x2dt
        0x2ft
        0x31t
    .end array-data

    nop

    :array_6
    .array-data 1
        -0x1t
        0x1t
        0x1t
        0x2t
        0x2t
        0x4t
        0x4t
        0x6t
        0x6t
        0x8t
        0x8t
        0x8t
        0xat
        0xct
        0x10t
        0xct
        0x11t
        0x10t
        0x12t
        0x15t
        0x14t
        0x17t
        0x17t
        0x19t
        0x1bt
        0x1dt
        0x22t
        0x22t
        0x23t
        0x26t
        0x28t
        0x2bt
        0x2dt
        0x30t
        0x33t
        0x35t
        0x38t
        0x3bt
        0x3et
        0x41t
        0x44t
    .end array-data

    nop

    :array_7
    .array-data 1
        -0x1t
        0x1t
        0x1t
        0x2t
        0x4t
        0x4t
        0x4t
        0x5t
        0x6t
        0x8t
        0x8t
        0xbt
        0xbt
        0x10t
        0x10t
        0x12t
        0x10t
        0x13t
        0x15t
        0x19t
        0x19t
        0x19t
        0x22t
        0x1et
        0x20t
        0x23t
        0x25t
        0x28t
        0x2at
        0x2dt
        0x30t
        0x33t
        0x36t
        0x39t
        0x3ct
        0x3ft
        0x42t
        0x46t
        0x4at
        0x4dt
        0x51t
    .end array-data
.end method

.method public constructor <init>(ILcom/gathin/tvhome/qrcodegen/QrCode$Ecc;[BI)V
    .locals 4

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    const/16 v1, 0x28

    if-gt p1, v1, :cond_3

    .line 252
    const/4 v1, -0x1

    if-lt p4, v1, :cond_2

    const/4 v2, 0x7

    if-gt p4, v2, :cond_2

    .line 254
    iput p1, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->version:I

    .line 255
    mul-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x11

    iput p1, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    .line 256
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p1, p2

    check-cast p1, Lcom/gathin/tvhome/qrcodegen/QrCode$Ecc;

    iput-object p2, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->errorCorrectionLevel:Lcom/gathin/tvhome/qrcodegen/QrCode$Ecc;

    .line 257
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    iget p1, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    iget p2, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    aput p2, v3, v0

    const/4 p2, 0x0

    aput p1, v3, p2

    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Z

    iput-object p1, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->modules:[[Z

    .line 259
    iget p1, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    iget v3, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    new-array v2, v2, [I

    aput v3, v2, v0

    aput p1, v2, p2

    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Z

    iput-object p1, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->isFunction:[[Z

    .line 262
    invoke-direct {p0}, Lcom/gathin/tvhome/qrcodegen/QrCode;->drawFunctionPatterns()V

    .line 263
    invoke-direct {p0, p3}, Lcom/gathin/tvhome/qrcodegen/QrCode;->addEccAndInterleave([B)[B

    move-result-object p1

    .line 264
    invoke-direct {p0, p1}, Lcom/gathin/tvhome/qrcodegen/QrCode;->drawCodewords([B)V

    .line 267
    if-ne p4, v1, :cond_1

    .line 268
    nop

    .line 269
    const p1, 0x7fffffff

    :goto_0
    const/16 p3, 0x8

    if-ge p2, p3, :cond_1

    .line 270
    invoke-direct {p0, p2}, Lcom/gathin/tvhome/qrcodegen/QrCode;->applyMask(I)V

    .line 271
    invoke-direct {p0, p2}, Lcom/gathin/tvhome/qrcodegen/QrCode;->drawFormatBits(I)V

    .line 272
    invoke-direct {p0}, Lcom/gathin/tvhome/qrcodegen/QrCode;->getPenaltyScore()I

    move-result p3

    .line 273
    if-ge p3, p1, :cond_0

    .line 274
    nop

    .line 275
    move p4, p2

    move p1, p3

    .line 277
    :cond_0
    invoke-direct {p0, p2}, Lcom/gathin/tvhome/qrcodegen/QrCode;->applyMask(I)V

    .line 269
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 280
    :cond_1
    nop

    .line 281
    iput p4, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->mask:I

    .line 282
    invoke-direct {p0, p4}, Lcom/gathin/tvhome/qrcodegen/QrCode;->applyMask(I)V

    .line 283
    invoke-direct {p0, p4}, Lcom/gathin/tvhome/qrcodegen/QrCode;->drawFormatBits(I)V

    .line 285
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->isFunction:[[Z

    .line 286
    return-void

    .line 253
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Mask value out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 251
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Version value out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private addEccAndInterleave([B)[B
    .locals 14

    .line 429
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 430
    array-length v0, p1

    iget v1, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->version:I

    iget-object v2, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->errorCorrectionLevel:Lcom/gathin/tvhome/qrcodegen/QrCode$Ecc;

    invoke-static {v1, v2}, Lcom/gathin/tvhome/qrcodegen/QrCode;->getNumDataCodewords(ILcom/gathin/tvhome/qrcodegen/QrCode$Ecc;)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 434
    sget-object v0, Lcom/gathin/tvhome/qrcodegen/QrCode;->NUM_ERROR_CORRECTION_BLOCKS:[[B

    iget-object v1, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->errorCorrectionLevel:Lcom/gathin/tvhome/qrcodegen/QrCode$Ecc;

    invoke-virtual {v1}, Lcom/gathin/tvhome/qrcodegen/QrCode$Ecc;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    iget v1, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->version:I

    aget-byte v0, v0, v1

    .line 435
    sget-object v1, Lcom/gathin/tvhome/qrcodegen/QrCode;->ECC_CODEWORDS_PER_BLOCK:[[B

    iget-object v2, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->errorCorrectionLevel:Lcom/gathin/tvhome/qrcodegen/QrCode$Ecc;

    invoke-virtual {v2}, Lcom/gathin/tvhome/qrcodegen/QrCode$Ecc;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    iget v2, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->version:I

    aget-byte v1, v1, v2

    .line 436
    iget v2, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->version:I

    invoke-static {v2}, Lcom/gathin/tvhome/qrcodegen/QrCode;->getNumRawDataModules(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    .line 437
    rem-int v3, v2, v0

    sub-int v3, v0, v3

    .line 438
    div-int v4, v2, v0

    .line 441
    new-array v5, v0, [[B

    .line 442
    invoke-static {v1}, Lcom/gathin/tvhome/qrcodegen/QrCode;->reedSolomonComputeDivisor(I)[B

    move-result-object v6

    .line 443
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v8, v0, :cond_1

    .line 444
    add-int v10, v9, v4

    sub-int/2addr v10, v1

    if-ge v8, v3, :cond_0

    const/4 v11, 0x0

    goto :goto_1

    :cond_0
    const/4 v11, 0x1

    :goto_1
    add-int/2addr v10, v11

    invoke-static {p1, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 445
    array-length v11, v10

    add-int/2addr v9, v11

    .line 446
    add-int/lit8 v11, v4, 0x1

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v11

    .line 447
    invoke-static {v10, v6}, Lcom/gathin/tvhome/qrcodegen/QrCode;->reedSolomonComputeRemainder([B[B)[B

    move-result-object v10

    .line 448
    array-length v12, v11

    sub-int/2addr v12, v1

    array-length v13, v10

    invoke-static {v10, v7, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    aput-object v11, v5, v8

    .line 443
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 453
    :cond_1
    new-array p1, v2, [B

    .line 454
    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_2
    aget-object v8, v5, v7

    array-length v8, v8

    if-ge v2, v8, :cond_5

    .line 455
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v0, :cond_4

    .line 457
    sub-int v9, v4, v1

    if-ne v2, v9, :cond_2

    if-lt v8, v3, :cond_3

    .line 458
    :cond_2
    aget-object v9, v5, v8

    aget-byte v9, v9, v2

    aput-byte v9, p1, v6

    .line 459
    add-int/lit8 v6, v6, 0x1

    .line 455
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 454
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 463
    :cond_5
    return-object p1

    .line 431
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private applyMask(I)V
    .locals 8

    .line 503
    if-ltz p1, :cond_a

    const/4 v0, 0x7

    if-gt p1, v0, :cond_a

    .line 505
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    if-ge v1, v2, :cond_9

    .line 506
    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    if-ge v2, v3, :cond_8

    .line 508
    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    .line 517
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 516
    :pswitch_0
    add-int v4, v2, v1

    rem-int/lit8 v4, v4, 0x2

    mul-int v5, v2, v1

    rem-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    .line 515
    :pswitch_1
    mul-int v4, v2, v1

    rem-int/lit8 v5, v4, 0x2

    rem-int/lit8 v4, v4, 0x3

    add-int/2addr v5, v4

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 514
    :pswitch_2
    mul-int v4, v2, v1

    rem-int/lit8 v5, v4, 0x2

    rem-int/lit8 v4, v4, 0x3

    add-int/2addr v5, v4

    if-nez v5, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 513
    :pswitch_3
    div-int/lit8 v4, v2, 0x3

    div-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 512
    :pswitch_4
    add-int v4, v2, v1

    rem-int/lit8 v4, v4, 0x3

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 511
    :pswitch_5
    rem-int/lit8 v4, v2, 0x3

    if-nez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 510
    :pswitch_6
    rem-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .line 509
    :pswitch_7
    add-int v4, v2, v1

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_7

    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    .line 519
    :goto_2
    iget-object v5, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->modules:[[Z

    aget-object v5, v5, v1

    aget-boolean v6, v5, v2

    iget-object v7, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->isFunction:[[Z

    aget-object v7, v7, v1

    aget-boolean v7, v7, v2

    xor-int/2addr v3, v7

    and-int/2addr v3, v4

    xor-int/2addr v3, v6

    aput-boolean v3, v5, v2

    .line 506
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 505
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 522
    :cond_9
    return-void

    .line 504
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Mask value out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drawAlignmentPattern(II)V
    .locals 8

    .line 409
    const/4 v0, -0x2

    const/4 v1, -0x2

    :goto_0
    const/4 v2, 0x2

    if-gt v1, v2, :cond_2

    .line 410
    const/4 v3, -0x2

    :goto_1
    if-gt v3, v2, :cond_1

    .line 411
    add-int v4, p1, v3

    add-int v5, p2, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    goto :goto_2

    :cond_0
    const/4 v7, 0x0

    :goto_2
    invoke-direct {p0, v4, v5, v7}, Lcom/gathin/tvhome/qrcodegen/QrCode;->setFunctionModule(IIZ)V

    .line 410
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 409
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 413
    :cond_2
    return-void
.end method

.method private drawCodewords([B)V
    .locals 10

    .line 470
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 471
    array-length v0, p1

    iget v1, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->version:I

    invoke-static {v1}, Lcom/gathin/tvhome/qrcodegen/QrCode;->getNumRawDataModules(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    if-ne v0, v1, :cond_7

    .line 474
    nop

    .line 476
    iget v0, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v0, v1, :cond_6

    .line 477
    const/4 v4, 0x6

    if-ne v0, v4, :cond_0

    .line 478
    const/4 v0, 0x5

    .line 479
    :cond_0
    const/4 v4, 0x0

    :goto_1
    iget v5, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    if-ge v4, v5, :cond_5

    .line 480
    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x2

    if-ge v5, v6, :cond_4

    .line 481
    sub-int v7, v0, v5

    .line 482
    add-int/lit8 v8, v0, 0x1

    and-int/2addr v6, v8

    if-nez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_3

    :cond_1
    const/4 v6, 0x0

    .line 483
    :goto_3
    if-eqz v6, :cond_2

    iget v6, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    sub-int/2addr v6, v1

    sub-int/2addr v6, v4

    goto :goto_4

    :cond_2
    move v6, v4

    .line 484
    :goto_4
    iget-object v8, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->isFunction:[[Z

    aget-object v8, v8, v6

    aget-boolean v8, v8, v7

    if-nez v8, :cond_3

    array-length v8, p1

    mul-int/lit8 v8, v8, 0x8

    if-ge v3, v8, :cond_3

    .line 485
    iget-object v8, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->modules:[[Z

    aget-object v6, v8, v6

    ushr-int/lit8 v8, v3, 0x3

    aget-byte v8, p1, v8

    and-int/lit8 v9, v3, 0x7

    rsub-int/lit8 v9, v9, 0x7

    invoke-static {v8, v9}, Lcom/gathin/tvhome/qrcodegen/QrCode;->getBit(II)Z

    move-result v8

    aput-boolean v8, v6, v7

    .line 486
    add-int/lit8 v3, v3, 0x1

    .line 480
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 479
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 476
    :cond_5
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 493
    :cond_6
    nop

    .line 494
    return-void

    .line 472
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method private drawFinderPattern(II)V
    .locals 8

    .line 395
    const/4 v0, -0x4

    const/4 v1, -0x4

    :goto_0
    const/4 v2, 0x4

    if-gt v1, v2, :cond_3

    .line 396
    const/4 v3, -0x4

    :goto_1
    if-gt v3, v2, :cond_2

    .line 397
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 398
    add-int v5, p1, v3

    add-int v6, p2, v1

    .line 399
    if-ltz v5, :cond_1

    iget v7, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    if-ge v5, v7, :cond_1

    if-ltz v6, :cond_1

    iget v7, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    if-ge v6, v7, :cond_1

    .line 400
    const/4 v7, 0x2

    if-eq v4, v7, :cond_0

    if-eq v4, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    :goto_2
    invoke-direct {p0, v5, v6, v4}, Lcom/gathin/tvhome/qrcodegen/QrCode;->setFunctionModule(IIZ)V

    .line 396
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 395
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    :cond_3
    return-void
.end method

.method private drawFormatBits(I)V
    .locals 6

    .line 343
    iget-object v0, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->errorCorrectionLevel:Lcom/gathin/tvhome/qrcodegen/QrCode$Ecc;

    iget v0, v0, Lcom/gathin/tvhome/qrcodegen/QrCode$Ecc;->formatBits:I

    shl-int/lit8 v0, v0, 0x3

    or-int/2addr p1, v0

    .line 344
    nop

    .line 345
    const/4 v0, 0x0

    move v2, p1

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    .line 346
    shl-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v2, v2, 0x9

    mul-int/lit16 v2, v2, 0x537

    xor-int/2addr v2, v3

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    :cond_0
    shl-int/2addr p1, v3

    or-int/2addr p1, v2

    xor-int/lit16 p1, p1, 0x5412

    .line 348
    nop

    .line 351
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    const/16 v3, 0x8

    if-gt v1, v2, :cond_1

    .line 352
    invoke-static {p1, v1}, Lcom/gathin/tvhome/qrcodegen/QrCode;->getBit(II)Z

    move-result v2

    invoke-direct {p0, v3, v1, v2}, Lcom/gathin/tvhome/qrcodegen/QrCode;->setFunctionModule(IIZ)V

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 353
    :cond_1
    const/4 v1, 0x6

    invoke-static {p1, v1}, Lcom/gathin/tvhome/qrcodegen/QrCode;->getBit(II)Z

    move-result v1

    const/4 v2, 0x7

    invoke-direct {p0, v3, v2, v1}, Lcom/gathin/tvhome/qrcodegen/QrCode;->setFunctionModule(IIZ)V

    .line 354
    invoke-static {p1, v2}, Lcom/gathin/tvhome/qrcodegen/QrCode;->getBit(II)Z

    move-result v1

    invoke-direct {p0, v3, v3, v1}, Lcom/gathin/tvhome/qrcodegen/QrCode;->setFunctionModule(IIZ)V

    .line 355
    invoke-static {p1, v3}, Lcom/gathin/tvhome/qrcodegen/QrCode;->getBit(II)Z

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/gathin/tvhome/qrcodegen/QrCode;->setFunctionModule(IIZ)V

    .line 356
    const/16 v1, 0x9

    :goto_2
    const/16 v2, 0xf

    if-ge v1, v2, :cond_2

    .line 357
    rsub-int/lit8 v2, v1, 0xe

    invoke-static {p1, v1}, Lcom/gathin/tvhome/qrcodegen/QrCode;->getBit(II)Z

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/gathin/tvhome/qrcodegen/QrCode;->setFunctionModule(IIZ)V

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 360
    :cond_2
    nop

    :goto_3
    const/4 v1, 0x1

    if-ge v0, v3, :cond_3

    .line 361
    iget v4, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    sub-int/2addr v4, v1

    sub-int/2addr v4, v0

    invoke-static {p1, v0}, Lcom/gathin/tvhome/qrcodegen/QrCode;->getBit(II)Z

    move-result v1

    invoke-direct {p0, v4, v3, v1}, Lcom/gathin/tvhome/qrcodegen/QrCode;->setFunctionModule(IIZ)V

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 362
    :cond_3
    const/16 v0, 0x8

    :goto_4
    if-ge v0, v2, :cond_4

    .line 363
    iget v4, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    sub-int/2addr v4, v2

    add-int/2addr v4, v0

    invoke-static {p1, v0}, Lcom/gathin/tvhome/qrcodegen/QrCode;->getBit(II)Z

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/gathin/tvhome/qrcodegen/QrCode;->setFunctionModule(IIZ)V

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 364
    :cond_4
    iget p1, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    sub-int/2addr p1, v3

    invoke-direct {p0, v3, p1, v1}, Lcom/gathin/tvhome/qrcodegen/QrCode;->setFunctionModule(IIZ)V

    .line 365
    return-void
.end method

.method private drawFunctionPatterns()V
    .locals 7

    .line 312
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    if-ge v1, v2, :cond_2

    .line 313
    rem-int/lit8 v2, v1, 0x2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x6

    invoke-direct {p0, v5, v1, v4}, Lcom/gathin/tvhome/qrcodegen/QrCode;->setFunctionModule(IIZ)V

    .line 314
    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    invoke-direct {p0, v1, v5, v3}, Lcom/gathin/tvhome/qrcodegen/QrCode;->setFunctionModule(IIZ)V

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    :cond_2
    const/4 v1, 0x3

    invoke-direct {p0, v1, v1}, Lcom/gathin/tvhome/qrcodegen/QrCode;->drawFinderPattern(II)V

    .line 319
    iget v2, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    add-int/lit8 v2, v2, -0x4

    invoke-direct {p0, v2, v1}, Lcom/gathin/tvhome/qrcodegen/QrCode;->drawFinderPattern(II)V

    .line 320
    iget v2, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    add-int/lit8 v2, v2, -0x4

    invoke-direct {p0, v1, v2}, Lcom/gathin/tvhome/qrcodegen/QrCode;->drawFinderPattern(II)V

    .line 323
    invoke-direct {p0}, Lcom/gathin/tvhome/qrcodegen/QrCode;->getAlignmentPatternPositions()[I

    move-result-object v1

    .line 324
    array-length v2, v1

    .line 325
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_8

    .line 326
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v2, :cond_7

    .line 328
    if-nez v3, :cond_3

    if-eqz v4, :cond_6

    :cond_3
    if-nez v3, :cond_4

    add-int/lit8 v5, v2, -0x1

    if-eq v4, v5, :cond_6

    :cond_4
    add-int/lit8 v5, v2, -0x1

    if-ne v3, v5, :cond_5

    if-eqz v4, :cond_6

    .line 329
    :cond_5
    aget v5, v1, v3

    aget v6, v1, v4

    invoke-direct {p0, v5, v6}, Lcom/gathin/tvhome/qrcodegen/QrCode;->drawAlignmentPattern(II)V

    .line 326
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 325
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 334
    :cond_8
    invoke-direct {p0, v0}, Lcom/gathin/tvhome/qrcodegen/QrCode;->drawFormatBits(I)V

    .line 335
    invoke-direct {p0}, Lcom/gathin/tvhome/qrcodegen/QrCode;->drawVersion()V

    .line 336
    return-void
.end method

.method private drawVersion()V
    .locals 5

    .line 371
    iget v0, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->version:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 372
    return-void

    .line 375
    :cond_0
    iget v0, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->version:I

    .line 376
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xc

    if-ge v2, v3, :cond_1

    .line 377
    shl-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v0, v0, 0xb

    mul-int/lit16 v0, v0, 0x1f25

    xor-int/2addr v0, v3

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 378
    :cond_1
    iget v2, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->version:I

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 379
    nop

    .line 382
    nop

    :goto_1
    const/16 v2, 0x12

    if-ge v1, v2, :cond_2

    .line 383
    invoke-static {v0, v1}, Lcom/gathin/tvhome/qrcodegen/QrCode;->getBit(II)Z

    move-result v2

    .line 384
    iget v3, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    add-int/lit8 v3, v3, -0xb

    rem-int/lit8 v4, v1, 0x3

    add-int/2addr v3, v4

    .line 385
    div-int/lit8 v4, v1, 0x3

    .line 386
    invoke-direct {p0, v3, v4, v2}, Lcom/gathin/tvhome/qrcodegen/QrCode;->setFunctionModule(IIZ)V

    .line 387
    invoke-direct {p0, v4, v3, v2}, Lcom/gathin/tvhome/qrcodegen/QrCode;->setFunctionModule(IIZ)V

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 389
    :cond_2
    return-void
.end method

.method public static encodeBinary([BLcom/gathin/tvhome/qrcodegen/QrCode$Ecc;)Lcom/gathin/tvhome/qrcodegen/QrCode;
    .locals 2

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    invoke-static {p0}, Lcom/gathin/tvhome/qrcodegen/QrSegment;->makeBytes([B)Lcom/gathin/tvhome/qrcodegen/QrSegment;

    move-result-object p0

    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/gathin/tvhome/qrcodegen/QrSegment;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gathin/tvhome/qrcodegen/QrCode;->encodeSegments(Ljava/util/List;Lcom/gathin/tvhome/qrcodegen/QrCode$Ecc;)Lcom/gathin/tvhome/qrcodegen/QrCode;

    move-result-object p0

    return-object p0
.end method

.method public static encodeSegments(Ljava/util/List;Lcom/gathin/tvhome/qrcodegen/QrCode$Ecc;)Lcom/gathin/tvhome/qrcodegen/QrCode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gathin/tvhome/qrcodegen/QrSegment;",
            ">;",
            "Lcom/gathin/tvhome/qrcodegen/QrCode$Ecc;",
            ")",
            "Lcom/gathin/tvhome/qrcodegen/QrCode;"
        }
    .end annotation

    .line 115
    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v2, 0x1

    const/16 v3, 0x28

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/gathin/tvhome/qrcodegen/QrCode;->encodeSegments(Ljava/util/List;Lcom/gathin/tvhome/qrcodegen/QrCode$Ecc;IIIZ)Lcom/gathin/tvhome/qrcodegen/QrCode;

    move-result-object p0

    return-object p0
.end method

.method public static encodeSegments(Ljava/util/List;Lcom/gathin/tvhome/qrcodegen/QrCode$Ecc;IIIZ)Lcom/gathin/tvhome/qrcodegen/QrCode;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gathin/tvhome/qrcodegen/QrSegment;",
            ">;",
            "Lcom/gathin/tvhome/qrcodegen/QrCode$Ecc;",
            "IIIZ)",
            "Lcom/gathin/tvhome/qrcodegen/QrCode;"
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    const/4 v0, 0x1

    if-gt v0, p2, :cond_8

    if-gt p2, p3, :cond_8

    const/16 v1, 0x28

    if-gt p3, v1, :cond_8

    const/4 v1, -0x1

    if-lt p4, v1, :cond_8

    const/4 v2, 0x7

    if-gt p4, v2, :cond_8

    .line 151
    nop

    .line 152
    :goto_0
    invoke-static {p2, p1}, Lcom/gathin/tvhome/qrcodegen/QrCode;->getNumDataCodewords(ILcom/gathin/tvhome/qrcodegen/QrCode$Ecc;)I

    move-result v3

    const/16 v4, 0x8

    mul-int/lit8 v3, v3, 0x8

    .line 153
    invoke-static {p0, p2}, Lcom/gathin/tvhome/qrcodegen/QrSegment;->getTotalBits(Ljava/util/List;I)I

    move-result v5

    .line 154
    const/4 v6, 0x0

    if-eq v5, v1, :cond_5

    if-gt v5, v3, :cond_5

    .line 155
    nop

    .line 163
    nop

    .line 166
    invoke-static {}, Lcom/gathin/tvhome/qrcodegen/QrCode$Ecc;->values()[Lcom/gathin/tvhome/qrcodegen/QrCode$Ecc;

    move-result-object p3

    array-length v0, p3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v3, p3, v1

    .line 167
    if-eqz p5, :cond_0

    invoke-static {p2, v3}, Lcom/gathin/tvhome/qrcodegen/QrCode;->getNumDataCodewords(ILcom/gathin/tvhome/qrcodegen/QrCode$Ecc;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x8

    if-gt v5, v7, :cond_0

    .line 168
    move-object p1, v3

    .line 166
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 172
    :cond_1
    new-instance p3, Lcom/gathin/tvhome/qrcodegen/BitBuffer;

    invoke-direct {p3}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;-><init>()V

    .line 173
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    const/4 v0, 0x4

    if-eqz p5, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/gathin/tvhome/qrcodegen/QrSegment;

    .line 174
    iget-object v1, p5, Lcom/gathin/tvhome/qrcodegen/QrSegment;->mode:Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    iget v1, v1, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;->modeBits:I

    invoke-virtual {p3, v1, v0}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->appendBits(II)V

    .line 175
    iget v0, p5, Lcom/gathin/tvhome/qrcodegen/QrSegment;->numChars:I

    iget-object v1, p5, Lcom/gathin/tvhome/qrcodegen/QrSegment;->mode:Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    invoke-virtual {v1, p2}, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;->numCharCountBits(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->appendBits(II)V

    .line 176
    iget-object p5, p5, Lcom/gathin/tvhome/qrcodegen/QrSegment;->data:Lcom/gathin/tvhome/qrcodegen/BitBuffer;

    invoke-virtual {p3, p5}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->appendData(Lcom/gathin/tvhome/qrcodegen/BitBuffer;)V

    .line 177
    goto :goto_2

    .line 178
    :cond_2
    nop

    .line 181
    invoke-static {p2, p1}, Lcom/gathin/tvhome/qrcodegen/QrCode;->getNumDataCodewords(ILcom/gathin/tvhome/qrcodegen/QrCode$Ecc;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    .line 182
    nop

    .line 183
    invoke-virtual {p3}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->bitLength()I

    move-result p5

    sub-int p5, p0, p5

    invoke-static {v0, p5}, Ljava/lang/Math;->min(II)I

    move-result p5

    invoke-virtual {p3, v6, p5}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->appendBits(II)V

    .line 184
    invoke-virtual {p3}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->bitLength()I

    move-result p5

    rem-int/2addr p5, v4

    rsub-int/lit8 p5, p5, 0x8

    rem-int/2addr p5, v4

    invoke-virtual {p3, v6, p5}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->appendBits(II)V

    .line 185
    nop

    .line 188
    const/16 p5, 0xec

    :goto_3
    invoke-virtual {p3}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->bitLength()I

    move-result v0

    if-ge v0, p0, :cond_3

    .line 189
    invoke-virtual {p3, p5, v4}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->appendBits(II)V

    .line 188
    xor-int/lit16 p5, p5, 0xfd

    goto :goto_3

    .line 192
    :cond_3
    invoke-virtual {p3}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->bitLength()I

    move-result p0

    div-int/2addr p0, v4

    new-array p0, p0, [B

    .line 193
    nop

    :goto_4
    invoke-virtual {p3}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->bitLength()I

    move-result p5

    if-ge v6, p5, :cond_4

    .line 194
    ushr-int/lit8 p5, v6, 0x3

    aget-byte v0, p0, p5

    invoke-virtual {p3, v6}, Lcom/gathin/tvhome/qrcodegen/BitBuffer;->getBit(I)I

    move-result v1

    and-int/lit8 v3, v6, 0x7

    rsub-int/lit8 v3, v3, 0x7

    shl-int/2addr v1, v3

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p0, p5

    .line 193
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 197
    :cond_4
    new-instance p3, Lcom/gathin/tvhome/qrcodegen/QrCode;

    invoke-direct {p3, p2, p1, p0, p4}, Lcom/gathin/tvhome/qrcodegen/QrCode;-><init>(ILcom/gathin/tvhome/qrcodegen/QrCode$Ecc;[BI)V

    return-object p3

    .line 156
    :cond_5
    if-lt p2, p3, :cond_7

    .line 157
    nop

    .line 158
    if-eq v5, v1, :cond_6

    .line 159
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p0, p2, v6

    aput-object p1, p2, v0

    const-string p0, "Data length = %d bits, Max capacity = %d bits"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    .line 158
    :cond_6
    const-string p0, "Segment too long"

    .line 160
    :goto_5
    new-instance p1, Lcom/gathin/tvhome/qrcodegen/DataTooLongException;

    invoke-direct {p1, p0}, Lcom/gathin/tvhome/qrcodegen/DataTooLongException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    .line 147
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method

.method public static encodeText(Ljava/lang/CharSequence;Lcom/gathin/tvhome/qrcodegen/QrCode$Ecc;)Lcom/gathin/tvhome/qrcodegen/QrCode;
    .locals 0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    invoke-static {p0}, Lcom/gathin/tvhome/qrcodegen/QrSegment;->makeSegments(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p0

    .line 73
    invoke-static {p0, p1}, Lcom/gathin/tvhome/qrcodegen/QrCode;->encodeSegments(Ljava/util/List;Lcom/gathin/tvhome/qrcodegen/QrCode$Ecc;)Lcom/gathin/tvhome/qrcodegen/QrCode;

    move-result-object p0

    return-object p0
.end method

.method private finderPenaltyAddHistory(I[I)V
    .locals 3

    .line 744
    const/4 v0, 0x0

    aget v1, p2, v0

    if-nez v1, :cond_0

    .line 745
    iget v1, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    add-int/2addr p1, v1

    .line 746
    :cond_0
    array-length v1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p2, v0, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 747
    aput p1, p2, v0

    .line 748
    return-void
.end method

.method private finderPenaltyCountPatterns([I)I
    .locals 7

    .line 722
    const/4 v0, 0x1

    aget v1, p1, v0

    .line 723
    nop

    .line 724
    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v3, 0x2

    aget v3, p1, v3

    if-ne v3, v1, :cond_0

    const/4 v3, 0x3

    aget v3, p1, v3

    mul-int/lit8 v4, v1, 0x3

    if-ne v3, v4, :cond_0

    const/4 v3, 0x4

    aget v3, p1, v3

    if-ne v3, v1, :cond_0

    const/4 v3, 0x5

    aget v3, p1, v3

    if-ne v3, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 725
    :goto_0
    const/4 v4, 0x6

    if-eqz v3, :cond_1

    aget v5, p1, v2

    mul-int/lit8 v6, v1, 0x4

    if-lt v5, v6, :cond_1

    aget v5, p1, v4

    if-lt v5, v1, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 726
    :goto_1
    if-eqz v3, :cond_2

    aget v3, p1, v4

    mul-int/lit8 v4, v1, 0x4

    if-lt v3, v4, :cond_2

    aget p1, p1, v2

    if-lt p1, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    add-int/2addr v5, v0

    .line 725
    return v5
.end method

.method private finderPenaltyTerminateAndCount(ZI[I)I
    .locals 0

    .line 732
    if-eqz p1, :cond_0

    .line 733
    invoke-direct {p0, p2, p3}, Lcom/gathin/tvhome/qrcodegen/QrCode;->finderPenaltyAddHistory(I[I)V

    .line 734
    const/4 p2, 0x0

    .line 736
    :cond_0
    iget p1, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    add-int/2addr p2, p1

    .line 737
    invoke-direct {p0, p2, p3}, Lcom/gathin/tvhome/qrcodegen/QrCode;->finderPenaltyAddHistory(I[I)V

    .line 738
    invoke-direct {p0, p3}, Lcom/gathin/tvhome/qrcodegen/QrCode;->finderPenaltyCountPatterns([I)I

    move-result p1

    return p1
.end method

.method private getAlignmentPatternPositions()[I
    .locals 6

    .line 611
    iget v0, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->version:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 612
    new-array v0, v1, [I

    return-object v0

    .line 614
    :cond_0
    iget v0, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->version:I

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x2

    .line 615
    iget v3, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->version:I

    mul-int/lit8 v3, v3, 0x8

    mul-int/lit8 v4, v0, 0x3

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x5

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, -0x4

    div-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    .line 616
    new-array v4, v0, [I

    .line 617
    const/4 v5, 0x6

    aput v5, v4, v1

    .line 618
    sub-int/2addr v0, v2

    iget v1, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    add-int/lit8 v1, v1, -0x7

    :goto_0
    if-lt v0, v2, :cond_1

    .line 619
    aput v1, v4, v0

    .line 618
    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v3

    goto :goto_0

    .line 620
    :cond_1
    return-object v4
.end method

.method static getBit(II)Z
    .locals 0

    .line 753
    ushr-int/2addr p0, p1

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static getNumDataCodewords(ILcom/gathin/tvhome/qrcodegen/QrCode$Ecc;)I
    .locals 3

    .line 713
    invoke-static {p0}, Lcom/gathin/tvhome/qrcodegen/QrCode;->getNumRawDataModules(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    sget-object v1, Lcom/gathin/tvhome/qrcodegen/QrCode;->ECC_CODEWORDS_PER_BLOCK:[[B

    .line 714
    invoke-virtual {p1}, Lcom/gathin/tvhome/qrcodegen/QrCode$Ecc;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    aget-byte v1, v1, p0

    sget-object v2, Lcom/gathin/tvhome/qrcodegen/QrCode;->NUM_ERROR_CORRECTION_BLOCKS:[[B

    .line 715
    invoke-virtual {p1}, Lcom/gathin/tvhome/qrcodegen/QrCode$Ecc;->ordinal()I

    move-result p1

    aget-object p1, v2, p1

    aget-byte p0, p1, p0

    mul-int v1, v1, p0

    sub-int/2addr v0, v1

    .line 713
    return v0
.end method

.method private static getNumRawDataModules(I)I
    .locals 4

    .line 629
    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    const/16 v0, 0x28

    if-gt p0, v0, :cond_1

    .line 632
    mul-int/lit8 v0, p0, 0x4

    add-int/lit8 v0, v0, 0x11

    .line 633
    mul-int v1, v0, v0

    .line 634
    add-int/lit16 v1, v1, -0xc0

    .line 635
    add-int/lit8 v1, v1, -0x1f

    .line 636
    add-int/lit8 v0, v0, -0x10

    const/4 v2, 0x2

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    .line 638
    if-lt p0, v2, :cond_0

    .line 639
    div-int/lit8 v0, p0, 0x7

    add-int/2addr v0, v2

    .line 640
    add-int/lit8 v3, v0, -0x1

    mul-int v3, v3, v3

    mul-int/lit8 v3, v3, 0x19

    sub-int/2addr v1, v3

    .line 641
    sub-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x14

    sub-int/2addr v1, v0

    .line 643
    const/4 v0, 0x7

    if-lt p0, v0, :cond_0

    .line 644
    add-int/lit8 v1, v1, -0x24

    .line 646
    :cond_0
    nop

    .line 647
    return v1

    .line 630
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Version number out of range"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getPenaltyScore()I
    .locals 11

    .line 528
    nop

    .line 531
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    const/4 v4, 0x7

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-ge v1, v3, :cond_5

    .line 532
    nop

    .line 533
    nop

    .line 534
    new-array v3, v4, [I

    .line 535
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    iget v9, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    if-ge v4, v9, :cond_4

    .line 536
    iget-object v9, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->modules:[[Z

    aget-object v9, v9, v1

    aget-boolean v9, v9, v4

    if-ne v9, v7, :cond_1

    .line 537
    add-int/lit8 v8, v8, 0x1

    .line 538
    if-ne v8, v5, :cond_0

    .line 539
    add-int/lit8 v2, v2, 0x3

    goto :goto_2

    .line 540
    :cond_0
    if-le v8, v5, :cond_3

    .line 541
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 543
    :cond_1
    invoke-direct {p0, v8, v3}, Lcom/gathin/tvhome/qrcodegen/QrCode;->finderPenaltyAddHistory(I[I)V

    .line 544
    if-nez v7, :cond_2

    .line 545
    invoke-direct {p0, v3}, Lcom/gathin/tvhome/qrcodegen/QrCode;->finderPenaltyCountPatterns([I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x28

    add-int/2addr v2, v7

    .line 546
    :cond_2
    iget-object v7, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->modules:[[Z

    aget-object v7, v7, v1

    aget-boolean v7, v7, v4

    .line 547
    const/4 v8, 0x1

    .line 535
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 550
    :cond_4
    invoke-direct {p0, v7, v8, v3}, Lcom/gathin/tvhome/qrcodegen/QrCode;->finderPenaltyTerminateAndCount(ZI[I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x28

    add-int/2addr v2, v3

    .line 531
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 553
    :cond_5
    const/4 v1, 0x0

    :goto_3
    iget v3, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    if-ge v1, v3, :cond_b

    .line 554
    nop

    .line 555
    nop

    .line 556
    new-array v3, v4, [I

    .line 557
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_4
    iget v10, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    if-ge v7, v10, :cond_a

    .line 558
    iget-object v10, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->modules:[[Z

    aget-object v10, v10, v7

    aget-boolean v10, v10, v1

    if-ne v10, v8, :cond_7

    .line 559
    add-int/lit8 v9, v9, 0x1

    .line 560
    if-ne v9, v5, :cond_6

    .line 561
    add-int/lit8 v2, v2, 0x3

    goto :goto_5

    .line 562
    :cond_6
    if-le v9, v5, :cond_9

    .line 563
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 565
    :cond_7
    invoke-direct {p0, v9, v3}, Lcom/gathin/tvhome/qrcodegen/QrCode;->finderPenaltyAddHistory(I[I)V

    .line 566
    if-nez v8, :cond_8

    .line 567
    invoke-direct {p0, v3}, Lcom/gathin/tvhome/qrcodegen/QrCode;->finderPenaltyCountPatterns([I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x28

    add-int/2addr v2, v8

    .line 568
    :cond_8
    iget-object v8, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->modules:[[Z

    aget-object v8, v8, v7

    aget-boolean v8, v8, v1

    .line 569
    const/4 v9, 0x1

    .line 557
    :cond_9
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 572
    :cond_a
    invoke-direct {p0, v8, v9, v3}, Lcom/gathin/tvhome/qrcodegen/QrCode;->finderPenaltyTerminateAndCount(ZI[I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x28

    add-int/2addr v2, v3

    .line 553
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 576
    :cond_b
    const/4 v1, 0x0

    :goto_6
    iget v3, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    sub-int/2addr v3, v6

    if-ge v1, v3, :cond_e

    .line 577
    const/4 v3, 0x0

    :goto_7
    iget v4, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    sub-int/2addr v4, v6

    if-ge v3, v4, :cond_d

    .line 578
    iget-object v4, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->modules:[[Z

    aget-object v4, v4, v1

    aget-boolean v4, v4, v3

    .line 579
    iget-object v5, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->modules:[[Z

    aget-object v5, v5, v1

    add-int/lit8 v7, v3, 0x1

    aget-boolean v5, v5, v7

    if-ne v4, v5, :cond_c

    iget-object v5, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->modules:[[Z

    add-int/lit8 v8, v1, 0x1

    aget-object v5, v5, v8

    aget-boolean v3, v5, v3

    if-ne v4, v3, :cond_c

    iget-object v3, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->modules:[[Z

    aget-object v3, v3, v8

    aget-boolean v3, v3, v7

    if-ne v4, v3, :cond_c

    .line 582
    add-int/lit8 v2, v2, 0x3

    .line 577
    :cond_c
    move v3, v7

    goto :goto_7

    .line 576
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 587
    :cond_e
    nop

    .line 588
    iget-object v1, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->modules:[[Z

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_8
    if-ge v4, v3, :cond_11

    aget-object v7, v1, v4

    .line 589
    array-length v8, v7

    const/4 v9, 0x0

    :goto_9
    if-ge v9, v8, :cond_10

    aget-boolean v10, v7, v9

    .line 590
    if-eqz v10, :cond_f

    .line 591
    add-int/lit8 v5, v5, 0x1

    .line 589
    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 588
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 594
    :cond_11
    iget v0, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    iget v1, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    mul-int v0, v0, v1

    .line 596
    mul-int/lit8 v5, v5, 0x14

    mul-int/lit8 v1, v0, 0xa

    sub-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, v0

    sub-int/2addr v1, v6

    div-int/2addr v1, v0

    sub-int/2addr v1, v6

    .line 597
    nop

    .line 598
    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v2, v1

    .line 599
    nop

    .line 600
    return v2
.end method

.method private static reedSolomonComputeDivisor(I)[B
    .locals 9

    .line 654
    const/4 v0, 0x1

    if-lt p0, v0, :cond_3

    const/16 v1, 0xff

    if-gt p0, v1, :cond_3

    .line 658
    new-array v2, p0, [B

    .line 659
    add-int/lit8 v3, p0, -0x1

    aput-byte v0, v2, v3

    .line 664
    nop

    .line 665
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p0, :cond_2

    .line 667
    const/4 v5, 0x0

    :goto_1
    if-ge v5, p0, :cond_1

    .line 668
    aget-byte v6, v2, v5

    and-int/2addr v6, v1

    invoke-static {v6, v0}, Lcom/gathin/tvhome/qrcodegen/QrCode;->reedSolomonMultiply(II)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 669
    add-int/lit8 v6, v5, 0x1

    if-ge v6, p0, :cond_0

    .line 670
    aget-byte v7, v2, v5

    aget-byte v8, v2, v6

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v2, v5

    .line 667
    :cond_0
    move v5, v6

    goto :goto_1

    .line 672
    :cond_1
    const/4 v5, 0x2

    invoke-static {v0, v5}, Lcom/gathin/tvhome/qrcodegen/QrCode;->reedSolomonMultiply(II)I

    move-result v0

    .line 665
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 674
    :cond_2
    return-object v2

    .line 655
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Degree out of range"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private static reedSolomonComputeRemainder([B[B)[B
    .locals 9

    .line 680
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 681
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 682
    array-length v0, p1

    new-array v1, v0, [B

    .line 683
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-byte v5, p0, v4

    .line 684
    aget-byte v6, v1, v3

    xor-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    .line 685
    add-int/lit8 v6, v0, -0x1

    const/4 v7, 0x1

    invoke-static {v1, v7, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 686
    aput-byte v3, v1, v6

    .line 687
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_0

    .line 688
    aget-byte v7, v1, v6

    aget-byte v8, p1, v6

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8, v5}, Lcom/gathin/tvhome/qrcodegen/QrCode;->reedSolomonMultiply(II)I

    move-result v8

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 687
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 683
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 690
    :cond_1
    return-object v1
.end method

.method private static reedSolomonMultiply(II)I
    .locals 3

    .line 697
    nop

    .line 699
    nop

    .line 700
    const/4 v0, 0x7

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    .line 701
    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v1, v1, 0x7

    mul-int/lit16 v1, v1, 0x11d

    xor-int/2addr v1, v2

    .line 702
    ushr-int v2, p1, v0

    and-int/lit8 v2, v2, 0x1

    mul-int v2, v2, p0

    xor-int/2addr v1, v2

    .line 700
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 704
    :cond_0
    nop

    .line 705
    return v1
.end method

.method private setFunctionModule(IIZ)V
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->modules:[[Z

    aget-object v0, v0, p2

    aput-boolean p3, v0, p1

    .line 420
    iget-object p3, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->isFunction:[[Z

    aget-object p2, p3, p2

    const/4 p3, 0x1

    aput-boolean p3, p2, p1

    .line 421
    return-void
.end method


# virtual methods
.method public getModule(II)Z
    .locals 1

    .line 302
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->size:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/gathin/tvhome/qrcodegen/QrCode;->modules:[[Z

    aget-object p2, v0, p2

    aget-boolean p1, p2, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
