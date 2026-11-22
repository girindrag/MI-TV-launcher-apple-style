.class public final synthetic Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/MainActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/MainActivity;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda0;->f$0:Lcom/gathin/tvhome/MainActivity;

    iput p2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda0;->f$0:Lcom/gathin/tvhome/MainActivity;

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    iget v2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda0;->f$1:I

    iget v3, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v1, v2, v3}, Lcom/gathin/tvhome/AppAdapter;->move(II)V

    iget-object v0, v0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gathin/tvhome/AppAdapter;->positionOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/gathin/tvhome/AppAdapter;->move(II)V

    return-void
.end method
