.class public final synthetic Lcom/gathin/tvhome/AirPlayServer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/AirPlayServer;

.field public final synthetic f$1:Ljava/net/Socket;


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/AirPlayServer;Ljava/net/Socket;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/AirPlayServer$$ExternalSyntheticLambda3;->f$0:Lcom/gathin/tvhome/AirPlayServer;

    iput-object p2, p0, Lcom/gathin/tvhome/AirPlayServer$$ExternalSyntheticLambda3;->f$1:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/gathin/tvhome/AirPlayServer$$ExternalSyntheticLambda3;->f$0:Lcom/gathin/tvhome/AirPlayServer;

    iget-object v1, p0, Lcom/gathin/tvhome/AirPlayServer$$ExternalSyntheticLambda3;->f$1:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Lcom/gathin/tvhome/AirPlayServer;->lambda$handleWebSocket$0$com-gathin-tvhome-AirPlayServer(Ljava/net/Socket;)V

    return-void
.end method
