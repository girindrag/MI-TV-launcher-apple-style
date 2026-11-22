.class public final synthetic Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/gathin/tvhome/AppAdapter;

    iget-object p1, p1, Lcom/gathin/tvhome/AppAdapter;->listener:Lcom/gathin/tvhome/AppAdapter$TileListener;

    check-cast p1, Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {p1}, Lcom/gathin/tvhome/MainActivity;->onLibraryRequested()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
