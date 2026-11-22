.class public final synthetic Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda64;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/MainActivity;

.field public final synthetic f$1:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/MainActivity;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda64;->f$0:Lcom/gathin/tvhome/MainActivity;

    iput-object p2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda64;->f$1:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda64;->f$0:Lcom/gathin/tvhome/MainActivity;

    iget-object v0, p1, Lcom/gathin/tvhome/MainActivity;->cardPrompt:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda64;->f$1:Landroid/app/Dialog;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/gathin/tvhome/MainActivity;->cardPrompt:Landroid/app/Dialog;

    :cond_0
    return-void
.end method
