.class public final Lcom/gathin/tvhome/VolumeKeys$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$audio:Landroid/media/AudioManager;

.field public final synthetic val$direction:I


# direct methods
.method public constructor <init>(Landroid/media/AudioManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/VolumeKeys$1;->val$audio:Landroid/media/AudioManager;

    iput p2, p0, Lcom/gathin/tvhome/VolumeKeys$1;->val$direction:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/gathin/tvhome/VolumeKeys$1;->val$direction:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/gathin/tvhome/VolumeKeys$1;->val$audio:Landroid/media/AudioManager;

    invoke-virtual {v2, v0, v1}, Landroid/media/AudioManager;->adjustVolume(II)V

    sget-object v0, Lcom/gathin/tvhome/Sky;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
