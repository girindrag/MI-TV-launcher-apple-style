.class public Lcom/gathin/tvhome/AirPlayClickLambda;
.super Ljava/lang/Object;
.source "AirPlayClickLambda.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final activity:Lcom/gathin/tvhome/MainActivity;


# direct methods
.method public constructor <init>(Lcom/gathin/tvhome/MainActivity;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/gathin/tvhome/AirPlayClickLambda;->activity:Lcom/gathin/tvhome/MainActivity;

    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 18
    const-string p1, "com.pigeoncast.screen.mirroring.android.tv"

    const/high16 v0, 0x10000000

    :try_start_0
    iget-object v1, p0, Lcom/gathin/tvhome/AirPlayClickLambda;->activity:Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {v1}, Lcom/gathin/tvhome/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    iget-object v1, p0, Lcom/gathin/tvhome/AirPlayClickLambda;->activity:Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {v1}, Lcom/gathin/tvhome/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 22
    :cond_0
    if-nez v1, :cond_1

    .line 23
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 24
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.mirror_universal.receiver.activity.SplashActivity"

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 26
    :cond_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 27
    iget-object p1, p0, Lcom/gathin/tvhome/AirPlayClickLambda;->activity:Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {p1, v1}, Lcom/gathin/tvhome/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-void

    .line 29
    :catch_0
    move-exception p1

    .line 33
    :try_start_1
    iget-object p1, p0, Lcom/gathin/tvhome/AirPlayClickLambda;->activity:Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {p1}, Lcom/gathin/tvhome/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "com.sand.aircasttv"

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 36
    iget-object v1, p0, Lcom/gathin/tvhome/AirPlayClickLambda;->activity:Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {v1, p1}, Lcom/gathin/tvhome/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 37
    return-void

    .line 39
    :catch_1
    move-exception p1

    :cond_2
    nop

    .line 42
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/gathin/tvhome/AirPlayClickLambda;->activity:Lcom/gathin/tvhome/MainActivity;

    const-class v2, Lcom/gathin/tvhome/AirPlayMirrorActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 44
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayClickLambda;->activity:Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {v0, p1}, Lcom/gathin/tvhome/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 45
    return-void
.end method
