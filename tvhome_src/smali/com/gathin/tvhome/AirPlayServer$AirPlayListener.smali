.class public interface abstract Lcom/gathin/tvhome/AirPlayServer$AirPlayListener;
.super Ljava/lang/Object;
.source "AirPlayServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gathin/tvhome/AirPlayServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AirPlayListener"
.end annotation


# virtual methods
.method public abstract onClientConnected(Ljava/lang/String;)V
.end method

.method public abstract onMirrorStopped()V
.end method

.method public abstract onPhotoReceived(Landroid/graphics/Bitmap;)V
.end method

.method public abstract onRemoteKeyReceived(Ljava/lang/String;)V
.end method

.method public abstract onScreenFrameReceived(Landroid/graphics/Bitmap;)V
.end method

.method public abstract onVideoReceived(Ljava/lang/String;)V
.end method
