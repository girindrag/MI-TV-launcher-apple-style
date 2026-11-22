.class Lcom/gathin/tvhome/VoiceAssistantActivity$4;
.super Ljava/lang/Object;
.source "VoiceAssistantActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/VoiceAssistantActivity;->addChip(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

.field final synthetic val$chip:Landroid/widget/TextView;

.field final synthetic val$focusedBg:Landroid/graphics/drawable/GradientDrawable;

.field final synthetic val$normalBg:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method constructor <init>(Lcom/gathin/tvhome/VoiceAssistantActivity;Landroid/widget/TextView;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 253
    iput-object p2, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$4;->val$chip:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$4;->val$focusedBg:Landroid/graphics/drawable/GradientDrawable;

    iput-object p4, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$4;->val$normalBg:Landroid/graphics/drawable/GradientDrawable;

    iput-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$4;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 256
    if-eqz p2, :cond_0

    .line 257
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$4;->val$chip:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$4;->val$focusedBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 258
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$4;->val$chip:Landroid/widget/TextView;

    const-string p2, "#0F172A"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$4;->val$chip:Landroid/widget/TextView;

    const p2, 0x3f8ccccd    # 1.1f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setScaleX(F)V

    .line 260
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$4;->val$chip:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setScaleY(F)V

    goto :goto_0

    .line 262
    :cond_0
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$4;->val$chip:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$4;->val$normalBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 263
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$4;->val$chip:Landroid/widget/TextView;

    const-string p2, "#E2E8F0"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 264
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$4;->val$chip:Landroid/widget/TextView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setScaleX(F)V

    .line 265
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$4;->val$chip:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setScaleY(F)V

    .line 267
    :goto_0
    return-void
.end method
