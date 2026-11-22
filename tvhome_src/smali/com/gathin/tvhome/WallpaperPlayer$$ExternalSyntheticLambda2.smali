.class public final synthetic Lcom/gathin/tvhome/WallpaperPlayer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/WallpaperPlayer;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/WallpaperPlayer;Ljava/io/File;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/WallpaperPlayer$$ExternalSyntheticLambda2;->f$0:Lcom/gathin/tvhome/WallpaperPlayer;

    iput-object p2, p0, Lcom/gathin/tvhome/WallpaperPlayer$$ExternalSyntheticLambda2;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/gathin/tvhome/WallpaperPlayer$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-wide p4, p0, Lcom/gathin/tvhome/WallpaperPlayer$$ExternalSyntheticLambda2;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v7, p0, Lcom/gathin/tvhome/WallpaperPlayer$$ExternalSyntheticLambda2;->f$0:Lcom/gathin/tvhome/WallpaperPlayer;

    iget-object v3, p0, Lcom/gathin/tvhome/WallpaperPlayer$$ExternalSyntheticLambda2;->f$1:Ljava/io/File;

    invoke-virtual {v7, v3}, Lcom/gathin/tvhome/WallpaperPlayer;->decode(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v8, Lcom/gathin/tvhome/WallpaperPlayer$$ExternalSyntheticLambda3;

    iget-object v4, p0, Lcom/gathin/tvhome/WallpaperPlayer$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-wide v5, p0, Lcom/gathin/tvhome/WallpaperPlayer$$ExternalSyntheticLambda2;->f$3:J

    move-object v0, v8

    move-object v1, v7

    invoke-direct/range {v0 .. v6}, Lcom/gathin/tvhome/WallpaperPlayer$$ExternalSyntheticLambda3;-><init>(Lcom/gathin/tvhome/WallpaperPlayer;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;J)V

    iget-object v0, v7, Lcom/gathin/tvhome/WallpaperPlayer;->root:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
