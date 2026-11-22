.class public final synthetic Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/MainActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/MainActivity;Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda70;->f$0:Lcom/gathin/tvhome/MainActivity;

    iput-object p2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda70;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda70;->f$2:Z

    iput p4, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda70;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda70;->f$0:Lcom/gathin/tvhome/MainActivity;

    iget-object v1, v0, Lcom/gathin/tvhome/MainActivity;->adapter:Lcom/gathin/tvhome/AppAdapter;

    iget-object v2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda70;->f$1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/gathin/tvhome/AppAdapter;->positionOf(Ljava/lang/String;)I

    move-result v1

    iget-boolean v2, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda70;->f$2:Z

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lcom/gathin/tvhome/MainActivity;->libraryFocusPending:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/gathin/tvhome/MainActivity$$ExternalSyntheticLambda70;->f$3:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/gathin/tvhome/MainActivity;->focusTile(I)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/gathin/tvhome/MainActivity;->focusLibrary()V

    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gathin/tvhome/MainActivity;->tilesReady:Z

    invoke-virtual {v0}, Lcom/gathin/tvhome/MainActivity;->startPendingSettingsReorder()V

    invoke-virtual {v0}, Lcom/gathin/tvhome/MainActivity;->showCardPrompt()V

    return-void
.end method
