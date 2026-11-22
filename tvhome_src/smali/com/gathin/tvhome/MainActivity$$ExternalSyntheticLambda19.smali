.class public final synthetic Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/gathin/tvhome/MainActivity;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/MainActivity;Landroid/content/Intent;I)V
    .locals 0

    iput p3, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda19;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda19;->f$0:Lcom/gathin/tvhome/MainActivity;

    iput-object p2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda19;->f$1:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda19;->f$1:Landroid/content/Intent;

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda19;->f$0:Lcom/gathin/tvhome/MainActivity;

    iget v2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda19;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    sget v2, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v1, v0}, Lcom/gathin/tvhome/MainActivity;->open(Landroid/content/Intent;)V

    return-void

    :pswitch_0
    sget v2, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    invoke-virtual {v1, v0}, Lcom/gathin/tvhome/MainActivity;->open(Landroid/content/Intent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
