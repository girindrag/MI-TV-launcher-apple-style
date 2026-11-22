.class public final synthetic Lcom/gathin/tvhome/WallpaperPlayer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/WallpaperPlayer;

.field public final synthetic f$1:Landroid/graphics/Bitmap;

.field public final synthetic f$2:Ljava/io/File;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/WallpaperPlayer;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/WallpaperPlayer$$ExternalSyntheticLambda3;->f$0:Lcom/gathin/tvhome/WallpaperPlayer;

    iput-object p2, p0, Lcom/gathin/tvhome/WallpaperPlayer$$ExternalSyntheticLambda3;->f$1:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/gathin/tvhome/WallpaperPlayer$$ExternalSyntheticLambda3;->f$2:Ljava/io/File;

    iput-object p4, p0, Lcom/gathin/tvhome/WallpaperPlayer$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    iput-wide p5, p0, Lcom/gathin/tvhome/WallpaperPlayer$$ExternalSyntheticLambda3;->f$4:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/gathin/tvhome/WallpaperPlayer$$ExternalSyntheticLambda3;->f$0:Lcom/gathin/tvhome/WallpaperPlayer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gathin/tvhome/WallpaperPlayer;->loading:Z

    iget-boolean v1, v0, Lcom/gathin/tvhome/WallpaperPlayer;->closed:Z

    iget-object v2, p0, Lcom/gathin/tvhome/WallpaperPlayer$$ExternalSyntheticLambda3;->f$1:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lcom/gathin/tvhome/WallpaperPlayer;->active:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/gathin/tvhome/WallpaperPlayer$$ExternalSyntheticLambda3;->f$2:Ljava/io/File;

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/gathin/tvhome/WallpaperPlayer;->files:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Skipping unreadable image: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TvHome.Wallpaper"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/gathin/tvhome/WallpaperPlayer;->update()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Lcom/gathin/tvhome/WallpaperPlayer;->show(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gathin/tvhome/WallpaperPlayer;->displayed:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gathin/tvhome/WallpaperPlayer;->showCaption(Z)V

    iget-object v1, v0, Lcom/gathin/tvhome/WallpaperPlayer;->displayed:Ljava/lang/String;

    iget-object v2, p0, Lcom/gathin/tvhome/WallpaperPlayer$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x0

    iget-wide v3, p0, Lcom/gathin/tvhome/WallpaperPlayer$$ExternalSyntheticLambda3;->f$4:J

    cmp-long v1, v3, v1

    if-nez v1, :cond_4

    :cond_2
    iget-object v1, v0, Lcom/gathin/tvhome/WallpaperPlayer;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "image"

    iget-object v0, v0, Lcom/gathin/tvhome/WallpaperPlayer;->displayed:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "changed"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    :goto_1
    return-void
.end method
