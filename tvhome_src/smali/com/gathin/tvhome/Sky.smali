.class public abstract Lcom/gathin/tvhome/Sky;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL:[Ljava/lang/String;

.field public static final MONTHS:[I

.field public static final STOPS:[Lcom/gathin/tvhome/Sky$Stop;

.field public static broken:Z

.field public static handler:Landroid/os/Handler;

.field public static step:Lcom/gathin/tvhome/VolumeKeys$1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 27

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/gathin/tvhome/Sky;->MONTHS:[I

    new-instance v0, Lcom/gathin/tvhome/Sky$Stop;

    const/4 v6, 0x0

    const v7, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const v3, -0xfbf9f2

    const v4, -0xf8f3e6

    const v5, -0xf4ecda

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/gathin/tvhome/Sky$Stop;-><init>(IIIIIF)V

    new-instance v2, Lcom/gathin/tvhome/Sky$Stop;

    const/4 v13, 0x0

    const v14, 0x3e99999a    # 0.3f

    const/16 v9, 0x140

    const v10, -0xfbf9f2

    const v11, -0xf8f3e6

    const v12, -0xf4ecda

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/gathin/tvhome/Sky$Stop;-><init>(IIIIIF)V

    new-instance v3, Lcom/gathin/tvhome/Sky$Stop;

    const/16 v20, 0x64

    const v21, 0x3e75c28f    # 0.24f

    const/16 v16, 0x186

    const v17, -0xe9f0d2

    const v18, -0xc4dcae

    const v19, -0x75b595

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lcom/gathin/tvhome/Sky$Stop;-><init>(IIIIIF)V

    new-instance v11, Lcom/gathin/tvhome/Sky$Stop;

    const/16 v9, 0xa0

    const v10, 0x3e99999a    # 0.3f

    const/16 v5, 0x1c2

    const v6, -0xeddfc1

    const v7, -0xa3c59d

    const v8, -0x2c98b1

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/gathin/tvhome/Sky$Stop;-><init>(IIIIIF)V

    new-instance v5, Lcom/gathin/tvhome/Sky$Stop;

    const/16 v17, 0x5a

    const v18, 0x3ec28f5c    # 0.38f

    const/16 v13, 0x23a

    const v14, -0xf1e5cd

    const v15, -0xe0caa9

    const v16, -0xbc9b75

    move-object v12, v5

    invoke-direct/range {v12 .. v18}, Lcom/gathin/tvhome/Sky$Stop;-><init>(IIIIIF)V

    new-instance v6, Lcom/gathin/tvhome/Sky$Stop;

    const/16 v24, 0x3c

    const/high16 v25, 0x3f000000    # 0.5f

    const/16 v20, 0x30c

    const v21, -0xf4eadc

    const v22, -0xe8cfb1

    const v23, -0xcea781

    move-object/from16 v19, v6

    invoke-direct/range {v19 .. v25}, Lcom/gathin/tvhome/Sky$Stop;-><init>(IIIIIF)V

    new-instance v7, Lcom/gathin/tvhome/Sky$Stop;

    const v18, 0x3f1eb852    # 0.62f

    const/16 v13, 0x3fc

    const v14, -0xf2eada

    const v15, -0xdfc6a4

    const v16, -0xb3ab90

    move-object v12, v7

    invoke-direct/range {v12 .. v18}, Lcom/gathin/tvhome/Sky$Stop;-><init>(IIIIIF)V

    new-instance v8, Lcom/gathin/tvhome/Sky$Stop;

    const/16 v24, 0xbe

    const v25, 0x3f428f5c    # 0.76f

    const/16 v20, 0x474

    const v21, -0xe4efd0

    const v22, -0x93d1ae

    const v23, -0x1d8fb6

    move-object/from16 v19, v8

    invoke-direct/range {v19 .. v25}, Lcom/gathin/tvhome/Sky$Stop;-><init>(IIIIIF)V

    new-instance v9, Lcom/gathin/tvhome/Sky$Stop;

    const/16 v17, 0x82

    const v18, 0x3f51eb85    # 0.82f

    const/16 v13, 0x4a1

    const v14, -0xebf3d9

    const v15, -0xb5dfb7

    const v16, -0x5ab5a4

    move-object v12, v9

    invoke-direct/range {v12 .. v18}, Lcom/gathin/tvhome/Sky$Stop;-><init>(IIIIIF)V

    new-instance v10, Lcom/gathin/tvhome/Sky$Stop;

    const/16 v24, 0x3c

    const v25, 0x3f5c28f6    # 0.86f

    const/16 v20, 0x4ec

    const v21, -0xf5f5e4

    const v22, -0xe6edd0

    const v23, -0xc5e0b7

    move-object/from16 v19, v10

    invoke-direct/range {v19 .. v25}, Lcom/gathin/tvhome/Sky$Stop;-><init>(IIIIIF)V

    new-instance v19, Lcom/gathin/tvhome/Sky$Stop;

    const/16 v17, 0x0

    const v18, 0x3e99999a    # 0.3f

    const/16 v13, 0x546

    const v14, -0xfbf9f2

    const v15, -0xf8f3e6

    const v16, -0xf4ecda

    move-object/from16 v12, v19

    invoke-direct/range {v12 .. v18}, Lcom/gathin/tvhome/Sky$Stop;-><init>(IIIIIF)V

    new-instance v12, Lcom/gathin/tvhome/Sky$Stop;

    const/16 v25, 0x0

    const v26, 0x3e99999a    # 0.3f

    const/16 v21, 0x5a0

    const v22, -0xfbf9f2

    const v23, -0xf8f3e6

    const v24, -0xf4ecda

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v26}, Lcom/gathin/tvhome/Sky$Stop;-><init>(IIIIIF)V

    move-object/from16 v11, v19

    filled-new-array/range {v1 .. v12}, [Lcom/gathin/tvhome/Sky$Stop;

    move-result-object v0

    sput-object v0, Lcom/gathin/tvhome/Sky;->STOPS:[Lcom/gathin/tvhome/Sky$Stop;

    const-string v0, "evening"

    const-string v1, "night"

    const-string v2, "morning"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gathin/tvhome/Sky;->ALL:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f100083
        0x7f100087
        0x7f100084
        0x7f100089
        0x7f100086
        0x7f100088
        0x7f100085
        0x7f10007e
        0x7f10007f
        0x7f100081
        0x7f100080
        0x7f100082
    .end array-data
.end method

.method public static appInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 p1, 0x10000

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static at(I)Lcom/gathin/tvhome/Sky$Palette;
    .locals 11

    const/16 v0, 0x5a0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sget-object v1, Lcom/gathin/tvhome/Sky;->STOPS:[Lcom/gathin/tvhome/Sky$Stop;

    aget-object v2, v1, v0

    const/16 v3, 0xb

    aget-object v4, v1, v3

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v5, v1, v0

    iget v6, v5, Lcom/gathin/tvhome/Sky$Stop;->minute:I

    if-lt p0, v6, :cond_0

    add-int/lit8 v6, v0, 0x1

    aget-object v6, v1, v6

    iget v7, v6, Lcom/gathin/tvhome/Sky$Stop;->minute:I

    if-gt p0, v7, :cond_0

    move-object v2, v5

    move-object v4, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, v4, Lcom/gathin/tvhome/Sky$Stop;->minute:I

    iget v1, v2, Lcom/gathin/tvhome/Sky$Stop;->minute:I

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    move p0, v3

    goto :goto_2

    :cond_2
    sub-int/2addr p0, v1

    int-to-float p0, p0

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p0, v0

    :goto_2
    new-instance v0, Lcom/gathin/tvhome/Sky$Palette;

    iget v1, v2, Lcom/gathin/tvhome/Sky$Stop;->top:I

    iget v5, v4, Lcom/gathin/tvhome/Sky$Stop;->top:I

    invoke-static {v1, v5, p0}, Lcom/gathin/tvhome/Sky;->lerpColor(IIF)I

    move-result v6

    iget v1, v2, Lcom/gathin/tvhome/Sky$Stop;->mid:I

    iget v5, v4, Lcom/gathin/tvhome/Sky$Stop;->mid:I

    invoke-static {v1, v5, p0}, Lcom/gathin/tvhome/Sky;->lerpColor(IIF)I

    move-result v7

    iget v1, v2, Lcom/gathin/tvhome/Sky$Stop;->bottom:I

    iget v5, v4, Lcom/gathin/tvhome/Sky$Stop;->bottom:I

    invoke-static {v1, v5, p0}, Lcom/gathin/tvhome/Sky;->lerpColor(IIF)I

    move-result v8

    iget v1, v2, Lcom/gathin/tvhome/Sky$Stop;->sun:I

    int-to-float v5, v1

    iget v9, v4, Lcom/gathin/tvhome/Sky$Stop;->sun:I

    sub-int/2addr v9, v1

    int-to-float v1, v9

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v9, p0}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    mul-float/2addr v10, v1

    add-float/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v4, v4, Lcom/gathin/tvhome/Sky$Stop;->sunX:F

    iget v2, v2, Lcom/gathin/tvhome/Sky$Stop;->sunX:F

    sub-float/2addr v4, v2

    invoke-static {v9, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v3, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    mul-float/2addr p0, v4

    add-float v10, p0, v2

    move-object v5, v0

    move v9, v1

    invoke-direct/range {v5 .. v10}, Lcom/gathin/tvhome/Sky$Palette;-><init>(IIIIF)V

    return-object v0
.end method

.method public static boxBlur([IZ)[I
    .locals 12

    array-length v0, p0

    new-array v0, v0, [I

    const/16 v1, 0x30

    const/16 v2, 0x1b

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const/4 v2, 0x0

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_6

    move v5, v2

    :goto_3
    if-ge v5, v1, :cond_5

    const/4 v6, -0x2

    move v7, v2

    move v8, v7

    move v9, v8

    :goto_4
    const/4 v10, 0x2

    if-gt v6, v10, :cond_3

    add-int/lit8 v10, v1, -0x1

    add-int v11, v5, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-eqz p1, :cond_2

    mul-int/lit8 v11, v4, 0x30

    add-int/2addr v11, v10

    aget v10, p0, v11

    goto :goto_5

    :cond_2
    mul-int/lit8 v10, v10, 0x30

    add-int/2addr v10, v4

    aget v10, p0, v10

    :goto_5
    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v11

    add-int/2addr v7, v11

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v11

    add-int/2addr v8, v11

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    if-eqz p1, :cond_4

    mul-int/lit8 v6, v4, 0x30

    add-int/2addr v6, v5

    goto :goto_6

    :cond_4
    mul-int/lit8 v6, v5, 0x30

    add-int/2addr v6, v4

    :goto_6
    div-int/lit8 v7, v7, 0x5

    div-int/lit8 v8, v8, 0x5

    div-int/lit8 v9, v9, 0x5

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    aput v7, v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    return-object v0
.end method

.method public static change(Ljava/util/Set;Ljava/lang/String;Z)Ljava/util/HashSet;
    .locals 1

    invoke-static {p1}, Lcom/gathin/tvhome/Sky;->validPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p0

    const/16 p1, 0x80

    if-gt p0, p1, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Too many shortcuts"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid package"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static clamp(F)I
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x437f0000    # 255.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    const/16 p0, 0xff

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static coverScale(IIII)[I
    .locals 6

    int-to-long v0, p2

    int-to-long v2, p1

    mul-long/2addr v0, v2

    int-to-long v2, p3

    int-to-long v4, p0

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ltz v0, :cond_1

    if-le p0, p2, :cond_0

    new-array v1, v4, [I

    aput p0, v1, v3

    aput p2, v1, v2

    :cond_0
    return-object v1

    :cond_1
    if-le p1, p3, :cond_2

    new-array v1, v4, [I

    aput p1, v1, v3

    aput p3, v1, v2

    :cond_2
    return-object v1
.end method

.method public static decode(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0x8000

    if-gt v0, v1, :cond_4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v1, v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gathin/tvhome/Sky;->validPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    const/16 v3, 0x80

    if-gt v2, v3, :cond_2

    add-int/lit8 v2, v1, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid shortcut file"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    return-object v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Shortcut file too large"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encode(Ljava/util/HashSet;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/gathin/tvhome/Sky;->validPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid package"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Too many shortcuts"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static find(Ljava/util/List;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static get(Landroid/content/Context;I)Landroid/graphics/Typeface;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget-object p1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "res/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getFont(I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p1, p0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static getMemoryStatus(Landroid/content/Context;)Lcom/gathin/tvhome/DeviceCare$MemoryStatus;
    .locals 12

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-nez p0, :cond_0

    new-instance p0, Lcom/gathin/tvhome/DeviceCare$MemoryStatus;

    const-wide/16 v3, 0x384

    const/16 v5, 0x32

    const-wide/16 v1, 0x708

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/gathin/tvhome/DeviceCare$MemoryStatus;-><init>(JJI)V

    return-object p0

    :cond_0
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/32 v3, 0x100000

    div-long v6, v1, v3

    iget-wide v8, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    div-long v3, v8, v3

    sub-long v8, v1, v8

    const-wide/16 v10, 0x64

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long p0, v1, v10

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x1

    :goto_0
    div-long/2addr v8, v1

    long-to-int v10, v8

    new-instance p0, Lcom/gathin/tvhome/DeviceCare$MemoryStatus;

    move-object v5, p0

    move-wide v8, v3

    invoke-direct/range {v5 .. v10}, Lcom/gathin/tvhome/DeviceCare$MemoryStatus;-><init>(JJI)V

    return-object p0
.end method

.method public static handle(Landroid/content/Context;Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/16 v1, 0x19

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    return v2

    .line 2
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v1, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    return v3

    .line 3
    :cond_4
    :goto_1
    sget-object v1, Lcom/gathin/tvhome/Sky;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    sget-object v2, Lcom/gathin/tvhome/Sky;->step:Lcom/gathin/tvhome/VolumeKeys$1;

    if-eqz v2, :cond_5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5
    const/4 v1, 0x0

    .line 4
    sput-object v1, Lcom/gathin/tvhome/Sky;->step:Lcom/gathin/tvhome/VolumeKeys$1;

    .line 5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_6

    return v3

    .line 6
    :cond_6
    const-class p1, Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-nez p0, :cond_7

    return v3

    .line 7
    :cond_7
    sget-object p1, Lcom/gathin/tvhome/Sky;->handler:Landroid/os/Handler;

    if-nez p1, :cond_8

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p1, Lcom/gathin/tvhome/Sky;->handler:Landroid/os/Handler;

    .line 8
    :cond_8
    new-instance p1, Lcom/gathin/tvhome/VolumeKeys$1;

    invoke-direct {p1, p0, v0}, Lcom/gathin/tvhome/VolumeKeys$1;-><init>(Landroid/media/AudioManager;I)V

    sput-object p1, Lcom/gathin/tvhome/Sky;->step:Lcom/gathin/tvhome/VolumeKeys$1;

    .line 9
    sget-object p0, Lcom/gathin/tvhome/Sky;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v3
.end method

.method public static handle(Landroid/content/Context;Landroid/view/KeyEvent;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 19

    move-object/from16 v0, p0

    .line 10
    const-string v1, "settings"

    const/4 v2, 0x6

    const-string v3, "recents"

    const-string v4, "sleep"

    const-string v5, "wifi"

    const-string v6, "mute"

    const-string v7, "home"

    const-string v8, "back"

    const-string v9, "screensaver"

    const/4 v10, -0x1

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return v14

    .line 11
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v15

    if-ne v15, v13, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v15

    if-nez v15, :cond_1b

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v17

    sub-long v15, v15, v17

    const-wide/16 v17, 0x1f4

    cmp-long v15, v15, v17

    if-ltz v15, :cond_1

    if-eqz p3, :cond_1

    move-object/from16 v15, p3

    goto :goto_0

    :cond_1
    move-object/from16 v15, p2

    :goto_0
    if-eqz v15, :cond_1b

    .line 13
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :goto_1
    move/from16 v16, v10

    goto :goto_2

    :sswitch_0
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    goto :goto_1

    :cond_2
    const/16 v16, 0x7

    goto :goto_2

    :sswitch_1
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    goto :goto_1

    :cond_3
    move/from16 v16, v2

    goto :goto_2

    :sswitch_2
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    goto :goto_1

    :cond_4
    const/16 v16, 0x5

    goto :goto_2

    :sswitch_3
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    goto :goto_1

    :cond_5
    const/16 v16, 0x4

    goto :goto_2

    :sswitch_4
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6

    goto :goto_1

    :cond_6
    move/from16 v16, v11

    goto :goto_2

    :sswitch_5
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7

    goto :goto_1

    :cond_7
    move/from16 v16, v12

    goto :goto_2

    :sswitch_6
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_8

    goto :goto_1

    :cond_8
    move/from16 v16, v13

    goto :goto_2

    :sswitch_7
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_9

    goto :goto_1

    :cond_9
    move/from16 v16, v14

    :goto_2
    packed-switch v16, :pswitch_data_0

    .line 14
    const-string v1, "inputs"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v3, 0x10000000

    if-eqz v1, :cond_a

    .line 15
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/gathin/tvhome/MainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.android.tv.action.VIEW_INPUTS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 16
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    .line 18
    :cond_a
    const-string v1, "input:"

    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_b

    goto :goto_3

    .line 19
    :cond_b
    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_3

    :cond_c
    move-object v4, v1

    :goto_3
    if-eqz v4, :cond_d

    .line 21
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-static {v4}, Landroid/media/tv/TvContract;->buildChannelUriForPassthroughInput(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "vnd.android.cursor.item/channel"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 23
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 24
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8

    .line 25
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_e

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :cond_e
    if-nez v1, :cond_f

    goto/16 :goto_8

    .line 27
    :cond_f
    :try_start_2
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_8

    .line 28
    :pswitch_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_1

    :goto_4
    move v3, v10

    goto :goto_5

    :sswitch_8
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_4

    :cond_10
    move v3, v11

    goto :goto_5

    :sswitch_9
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_4

    :cond_11
    move v3, v12

    goto :goto_5

    :sswitch_a
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_4

    :cond_12
    move v3, v13

    goto :goto_5

    :sswitch_b
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_4

    :cond_13
    move v3, v14

    :goto_5
    packed-switch v3, :pswitch_data_1

    :cond_14
    move v2, v14

    goto :goto_6

    :pswitch_1
    move v2, v11

    goto :goto_6

    :pswitch_2
    const/16 v3, 0x1c

    if-lt v2, v3, :cond_14

    const/16 v2, 0x8

    goto :goto_6

    :pswitch_3
    move v2, v12

    goto :goto_6

    :pswitch_4
    move v2, v13

    :goto_6
    if-eqz v2, :cond_15

    .line 30
    instance-of v1, v0, Landroid/accessibilityservice/AccessibilityService;

    if-eqz v1, :cond_1b

    check-cast v0, Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0, v2}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    goto/16 :goto_8

    .line 31
    :cond_15
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_2

    goto :goto_7

    :sswitch_c
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_7

    :cond_16
    move v10, v11

    goto :goto_7

    :sswitch_d
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_7

    :cond_17
    move v10, v12

    goto :goto_7

    :sswitch_e
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_7

    :cond_18
    move v10, v13

    goto :goto_7

    :sswitch_f
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_7

    :cond_19
    move v10, v14

    :goto_7
    packed-switch v10, :pswitch_data_2

    goto :goto_8

    .line 32
    :pswitch_5
    const-string v1, "android.settings.SETTINGS"

    invoke-static {v0, v1}, Lcom/gathin/tvhome/Sky;->intent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gathin/tvhome/Sky;->start(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_8

    .line 33
    :pswitch_6
    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-static {v0, v1}, Lcom/gathin/tvhome/Sky;->intent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gathin/tvhome/Sky;->start(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_8

    .line 34
    :pswitch_7
    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_1b

    const/16 v1, 0x65

    .line 35
    invoke-virtual {v0, v11, v1, v13}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_8

    .line 36
    :pswitch_8
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.Somnambulator"

    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v14}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_1a

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/gathin/tvhome/ClockActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    :cond_1a
    invoke-static {v0, v1}, Lcom/gathin/tvhome/Sky;->start(Landroid/content/Context;Landroid/content/Intent;)V

    :catch_0
    :cond_1b
    :goto_8
    return v13

    :sswitch_data_0
    .sparse-switch
        -0x17fee57 -> :sswitch_7
        0x2e04e7 -> :sswitch_6
        0x30f4df -> :sswitch_5
        0x335219 -> :sswitch_4
        0x37af15 -> :sswitch_3
        0x6872ed7 -> :sswitch_2
        0x40828578 -> :sswitch_1
        0x5582bc23 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x2e04e7 -> :sswitch_b
        0x30f4df -> :sswitch_a
        0x6872ed7 -> :sswitch_9
        0x40828578 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x17fee57 -> :sswitch_f
        0x335219 -> :sswitch_e
        0x37af15 -> :sswitch_d
        0x5582bc23 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public static holdEntries(Ljava/lang/Iterable;)Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hold:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static images(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    return-object v0

    :cond_1
    new-instance v1, Lcom/gathin/tvhome/WallpaperRotation$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/32 v7, 0xa00000

    cmp-long v5, v5, v7

    if-gtz v5, :cond_3

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, ".jpeg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, ".webp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v0
.end method

.method public static intent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v0, "CTSDummy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/gathin/tvhome/Sky;->vendorIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_1

    move-object v1, p0

    :cond_1
    return-object v1
.end method

.method public static jdFromDate(III)J
    .locals 7

    rsub-int/lit8 v0, p1, 0xe

    div-int/lit8 v0, v0, 0xc

    add-int/lit16 p2, p2, 0x12c0

    sub-int/2addr p2, v0

    int-to-long v1, p2

    mul-int/lit8 v0, v0, 0xc

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x3

    mul-int/lit16 v0, v0, 0x99

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x5

    add-int/2addr v0, p0

    int-to-long p0, v0

    const-wide/16 v3, 0x16d

    mul-long/2addr v3, v1

    add-long/2addr v3, p0

    const-wide/16 p0, 0x4

    div-long p0, v1, p0

    add-long/2addr p0, v3

    const-wide/16 v3, 0x64

    div-long v3, v1, v3

    sub-long v3, p0, v3

    const-wide/16 v5, 0x190

    div-long/2addr v1, v5

    add-long/2addr v1, v3

    const-wide/16 v3, 0x7d2d

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x231519

    cmp-long p2, v1, v3

    if-gez p2, :cond_0

    const-wide/16 v0, 0x7d53

    sub-long v1, p0, v0

    :cond_0
    return-wide v1
.end method

.method public static lerpColor(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    ushr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v1, v0

    rsub-int v0, v0, 0xff

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v2, v1

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, p2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v3, v2

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    sub-int/2addr v4, v2

    int-to-float v2, v4

    mul-float/2addr v2, p2

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    and-int/lit16 p0, p0, 0xff

    int-to-float v3, p0

    and-int/lit16 p1, p1, 0xff

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p0, p2

    add-float/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    shl-int/lit8 p1, v0, 0x18

    shl-int/lit8 p2, v1, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, v2, 0x8

    or-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method public static lunarMonth11(ID)J
    .locals 4

    const/16 v0, 0x1f

    const/16 v1, 0xc

    invoke-static {v0, v1, p0}, Lcom/gathin/tvhome/Sky;->jdFromDate(III)J

    move-result-wide v0

    const-wide/32 v2, 0x24d9ad

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x403d87d4abcb41d5L    # 29.530588853

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    invoke-static {p0, p1, p2}, Lcom/gathin/tvhome/Sky;->newMoonDay(ID)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/gathin/tvhome/Sky;->sunLongitude(JD)I

    move-result v2

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0, p1, p2}, Lcom/gathin/tvhome/Sky;->newMoonDay(ID)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public static newMoonDay(ID)J
    .locals 26

    move/from16 v0, p0

    int-to-double v0, v0

    const-wide v2, 0x4093536666666666L    # 1236.85

    div-double v2, v0, v2

    mul-double v4, v2, v2

    mul-double v6, v4, v2

    const-wide v8, 0x403d87d4a8e43a52L    # 29.53058868

    mul-double/2addr v8, v0

    const-wide v10, 0x41426cd66131b9b6L    # 2415020.75933

    add-double/2addr v8, v10

    const-wide v10, 0x3f1ee16c97020fa5L    # 1.178E-4

    mul-double/2addr v10, v4

    add-double/2addr v10, v8

    const-wide v8, 0x3e84cdc26b1f07d8L    # 1.55E-7

    mul-double/2addr v8, v6

    sub-double/2addr v10, v8

    const-wide v8, 0x40609bd70a3d70a4L    # 132.87

    mul-double/2addr v8, v2

    const-wide v12, 0x4064d1eb851eb852L    # 166.56

    add-double/2addr v8, v12

    const-wide v12, 0x3f82c94b380cb6c8L    # 0.009173

    mul-double/2addr v12, v4

    sub-double/2addr v8, v12

    const-wide v12, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide v14, 0x3f35a07b352a8438L    # 3.3E-4

    mul-double/2addr v8, v14

    add-double/2addr v8, v10

    const-wide v10, 0x403d1af89db608e6L    # 29.10535608

    mul-double/2addr v10, v0

    const-wide v14, 0x4076739652bd3c36L    # 359.2242

    add-double/2addr v10, v14

    const-wide v14, 0x3f01757349a3b801L    # 3.33E-5

    mul-double/2addr v14, v4

    sub-double/2addr v10, v14

    const-wide v14, 0x3ecd1bc4ac97ce12L    # 3.47E-6

    mul-double/2addr v14, v6

    sub-double/2addr v10, v14

    const-wide v14, 0x40781d1218abf363L    # 385.81691806

    mul-double/2addr v14, v0

    const-wide v16, 0x40732067a0f9096cL    # 306.0253

    add-double v14, v14, v16

    const-wide v16, 0x3f85f9ecc0881aecL    # 0.0107306

    mul-double v16, v16, v4

    add-double v16, v16, v14

    const-wide v14, 0x3ee9ebb977049942L    # 1.236E-5

    mul-double/2addr v14, v6

    add-double v14, v14, v16

    const-wide v16, 0x40786aba64fb574fL    # 390.67050646

    mul-double v0, v0, v16

    const-wide v16, 0x40354be0ded288ceL    # 21.2964

    add-double v0, v0, v16

    const-wide v16, 0x3f5b14587c98d7d3L    # 0.0016528

    mul-double v16, v16, v4

    sub-double v0, v0, v16

    const-wide v16, 0x3ec40c7c652b52eaL    # 2.39E-6

    mul-double v16, v16, v6

    sub-double v0, v0, v16

    const-wide v16, 0x3f39c17225b749aeL    # 3.93E-4

    mul-double v16, v16, v2

    const-wide v18, 0x3fc631f8a0902de0L    # 0.1734

    sub-double v18, v18, v16

    mul-double v16, v10, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v16, v16, v18

    const-wide v18, 0x3fa1df46a2529d39L    # 0.03490658503988659

    mul-double v20, v18, v10

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    const-wide v22, 0x3f613404ea4a8c15L    # 0.0021

    mul-double v20, v20, v22

    add-double v20, v20, v16

    mul-double v16, v14, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    const-wide v22, 0x3fda0902de00d1b7L    # 0.4068

    mul-double v16, v16, v22

    mul-double v22, v18, v14

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    const-wide v24, 0x3f907c84b5dcc63fL    # 0.0161

    mul-double v22, v22, v24

    add-double v22, v22, v16

    sub-double v20, v20, v22

    const-wide v16, 0x3faacee9f37bebd6L    # 0.05235987755982989

    mul-double v16, v16, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    const-wide v22, 0x3f3a36e2eb1c432dL    # 4.0E-4

    mul-double v16, v16, v22

    sub-double v20, v20, v16

    mul-double v18, v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    const-wide v18, 0x3f854c985f06f694L    # 0.0104

    mul-double v16, v16, v18

    add-double v18, v10, v14

    mul-double v18, v18, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    const-wide v24, 0x3f74e3bcd35a8588L    # 0.0051

    mul-double v18, v18, v24

    sub-double v16, v16, v18

    add-double v16, v16, v20

    sub-double v18, v10, v14

    mul-double v18, v18, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    const-wide v20, 0x3f7e4f765fd8adacL    # 0.0074

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v20

    add-double v24, v0, v10

    mul-double v24, v24, v12

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v24, v24, v22

    add-double v24, v24, v18

    sub-double v16, v16, v24

    sub-double v18, v0, v10

    mul-double v18, v18, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v18, v18, v22

    add-double v22, v0, v14

    mul-double v22, v22, v12

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    const-wide v24, 0x3f43a92a30553261L    # 6.0E-4

    mul-double v22, v22, v24

    sub-double v18, v18, v22

    sub-double v16, v16, v18

    sub-double/2addr v0, v14

    mul-double/2addr v0, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v18, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v0, v0, v18

    mul-double v14, v14, v20

    add-double/2addr v14, v10

    mul-double/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    const-wide v12, 0x3f40624dd2f1a9fcL    # 5.0E-4

    mul-double/2addr v10, v12

    add-double/2addr v10, v0

    add-double v10, v10, v16

    const-wide/high16 v0, -0x3fda000000000000L    # -11.0

    cmpg-double v0, v2, v0

    if-gez v0, :cond_0

    const-wide v0, 0x3f4b7e0ac7da1ec5L    # 8.39E-4

    mul-double/2addr v0, v2

    add-double v0, v0, v18

    const-wide v12, 0x3f2da2a836148f03L    # 2.261E-4

    mul-double/2addr v4, v12

    add-double/2addr v4, v0

    const-wide v0, 0x3ee1b88f28268fb7L    # 8.45E-6

    mul-double/2addr v0, v6

    sub-double/2addr v4, v0

    const-wide v0, 0x3e75be4711d12794L    # 8.1E-8

    mul-double/2addr v2, v0

    mul-double/2addr v2, v6

    sub-double/2addr v4, v2

    goto :goto_0

    :cond_0
    const-wide v0, 0x3f315df6555c52e7L    # 2.65E-4

    mul-double/2addr v2, v0

    const-wide v0, -0x40cdc7ef177a7009L    # -2.78E-4

    add-double/2addr v2, v0

    const-wide v0, 0x3f312ba16e7a311fL    # 2.62E-4

    mul-double/2addr v4, v0

    add-double/2addr v4, v2

    :goto_0
    add-double/2addr v8, v10

    sub-double/2addr v8, v4

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v0

    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    div-double v0, p1, v0

    add-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public static optimizeMemory(Landroid/content/Context;)I
    .locals 5

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->gc()V

    new-instance p0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {p0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, p0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iget-wide v2, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    long-to-int p0, v0

    const/16 v0, 0x78

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static parse(Ljava/util/List;)Ljava/util/HashMap;
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gtz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x50

    if-le v2, v5, :cond_4

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static parseAppKeys(Ljava/lang/Iterable;Ljava/util/function/ToIntFunction;)Ljava/util/HashMap;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, ":"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[0-9]{1,6}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_3
    const-string v4, "KEYCODE_[A-Z0-9_]+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1, v3}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v3

    :goto_1
    if-lez v3, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static parseAppScancodes(Ljava/lang/Iterable;)Ljava/util/HashMap;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, ":"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "scan"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[0-9]{1,6}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static pick(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Random;)Ljava/io/File;
    .locals 2

    const-string v0, "sequential"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    move p3, p2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_2

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/2addr p3, v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    rem-int/2addr p3, p1

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/io/File;

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/io/File;

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-le p0, v1, :cond_4

    new-instance p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda21;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda21;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/io/File;

    :goto_1
    return-object v0
.end method

.method public static readStrict(Landroid/util/AtomicFile;)Ljava/util/Set;
    .locals 5

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    add-int/2addr v3, v2

    const v4, 0x8000

    if-gt v3, v4, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Shortcut file too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v1}, Lcom/gathin/tvhome/Sky;->decode(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    return-object v0

    :goto_1
    if-eqz p0, :cond_3

    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v0
.end method

.method public static recent(JJ)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    sub-long/2addr p2, p0

    const-wide/32 p0, 0x240c8400

    cmp-long p0, p2, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static replaceList(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "enabled_accessibility_services"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    if-nez p1, :cond_1

    move-object p1, v2

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0, v0, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static riseAndSet(Ljava/time/LocalDate;DDLjava/time/ZoneId;)[I
    .locals 12

    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    const-wide v2, 0x3f91a099d4b3ac9aL    # 0.01721420632103996

    mul-double/2addr v0, v2

    const-wide v2, 0x3f5e9af5ba2be059L    # 0.001868

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    const-wide v2, 0x3f13a92a30553261L    # 7.5E-5

    add-double/2addr v4, v2

    const-wide v2, 0x3fa06c6583e8576dL    # 0.032077

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v2

    sub-double/2addr v4, v6

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide v8, 0x3f8dee78183f91e6L    # 0.014615

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide v6, 0x3fa4ea28fe260b2dL    # 0.040849

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    sub-double/2addr v4, v8

    const-wide v6, 0x406ca5c28f5c28f6L    # 229.18

    mul-double/2addr v4, v6

    const-wide v6, 0x3fd998288051c9f7L    # 0.399912

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    const-wide v6, 0x3f7c560c7c0f4517L    # 0.006918

    sub-double/2addr v6, v8

    const-wide v8, 0x3fb1fc5cdd50a88fL    # 0.070257

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v8

    add-double/2addr v10, v6

    const-wide v6, 0x3f7bae46cfc829d0L    # 0.006758

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    sub-double/2addr v10, v8

    const-wide v6, 0x3f4db877ab324852L    # 9.07E-4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v10

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide v8, 0x3f661804d9839475L    # 0.002697

    mul-double/2addr v6, v8

    sub-double/2addr v2, v6

    const-wide v6, 0x3f583f91e646f156L    # 0.00148

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    add-double/2addr v0, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    const-wide v6, 0x4056b54fdf3b645aL    # 90.833

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v8

    div-double/2addr v6, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    sub-double/2addr v6, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v6, v0

    if-gtz v0, :cond_1

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpg-double v0, v6, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    invoke-virtual/range {p5 .. p5}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v2

    const/16 v3, 0xc

    const/4 v6, 0x0

    move-object v7, p0

    invoke-virtual {p0, v3, v6}, Ljava/time/LocalDate;->atTime(II)Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    div-int/lit8 v2, v2, 0x3c

    add-double v6, p3, v0

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    mul-double/2addr v6, v8

    const-wide v10, 0x4086800000000000L    # 720.0

    sub-double v6, v10, v6

    sub-double/2addr v6, v4

    int-to-double v2, v2

    add-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    sub-double v0, p3, v0

    mul-double/2addr v0, v8

    sub-double/2addr v10, v0

    sub-double/2addr v10, v4

    add-double/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    filled-new-array {v6, v0}, [I

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static run(Lcom/gathin/tvhome/CardFeature$Step;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-boolean v0, Lcom/gathin/tvhome/Sky;->broken:Z

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/gathin/tvhome/CardFeature$Step;->run()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gathin/tvhome/Sky;->broken:Z

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "module cards switched off for this session: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TvHomeCards"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    return-object p1
.end method

.method public static save(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/gathin/tvhome/Sky;->store(Landroid/content/Context;Z)Landroid/util/AtomicFile;

    move-result-object v1

    invoke-static {v1}, Lcom/gathin/tvhome/Sky;->readStrict(Landroid/util/AtomicFile;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/gathin/tvhome/Sky;->store(Landroid/content/Context;Z)Landroid/util/AtomicFile;

    move-result-object v3

    invoke-static {v3}, Lcom/gathin/tvhome/Sky;->readStrict(Landroid/util/AtomicFile;)Ljava/util/Set;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_3

    invoke-static {p0, v0}, Lcom/gathin/tvhome/Sky;->store(Landroid/content/Context;Z)Landroid/util/AtomicFile;

    move-result-object p2

    invoke-static {p2, v1, p1, v2}, Lcom/gathin/tvhome/Sky;->write(Landroid/util/AtomicFile;Ljava/util/Set;Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0, v2}, Lcom/gathin/tvhome/Sky;->store(Landroid/content/Context;Z)Landroid/util/AtomicFile;

    move-result-object p0

    invoke-static {p0, v3, p1, v0}, Lcom/gathin/tvhome/Sky;->write(Landroid/util/AtomicFile;Ljava/util/Set;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v0, v2

    :cond_2
    return v0

    :cond_3
    invoke-static {p0, v2}, Lcom/gathin/tvhome/Sky;->store(Landroid/content/Context;Z)Landroid/util/AtomicFile;

    move-result-object p2

    invoke-static {p2, v3, p1, v2}, Lcom/gathin/tvhome/Sky;->write(Landroid/util/AtomicFile;Ljava/util/Set;Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_4

    return v0

    :cond_4
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {p0, v0}, Lcom/gathin/tvhome/Sky;->store(Landroid/content/Context;Z)Landroid/util/AtomicFile;

    move-result-object p0

    invoke-static {p0, v1, p1, v0}, Lcom/gathin/tvhome/Sky;->write(Landroid/util/AtomicFile;Ljava/util/Set;Ljava/lang/String;Z)Z

    :cond_5
    return v2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    const-string p1, "TvHome.Library"

    const-string p2, "Keeping unreadable shortcut choices unchanged"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static start(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/high16 v0, 0x10000000

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static store(Landroid/content/Context;Z)Landroid/util/AtomicFile;
    .locals 2

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string p1, "library_home_removed.txt"

    goto :goto_0

    :cond_0
    const-string p1, "library_apps.txt"

    :goto_0
    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static sunLongitude(JD)I
    .locals 8

    long-to-double p0, p0

    const-wide v0, 0x4142b42cc0000000L    # 2451545.5

    sub-double/2addr p0, v0

    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    div-double/2addr p2, v0

    sub-double/2addr p0, p2

    const-wide p2, 0x40e1d5a000000000L    # 36525.0

    div-double/2addr p0, p2

    mul-double p2, p0, p0

    const-wide v0, 0x40e193e19c0ebee0L    # 35999.0503

    mul-double/2addr v0, p0

    const-wide v2, 0x40765877318fc505L    # 357.5291

    add-double/2addr v0, v2

    const-wide v2, 0x3f246f22cd8a61eeL    # 1.559E-4

    mul-double/2addr v2, p2

    sub-double/2addr v0, v2

    const-wide v2, 0x3ea01b2b29a4692bL    # 4.8E-7

    mul-double/2addr v2, p0

    mul-double/2addr v2, p2

    sub-double/2addr v0, v2

    const-wide v2, 0x40e19418a272862fL    # 36000.76983

    mul-double/2addr v2, p0

    const-wide v4, 0x4071877694467382L    # 280.46645

    add-double/2addr v2, v4

    const-wide v4, 0x3f33deda158aabc0L    # 3.032E-4

    mul-double/2addr v4, p2

    add-double/2addr v4, v2

    const-wide v2, 0x3f73bafd976ff3aeL    # 0.004817

    mul-double/2addr v2, p0

    const-wide v6, 0x3ffea2339c0ebee0L    # 1.9146

    sub-double/2addr v6, v2

    const-wide v2, 0x3eed5c31593e5fb7L    # 1.4E-5

    mul-double/2addr p2, v2

    sub-double/2addr v6, p2

    const-wide p2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v2, v0, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    const-wide v6, 0x3f1a79fec99f1ae3L    # 1.01E-4

    mul-double/2addr p0, v6

    const-wide v6, 0x3f94790b84988095L    # 0.019993

    sub-double/2addr v6, p0

    const-wide p0, 0x3fa1df46a2529d39L    # 0.03490658503988659

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr p0, v6

    const-wide v6, 0x3faacee9f37bebd6L    # 0.05235987755982989

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v6, 0x3f330164840e171aL    # 2.9E-4

    mul-double/2addr v0, v6

    add-double/2addr v0, p0

    add-double/2addr v0, v2

    add-double/2addr v0, v4

    mul-double/2addr v0, p2

    const-wide p0, 0x401921fb54442d18L    # 6.283185307179586

    div-double p2, v0, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    mul-double/2addr p2, p0

    sub-double/2addr v0, p2

    const-wide p0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, p0

    const-wide/high16 p0, 0x4018000000000000L    # 6.0

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public static validPackage(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_0

    goto :goto_4

    :cond_0
    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_8

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_2

    if-eqz v3, :cond_1

    return v0

    :cond_1
    move v3, v1

    goto :goto_2

    :cond_2
    const/16 v5, 0x61

    if-lt v4, v5, :cond_3

    const/16 v5, 0x7a

    if-le v4, v5, :cond_6

    :cond_3
    const/16 v5, 0x41

    if-lt v4, v5, :cond_4

    const/16 v5, 0x5a

    if-le v4, v5, :cond_6

    :cond_4
    const/16 v5, 0x5f

    if-ne v4, v5, :cond_5

    goto :goto_1

    :cond_5
    if-nez v3, :cond_7

    const/16 v3, 0x30

    if-lt v4, v3, :cond_7

    const/16 v3, 0x39

    if-le v4, v3, :cond_6

    goto :goto_3

    :cond_6
    :goto_1
    move v3, v0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    return v0

    :cond_8
    xor-int/lit8 p0, v3, 0x1

    return p0

    :cond_9
    :goto_4
    return v0
.end method

.method public static vendorIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f02000b

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :catch_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static write(Landroid/util/AtomicFile;Ljava/util/Set;Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/gathin/tvhome/Sky;->change(Ljava/util/Set;Ljava/lang/String;Z)Ljava/util/HashSet;

    move-result-object p1

    invoke-static {p1}, Lcom/gathin/tvhome/Sky;->encode(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_0
    const-string p0, "TvHome.Library"

    const-string p2, "Could not save shortcut choice"

    invoke-static {p0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method
