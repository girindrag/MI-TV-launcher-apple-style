.class public final Lcom/gathin/tvhome/BellDrawable$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/gathin/tvhome/BellDrawable;


# direct methods
.method public constructor <init>(Lcom/gathin/tvhome/BellDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/gathin/tvhome/BellDrawable$1;->this$0:Lcom/gathin/tvhome/BellDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/gathin/tvhome/BellDrawable$1;->this$0:Lcom/gathin/tvhome/BellDrawable;

    const/4 v0, 0x0

    iput v0, p1, Lcom/gathin/tvhome/BellDrawable;->clapperAngle:F

    iput v0, p1, Lcom/gathin/tvhome/BellDrawable;->angle:F

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
