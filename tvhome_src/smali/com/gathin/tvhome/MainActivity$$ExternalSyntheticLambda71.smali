.class public final synthetic Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View$OnFocusChangeListener;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View$OnFocusChangeListener;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda71;->f$0:Landroid/view/View$OnFocusChangeListener;

    iput-object p2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda71;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    sget v0, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda71;->f$0:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda71;->f$1:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
