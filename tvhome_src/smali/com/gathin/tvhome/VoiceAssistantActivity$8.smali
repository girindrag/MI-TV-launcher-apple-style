.class Lcom/gathin/tvhome/VoiceAssistantActivity$8;
.super Ljava/lang/Object;
.source "VoiceAssistantActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gathin/tvhome/VoiceAssistantActivity;->executeVoiceCommand(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;


# direct methods
.method constructor <init>(Lcom/gathin/tvhome/VoiceAssistantActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 464
    iput-object p1, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$8;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$8;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-static {v0}, Lcom/gathin/tvhome/AppleTvScreensaver;->showScreensaver(Landroid/app/Activity;)V

    .line 468
    iget-object v0, p0, Lcom/gathin/tvhome/VoiceAssistantActivity$8;->this$0:Lcom/gathin/tvhome/VoiceAssistantActivity;

    invoke-virtual {v0}, Lcom/gathin/tvhome/VoiceAssistantActivity;->finish()V

    .line 469
    return-void
.end method
