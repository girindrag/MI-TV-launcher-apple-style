.class Lcom/gathin/tvhome/AmbientVideoView$1;
.super Ljava/lang/Object;
.source "AmbientVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/AmbientVideoView;->startPlayback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gathin/tvhome/AmbientVideoView;


# direct methods
.method constructor <init>(Lcom/gathin/tvhome/AmbientVideoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/gathin/tvhome/AmbientVideoView$1;->this$0:Lcom/gathin/tvhome/AmbientVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 86
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 87
    return-void
.end method
