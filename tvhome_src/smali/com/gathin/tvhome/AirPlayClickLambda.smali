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

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/gathin/tvhome/AirPlayClickLambda;->activity:Lcom/gathin/tvhome/MainActivity;

    .line 11
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 16
    :try_start_0
    iget-object p1, p0, Lcom/gathin/tvhome/AirPlayClickLambda;->activity:Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {p1}, Lcom/gathin/tvhome/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "io.github.jqssun.airplay"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 19
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayClickLambda;->activity:Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {v0, p1}, Lcom/gathin/tvhome/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-void

    .line 22
    :catch_0
    move-exception p1

    :cond_0
    nop

    .line 24
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayClickLambda;->activity:Lcom/gathin/tvhome/MainActivity;

    const-class v1, Lcom/gathin/tvhome/AirPlayMirrorActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayClickLambda;->activity:Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {v0, p1}, Lcom/gathin/tvhome/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 26
    return-void
.end method
