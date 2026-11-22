.class public abstract Lcom/gathin/tvhome/SleepTimer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final handler:Landroid/os/Handler;

.field public static sleepRunnable:Lcom/gathin/tvhome/SleepTimer$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/gathin/tvhome/SleepTimer;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/gathin/tvhome/SleepTimer;->sleepRunnable:Lcom/gathin/tvhome/SleepTimer$$ExternalSyntheticLambda0;

    return-void
.end method

.method public static getActiveMinutes(Landroid/content/Context;)I
    .locals 6

    const-string v0, "sleep_timer_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "target_ms"

    const-wide/16 v2, 0x0

    invoke-interface {p0, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-gtz p0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v2, v0

    const-wide/32 v0, 0xea60

    div-long/2addr v2, v0

    const-wide/16 v0, 0x1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static setTimer(Landroid/content/Context;I)V
    .locals 11

    const-string v0, "sleep_timer_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v2, Lcom/gathin/tvhome/SleepTimer;->sleepRunnable:Lcom/gathin/tvhome/SleepTimer$$ExternalSyntheticLambda0;

    sget-object v3, Lcom/gathin/tvhome/SleepTimer;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    sput-object v2, Lcom/gathin/tvhome/SleepTimer;->sleepRunnable:Lcom/gathin/tvhome/SleepTimer$$ExternalSyntheticLambda0;

    :cond_0
    const-string v2, "minutes"

    const-string v4, "target_ms"

    if-gtz p1, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-wide/16 v5, 0x0

    invoke-interface {p1, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "Sleep Timer turned Off"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    int-to-long v7, p1

    const-wide/32 v9, 0xea60

    mul-long/2addr v7, v9

    add-long/2addr v5, v7

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Sleep Timer set for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " minutes"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    new-instance p1, Lcom/gathin/tvhome/SleepTimer$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/gathin/tvhome/SleepTimer$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    sput-object p1, Lcom/gathin/tvhome/SleepTimer;->sleepRunnable:Lcom/gathin/tvhome/SleepTimer$$ExternalSyntheticLambda0;

    invoke-virtual {v3, p1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
