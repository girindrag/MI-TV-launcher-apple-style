.class Lcom/gathin/tvhome/VoiceAssistantActivity$3;
.super Ljava/lang/Object;
.source "VoiceAssistantActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$command:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gathin/tvhome/VoiceAssistantActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 217
    iput-object p2, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$3;->val$command:Ljava/lang/String;

    iput-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$3;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 220
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$3;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$3;->val$command:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->executeVoiceCommand(Ljava/lang/String;)V

    .line 221
    return-void
.end method
