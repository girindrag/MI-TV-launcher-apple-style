.class public final synthetic Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda63;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View$OnClickListener;

.field public final synthetic f$1:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda62;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda63;->f$0:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda63;->f$1:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    sget p1, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda63;->f$0:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda63;->f$1:Landroid/widget/TextView;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
