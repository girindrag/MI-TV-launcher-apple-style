.class public final synthetic Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gathin/tvhome/LauncherSettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/LauncherSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda30;->f$0:Lcom/gathin/tvhome/LauncherSettingsActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda30;->f$0:Lcom/gathin/tvhome/LauncherSettingsActivity;

    iget-object p2, p1, Lcom/gathin/tvhome/LauncherSettingsActivity;->choices:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "wallpaper_choice"

    invoke-interface {p2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p1}, Lcom/gathin/tvhome/LauncherSettingsActivity;->changed()V

    invoke-virtual {p1}, Lcom/gathin/tvhome/LauncherSettingsActivity;->refresh()V

    return-void
.end method
