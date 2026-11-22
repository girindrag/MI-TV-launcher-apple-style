.class public final Lcom/gathin/tvhome/MainActivity$2;
.super Landroid/media/tv/TvInputManager$TvInputCallback;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/gathin/tvhome/MainActivity;


# direct methods
.method public constructor <init>(Lcom/gathin/tvhome/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$2;->this$0:Lcom/gathin/tvhome/MainActivity;

    invoke-direct {p0}, Landroid/media/tv/TvInputManager$TvInputCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInputAdded(Ljava/lang/String;)V
    .locals 0

    sget p1, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity$2;->this$0:Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {p1}, Lcom/gathin/tvhome/MainActivity;->updateInputsButton()V

    return-void
.end method

.method public final onInputRemoved(Ljava/lang/String;)V
    .locals 0

    sget p1, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    iget-object p1, p0, Lcom/gathin/tvhome/MainActivity$2;->this$0:Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {p1}, Lcom/gathin/tvhome/MainActivity;->updateInputsButton()V

    return-void
.end method
