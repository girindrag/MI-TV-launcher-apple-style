.class public Lcom/gathin/tvhome/ClockActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field public scene:Lcom/gathin/tvhome/ClockScene;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/gathin/tvhome/ClockActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/gathin/tvhome/ClockActivity;->finish()V

    :cond_0
    return v0
.end method

.method public final finish()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0005

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x806

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    new-instance p1, Lcom/gathin/tvhome/ClockScene;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/gathin/tvhome/ClockScene;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/gathin/tvhome/ClockActivity;->scene:Lcom/gathin/tvhome/ClockScene;

    invoke-virtual {p1, p0}, Lcom/gathin/tvhome/ClockScene;->useHomeWallpaper(Landroid/content/Context;)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/gathin/tvhome/ClockActivity;->scene:Lcom/gathin/tvhome/ClockScene;

    invoke-virtual {v0}, Lcom/gathin/tvhome/ClockScene;->stop()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/gathin/tvhome/ClockActivity;->finish()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/gathin/tvhome/ClockActivity;->scene:Lcom/gathin/tvhome/ClockScene;

    invoke-virtual {v0}, Lcom/gathin/tvhome/ClockScene;->start()V

    return-void
.end method
