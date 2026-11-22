.class Lcom/gathin/tvhome/HeySiriVoiceManager$7;
.super Ljava/lang/Object;
.source "HeySiriVoiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/HeySiriVoiceManager;->highlightSuccessExecuting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;


# direct methods
.method constructor <init>(Lcom/gathin/tvhome/HeySiriVoiceManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 527
    iput-object p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$7;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 531
    :try_start_0
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$7;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$202(Lcom/gathin/tvhome/HeySiriVoiceManager;Z)Z

    .line 532
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 533
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 534
    iget-object v1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$7;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    const/16 v2, 0x16

    invoke-static {v1, v2}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$1500(Lcom/gathin/tvhome/HeySiriVoiceManager;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 535
    const-string v1, "#10B981"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 536
    iget-object v1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$7;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$1500(Lcom/gathin/tvhome/HeySiriVoiceManager;I)I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 538
    iget-object v1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$7;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$100(Lcom/gathin/tvhome/HeySiriVoiceManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 539
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$7;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$100(Lcom/gathin/tvhome/HeySiriVoiceManager;)Landroid/view/View;

    move-result-object v0

    const v1, 0x3f933333    # 1.15f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 540
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$7;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$100(Lcom/gathin/tvhome/HeySiriVoiceManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 543
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$7;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$500(Lcom/gathin/tvhome/HeySiriVoiceManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$7;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$1700(Lcom/gathin/tvhome/HeySiriVoiceManager;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    goto :goto_0

    .line 544
    :catch_0
    move-exception v0

    .line 545
    const-string v1, "HeySiriVoiceManager"

    const-string v2, "Error in highlightSuccessExecuting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    :goto_0
    return-void
.end method
