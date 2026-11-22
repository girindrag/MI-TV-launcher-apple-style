.class Lcom/gathin/tvhome/WeatherWidget$1;
.super Ljava/lang/Object;
.source "WeatherWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/WeatherWidget;->bindWeather(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$statsView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/gathin/tvhome/WeatherWidget$1;->val$statsView:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/gathin/tvhome/WeatherWidget$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 20
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 21
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 23
    nop

    .line 24
    nop

    .line 25
    nop

    .line 27
    const/4 v1, 0x6

    const/16 v2, 0xc

    if-lt v0, v1, :cond_0

    if-ge v0, v2, :cond_0

    .line 28
    const-string v0, "\u2600\ufe0f"

    .line 29
    const-string v1, "Sunny Morning"

    .line 30
    const/16 v2, 0x1b

    goto :goto_0

    .line 31
    :cond_0
    const/16 v1, 0x11

    if-lt v0, v2, :cond_1

    if-ge v0, v1, :cond_1

    .line 32
    const-string v0, "\u26c5"

    .line 33
    const-string v1, "Partly Cloudy"

    .line 34
    const/16 v2, 0x1f

    goto :goto_0

    .line 35
    :cond_1
    if-lt v0, v1, :cond_2

    const/16 v1, 0x14

    if-ge v0, v1, :cond_2

    .line 36
    const-string v0, "\ud83c\udf05"

    .line 37
    const-string v1, "Sunset Sky"

    .line 38
    const/16 v2, 0x1c

    goto :goto_0

    .line 40
    :cond_2
    const-string v0, "\u2728"

    .line 41
    const-string v1, "Pleasant & Clear"

    .line 42
    const/16 v2, 0x18

    .line 45
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u00b0C \u00b7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   |   AQI 42 (Good)   |   Humidity 48%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/gathin/tvhome/WeatherWidget$1;->val$statsView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    iget-object v1, p0, Lcom/gathin/tvhome/WeatherWidget$1;->val$statsView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/gathin/tvhome/WeatherWidget$1;->val$statsView:Landroid/widget/TextView;

    const-string v1, "#cbd5e1"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 51
    :catchall_0
    move-exception v0

    :goto_1
    nop

    .line 54
    iget-object v0, p0, Lcom/gathin/tvhome/WeatherWidget$1;->val$handler:Landroid/os/Handler;

    const-wide/32 v1, 0x1b7740

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    return-void
.end method
