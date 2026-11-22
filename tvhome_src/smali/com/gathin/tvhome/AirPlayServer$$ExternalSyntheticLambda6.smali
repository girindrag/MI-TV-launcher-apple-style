.class public final synthetic Lcom/gathin/tvhome/AirPlayServer$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/AirPlayServer;


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/AirPlayServer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/AirPlayServer$$ExternalSyntheticLambda6;->f$0:Lcom/gathin/tvhome/AirPlayServer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayServer$$ExternalSyntheticLambda6;->f$0:Lcom/gathin/tvhome/AirPlayServer;

    invoke-virtual {v0}, Lcom/gathin/tvhome/AirPlayServer;->lambda$startServer$0$com-gathin-tvhome-AirPlayServer()V

    return-void
.end method
