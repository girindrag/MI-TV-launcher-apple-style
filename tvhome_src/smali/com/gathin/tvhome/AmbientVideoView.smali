.class public Lcom/gathin/tvhome/AmbientVideoView;
.super Landroid/view/TextureView;
.source "AmbientVideoView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field private currentPackage:Ljava/lang/String;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0}, Lcom/gathin/tvhome/AmbientVideoView;->init()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0}, Lcom/gathin/tvhome/AmbientVideoView;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0}, Lcom/gathin/tvhome/AmbientVideoView;->init()V

    .line 32
    return-void
.end method

.method private init()V
    .locals 0

    .line 35
    invoke-virtual {p0, p0}, Lcom/gathin/tvhome/AmbientVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 36
    return-void
.end method

.method private startPlayback()V
    .locals 9

    .line 47
    const-string v0, "videos/"

    const-string v1, ".mp4"

    iget-object v2, p0, Lcom/gathin/tvhome/AmbientVideoView;->currentPackage:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/gathin/tvhome/AmbientVideoView;->surface:Landroid/view/Surface;

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 49
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/gathin/tvhome/AmbientVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    .line 50
    iget-object v2, p0, Lcom/gathin/tvhome/AmbientVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 51
    iget-object v2, p0, Lcom/gathin/tvhome/AmbientVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0

    .line 53
    :cond_1
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/gathin/tvhome/AmbientVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 55
    :goto_0
    iget-object v2, p0, Lcom/gathin/tvhome/AmbientVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/gathin/tvhome/AmbientVideoView;->surface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    nop

    .line 59
    :try_start_1
    invoke-virtual {p0}, Lcom/gathin/tvhome/AmbientVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gathin/tvhome/AmbientVideoView;->currentPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 60
    iget-object v3, p0, Lcom/gathin/tvhome/AmbientVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 61
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    nop

    .line 78
    goto/16 :goto_2

    .line 63
    :catchall_0
    move-exception v2

    .line 64
    :try_start_2
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/gathin/tvhome/AmbientVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "videos"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 66
    :cond_2
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/gathin/tvhome/AmbientVideoView;->currentPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 68
    invoke-virtual {p0}, Lcom/gathin/tvhome/AmbientVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/gathin/tvhome/AmbientVideoView;->currentPackage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 70
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 72
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 73
    :cond_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 74
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 76
    :cond_4
    iget-object v0, p0, Lcom/gathin/tvhome/AmbientVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 77
    nop

    .line 80
    :goto_2
    nop

    .line 81
    iget-object v0, p0, Lcom/gathin/tvhome/AmbientVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 82
    iget-object v0, p0, Lcom/gathin/tvhome/AmbientVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 83
    iget-object v0, p0, Lcom/gathin/tvhome/AmbientVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/gathin/tvhome/AmbientVideoView$1;

    invoke-direct {v1, p0}, Lcom/gathin/tvhome/AmbientVideoView$1;-><init>(Lcom/gathin/tvhome/AmbientVideoView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 89
    iget-object v0, p0, Lcom/gathin/tvhome/AmbientVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 91
    :catchall_1
    move-exception v0

    :goto_3
    nop

    .line 92
    return-void

    .line 47
    :cond_5
    :goto_4
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 96
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/gathin/tvhome/AmbientVideoView;->surface:Landroid/view/Surface;

    .line 97
    iget-object p1, p0, Lcom/gathin/tvhome/AmbientVideoView;->currentPackage:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/gathin/tvhome/AmbientVideoView;->startPlayback()V

    goto :goto_0

    .line 100
    :cond_0
    const-string p1, "in.startv.hotstar"

    invoke-virtual {p0, p1}, Lcom/gathin/tvhome/AmbientVideoView;->playForPackage(Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 109
    iget-object p1, p0, Lcom/gathin/tvhome/AmbientVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 111
    :try_start_0
    iget-object p1, p0, Lcom/gathin/tvhome/AmbientVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception p1

    :goto_0
    nop

    .line 113
    iput-object v0, p0, Lcom/gathin/tvhome/AmbientVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/gathin/tvhome/AmbientVideoView;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_1

    .line 117
    :try_start_1
    iget-object p1, p0, Lcom/gathin/tvhome/AmbientVideoView;->surface:Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/view/Surface;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 118
    :catchall_1
    move-exception p1

    :goto_1
    nop

    .line 119
    iput-object v0, p0, Lcom/gathin/tvhome/AmbientVideoView;->surface:Landroid/view/Surface;

    .line 121
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 105
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 125
    return-void
.end method

.method public playForPackage(Ljava/lang/String;)V
    .locals 1

    .line 39
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/gathin/tvhome/AmbientVideoView;->currentPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/gathin/tvhome/AmbientVideoView;->currentPackage:Ljava/lang/String;

    .line 41
    iget-object p1, p0, Lcom/gathin/tvhome/AmbientVideoView;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_1

    .line 42
    invoke-direct {p0}, Lcom/gathin/tvhome/AmbientVideoView;->startPlayback()V

    .line 44
    :cond_1
    return-void

    .line 39
    :cond_2
    :goto_0
    return-void
.end method
