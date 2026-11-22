.class public final synthetic Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/ClockScene;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/content/res/Resources;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/ClockScene;Ljava/io/File;IIILandroid/content/res/Resources;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda2;->f$0:Lcom/gathin/tvhome/ClockScene;

    iput-object p2, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda2;->f$1:Ljava/io/File;

    iput p3, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda2;->f$2:I

    iput p4, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda2;->f$3:I

    iput p5, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda2;->f$4:I

    iput-object p6, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda2;->f$5:Landroid/content/res/Resources;

    iput p7, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda2;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda2;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda2;->f$0:Lcom/gathin/tvhome/ClockScene;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v5, :cond_3

    if-gtz v6, :cond_0

    goto :goto_2

    :cond_0
    move v7, v4

    :goto_0
    mul-int/lit8 v8, v7, 0x2

    div-int v9, v5, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    iget v10, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda2;->f$2:I

    iget v11, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda2;->f$3:I

    if-lt v9, v10, :cond_1

    :try_start_1
    div-int v9, v6, v8

    if-lt v9, v11, :cond_1

    move v7, v8

    goto :goto_0

    :cond_1
    div-int v8, v5, v7

    div-int v9, v6, v7

    const/4 v12, 0x0

    if-lez v8, :cond_2

    if-lez v9, :cond_2

    int-to-long v13, v8

    int-to-long v8, v9

    mul-long/2addr v13, v8

    const-wide/32 v8, 0x802c80

    cmp-long v8, v13, v8

    if-gtz v8, :cond_2

    move v8, v4

    goto :goto_1

    :cond_2
    move v8, v12

    :goto_1
    if-nez v8, :cond_4

    :catch_0
    :cond_3
    :goto_2
    move-object v4, v1

    goto :goto_3

    :cond_4
    iput-boolean v12, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v5, v7

    div-int/2addr v6, v7

    invoke-static {v5, v6, v10, v11}, Lcom/gathin/tvhome/Sky;->coverScale(IIII)[I

    move-result-object v5

    if-eqz v5, :cond_5

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    aget v6, v5, v12

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    aget v4, v5, v4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    :cond_5
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v0

    :goto_3
    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    iget-object v0, v2, Lcom/gathin/tvhome/ClockScene;->handler:Landroid/os/Handler;

    new-instance v7, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda4;

    iget-object v5, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda2;->f$5:Landroid/content/res/Resources;

    iget v6, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda2;->f$6:I

    iget v3, p0, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda2;->f$4:I

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/gathin/tvhome/ClockScene$$ExternalSyntheticLambda4;-><init>(Lcom/gathin/tvhome/ClockScene;ILandroid/graphics/Bitmap;Landroid/content/res/Resources;I)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_4
    return-void
.end method
