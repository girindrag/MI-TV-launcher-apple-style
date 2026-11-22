.class public final enum Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;
.super Ljava/lang/Enum;
.source "QrSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gathin/tvhome/qrcodegen/QrSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

.field static final synthetic $assertionsDisabled:Z

.field public static final enum ALPHANUMERIC:Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

.field public static final enum BYTE:Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

.field public static final enum ECI:Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

.field public static final enum KANJI:Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

.field public static final enum NUMERIC:Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;


# instance fields
.field final modeBits:I

.field private final numBitsCharCount:[I


# direct methods
.method private static synthetic $values()[Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;
    .locals 3

    .line 278
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    sget-object v1, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;->NUMERIC:Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;->ALPHANUMERIC:Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;->BYTE:Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;->KANJI:Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;->ECI:Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .line 278
    const-class v0, Lcom/gathin/tvhome/qrcodegen/QrSegment;

    .line 282
    new-instance v0, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    const/16 v1, 0xe

    const/16 v2, 0xa

    const/16 v3, 0xc

    filled-new-array {v2, v3, v1}, [I

    move-result-object v1

    const-string v4, "NUMERIC"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v0, v4, v5, v6, v1}, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;-><init>(Ljava/lang/String;II[I)V

    sput-object v0, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;->NUMERIC:Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    .line 283
    new-instance v0, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    const/16 v1, 0xb

    const/16 v4, 0xd

    const/16 v7, 0x9

    filled-new-array {v7, v1, v4}, [I

    move-result-object v1

    const-string v4, "ALPHANUMERIC"

    const/4 v7, 0x2

    invoke-direct {v0, v4, v6, v7, v1}, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;-><init>(Ljava/lang/String;II[I)V

    sput-object v0, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;->ALPHANUMERIC:Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    .line 284
    new-instance v0, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    const-string v1, "BYTE"

    const/16 v4, 0x8

    const/16 v6, 0x10

    filled-new-array {v4, v6, v6}, [I

    move-result-object v6

    const/4 v8, 0x4

    invoke-direct {v0, v1, v7, v8, v6}, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;-><init>(Ljava/lang/String;II[I)V

    sput-object v0, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;->BYTE:Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    .line 285
    new-instance v0, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    const/4 v1, 0x3

    filled-new-array {v4, v2, v3}, [I

    move-result-object v2

    const-string v3, "KANJI"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;-><init>(Ljava/lang/String;II[I)V

    sput-object v0, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;->KANJI:Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    .line 286
    new-instance v0, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    const/4 v1, 0x7

    filled-new-array {v5, v5, v5}, [I

    move-result-object v2

    const-string v3, "ECI"

    invoke-direct {v0, v3, v8, v1, v2}, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;-><init>(Ljava/lang/String;II[I)V

    sput-object v0, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;->ECI:Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    .line 278
    invoke-static {}, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;->$values()[Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    move-result-object v0

    sput-object v0, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;->$VALUES:[Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;II[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)V"
        }
    .end annotation

    .line 300
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 301
    iput p3, p0, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;->modeBits:I

    .line 302
    iput-object p4, p0, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;->numBitsCharCount:[I

    .line 303
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 278
    const-class v0, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    return-object p0
.end method

.method public static values()[Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;
    .locals 1

    .line 278
    sget-object v0, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;->$VALUES:[Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    invoke-virtual {v0}, [Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;

    return-object v0
.end method


# virtual methods
.method numCharCountBits(I)I
    .locals 1

    .line 311
    nop

    .line 312
    iget-object v0, p0, Lcom/gathin/tvhome/qrcodegen/QrSegment$Mode;->numBitsCharCount:[I

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x11

    aget p1, v0, p1

    return p1
.end method
