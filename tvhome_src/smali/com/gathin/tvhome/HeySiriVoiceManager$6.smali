.class Lcom/gathin/tvhome/HeySiriVoiceManager$6;
.super Ljava/lang/Object;
.source "HeySiriVoiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/HeySiriVoiceManager;->highlightSiriListening()V
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

    .line 489
    iput-object p1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$6;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 494
    :try_start_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 495
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 496
    iget-object v2, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$6;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    const/16 v3, 0x16

    invoke-static {v2, v3}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$1500(Lcom/gathin/tvhome/HeySiriVoiceManager;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 497
    const-string v2, "#38BDF8"

    .line 498
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "#8B5CF6"

    .line 499
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "#EC4899"

    .line 500
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    .line 497
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 502
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 503
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 504
    iget-object v1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$6;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$1500(Lcom/gathin/tvhome/HeySiriVoiceManager;I)I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 506
    iget-object v1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$6;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$100(Lcom/gathin/tvhome/HeySiriVoiceManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 509
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$6;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$202(Lcom/gathin/tvhome/HeySiriVoiceManager;Z)Z

    .line 510
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$6;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    const v2, 0x3f8ccccd    # 1.1f

    invoke-static {v0, v2}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$402(Lcom/gathin/tvhome/HeySiriVoiceManager;F)F

    .line 511
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$6;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v0, v1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$302(Lcom/gathin/tvhome/HeySiriVoiceManager;Z)Z

    .line 512
    iget-object v0, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$6;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v0}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$500(Lcom/gathin/tvhome/HeySiriVoiceManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/gathin/tvhome/HeySiriVoiceManager$6;->this$0:Lcom/gathin/tvhome/HeySiriVoiceManager;

    invoke-static {v1}, Lcom/gathin/tvhome/HeySiriVoiceManager;->access$1600(Lcom/gathin/tvhome/HeySiriVoiceManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    goto :goto_0

    .line 513
    :catch_0
    move-exception v0

    .line 514
    const-string v1, "HeySiriVoiceManager"

    const-string v2, "Error in highlightSiriListening"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 516
    :goto_0
    return-void
.end method
