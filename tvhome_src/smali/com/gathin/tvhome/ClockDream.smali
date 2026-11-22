.class public Lcom/gathin/tvhome/ClockDream;
.super Landroid/service/dreams/DreamService;
.source "SourceFile"


# instance fields
.field public scene:Lcom/gathin/tvhome/ClockScene;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/service/dreams/DreamService;->onAttachedToWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->setInteractive(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/service/dreams/DreamService;->setFullscreen(Z)V

    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->setScreenBright(Z)V

    const v0, 0x7f0b0005

    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->setContentView(I)V

    new-instance v0, Lcom/gathin/tvhome/ClockScene;

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gathin/tvhome/ClockScene;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/gathin/tvhome/ClockDream;->scene:Lcom/gathin/tvhome/ClockScene;

    invoke-virtual {v0, p0}, Lcom/gathin/tvhome/ClockScene;->useHomeWallpaper(Landroid/content/Context;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/gathin/tvhome/ClockDream;->scene:Lcom/gathin/tvhome/ClockScene;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gathin/tvhome/ClockScene;->stop()V

    :cond_0
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDetachedFromWindow()V

    return-void
.end method

.method public final onDreamingStarted()V
    .locals 1

    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    iget-object v0, p0, Lcom/gathin/tvhome/ClockDream;->scene:Lcom/gathin/tvhome/ClockScene;

    invoke-virtual {v0}, Lcom/gathin/tvhome/ClockScene;->start()V

    return-void
.end method

.method public final onDreamingStopped()V
    .locals 1

    iget-object v0, p0, Lcom/gathin/tvhome/ClockDream;->scene:Lcom/gathin/tvhome/ClockScene;

    invoke-virtual {v0}, Lcom/gathin/tvhome/ClockScene;->stop()V

    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    return-void
.end method
