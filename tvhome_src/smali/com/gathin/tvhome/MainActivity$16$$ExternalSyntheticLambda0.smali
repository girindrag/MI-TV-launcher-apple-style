.class public final synthetic Lcom/gathin/tvhome/MainActivity$16$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/gathin/tvhome/MainActivity$16$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$16$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/gathin/tvhome/MainActivity$16$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/gathin/tvhome/MainActivity$16$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/gathin/tvhome/MainActivity$16$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$16$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity$16$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/gathin/tvhome/AppLibraryDialog;

    iget-object v2, v1, Lcom/gathin/tvhome/AppLibraryDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/gathin/tvhome/AppLibraryDialog;->close()V

    :try_start_0
    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$16$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v0}, Lcom/gathin/tvhome/AppLibraryDialog;->label(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f100006

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$16$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/gathin/tvhome/MainActivity$16;

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity$16$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/gathin/tvhome/MainActivity$16$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/gathin/tvhome/MainActivity$16;->this$0:Ljava/lang/Object;

    check-cast v3, Lcom/gathin/tvhome/MainActivity;

    iget-boolean v4, v3, Lcom/gathin/tvhome/MainActivity;->showStats:Z

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/gathin/tvhome/MainActivity;->stats:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v3, v3, Lcom/gathin/tvhome/MainActivity;->statsBg:Landroid/os/Handler;

    if-ne v3, v1, :cond_0

    iget-object v0, v0, Lcom/gathin/tvhome/MainActivity$16;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/gathin/tvhome/MainActivity;

    iget-object v0, v0, Lcom/gathin/tvhome/MainActivity;->stats:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
