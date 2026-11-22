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

    .line 17
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "io.github.jqssun.airplay.START_SERVER"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayClickLambda;->activity:Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {v0, p1}, Lcom/gathin/tvhome/MainActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    :goto_0
    nop

    .line 22
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayClickLambda;->activity:Lcom/gathin/tvhome/MainActivity;

    const-class v1, Lcom/gathin/tvhome/AirPlayMirrorActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 24
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayClickLambda;->activity:Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {v0, p1}, Lcom/gathin/tvhome/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 25
    return-void
.end method
