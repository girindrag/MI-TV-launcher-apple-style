.class public final synthetic Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda5;->f$0:Lcom/gathin/tvhome/MainActivity;

    return-void
.end method


# virtual methods
.method public final onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    sget p1, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda5;->f$0:Lcom/gathin/tvhome/MainActivity;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    const v0, 0x7f09003a

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/gathin/tvhome/MainActivity;->hideGlass()V

    :goto_0
    return-void
.end method
