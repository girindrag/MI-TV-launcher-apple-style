.class public final synthetic Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/LauncherSettingsActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/LauncherSettingsActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda6;->f$0:Lcom/gathin/tvhome/LauncherSettingsActivity;

    iput p2, p0, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda6;->f$1:I

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    sget-object p1, Lcom/gathin/tvhome/LauncherSettingsActivity;->DOCK_OPACITIES:[I

    iget-object p1, p0, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda6;->f$0:Lcom/gathin/tvhome/LauncherSettingsActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-nez p3, :cond_1

    const/16 p3, 0x16

    if-ne p2, p3, :cond_1

    iget-object p1, p1, Lcom/gathin/tvhome/LauncherSettingsActivity;->panes:[Landroid/widget/ScrollView;

    iget p2, p0, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda6;->f$1:I

    aget-object p1, p1, p2

    const/16 p2, 0x82

    invoke-virtual {p1, p2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    if-eq p2, p1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
