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

    .line 15
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayClickLambda;->activity:Lcom/gathin/tvhome/MainActivity;

    const-class v1, Lcom/gathin/tvhome/AirPlayMirrorActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayClickLambda;->activity:Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {v0, p1}, Lcom/gathin/tvhome/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 17
    return-void
.end method
