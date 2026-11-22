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
    const-string p1, "io.github.jqssun.airplay"

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "io.github.jqssun.airplay.START_SERVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lcom/gathin/tvhome/AirPlayClickLambda;->activity:Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {v1, v0}, Lcom/gathin/tvhome/MainActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 24
    const/high16 v0, 0x10000000

    :try_start_1
    iget-object v1, p0, Lcom/gathin/tvhome/AirPlayClickLambda;->activity:Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {v1}, Lcom/gathin/tvhome/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 27
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "io.github.jqssun.airplay.MainActivity"

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 29
    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 30
    iget-object p1, p0, Lcom/gathin/tvhome/AirPlayClickLambda;->activity:Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {p1, v1}, Lcom/gathin/tvhome/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 31
    return-void

    .line 32
    :catch_1
    move-exception p1

    .line 35
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/gathin/tvhome/AirPlayClickLambda;->activity:Lcom/gathin/tvhome/MainActivity;

    const-class v2, Lcom/gathin/tvhome/AirPlayMirrorActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 37
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayClickLambda;->activity:Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {v0, p1}, Lcom/gathin/tvhome/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 38
    return-void
.end method
