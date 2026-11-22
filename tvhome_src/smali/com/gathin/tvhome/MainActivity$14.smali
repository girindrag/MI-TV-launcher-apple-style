.class public final Lcom/gathin/tvhome/MainActivity$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/gathin/tvhome/MainActivity;

.field public final synthetic val$anchor:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/gathin/tvhome/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$14;->this$0:Lcom/gathin/tvhome/MainActivity;

    iput-object p2, p0, Lcom/gathin/tvhome/MainActivity$14;->val$anchor:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$14;->val$anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v1, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda41;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v0, v2}, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda41;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
