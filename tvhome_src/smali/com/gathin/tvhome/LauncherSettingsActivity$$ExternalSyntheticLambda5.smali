.class public final synthetic Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/LauncherSettingsActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/LauncherSettingsActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda5;->f$0:Lcom/gathin/tvhome/LauncherSettingsActivity;

    iput p2, p0, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    sget-object p1, Lcom/gathin/tvhome/LauncherSettingsActivity;->DOCK_OPACITIES:[I

    iget-object p1, p0, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda5;->f$0:Lcom/gathin/tvhome/LauncherSettingsActivity;

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda5;->f$1:I

    invoke-virtual {p1, p2}, Lcom/gathin/tvhome/LauncherSettingsActivity;->selectCategory(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method
