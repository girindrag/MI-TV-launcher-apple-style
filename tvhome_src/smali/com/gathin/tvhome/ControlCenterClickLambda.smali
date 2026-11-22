.class public Lcom/gathin/tvhome/ControlCenterClickLambda;
.super Ljava/lang/Object;
.source "ControlCenterClickLambda.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final activity:Lcom/gathin/tvhome/MainActivity;


# direct methods
.method public constructor <init>(Lcom/gathin/tvhome/MainActivity;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/gathin/tvhome/ControlCenterClickLambda;->activity:Lcom/gathin/tvhome/MainActivity;

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 14
    iget-object p1, p0, Lcom/gathin/tvhome/ControlCenterClickLambda;->activity:Lcom/gathin/tvhome/MainActivity;

    invoke-static {p1}, Lcom/gathin/tvhome/TvControlCenter;->openControlCenter(Landroid/app/Activity;)V

    .line 15
    return-void
.end method
