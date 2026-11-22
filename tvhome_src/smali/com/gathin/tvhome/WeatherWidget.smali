.class public Lcom/gathin/tvhome/WeatherWidget;
.super Ljava/lang/Object;
.source "WeatherWidget.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindWeather(Landroid/widget/TextView;)V
    .locals 2

    .line 13
    if-nez p0, :cond_0

    return-void

    .line 15
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16
    new-instance v1, Lcom/gathin/tvhome/WeatherWidget$1;

    invoke-direct {v1, p0, v0}, Lcom/gathin/tvhome/WeatherWidget$1;-><init>(Landroid/widget/TextView;Landroid/os/Handler;)V

    .line 57
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 58
    return-void
.end method
