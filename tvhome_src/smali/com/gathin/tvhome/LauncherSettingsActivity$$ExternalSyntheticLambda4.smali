.class public final synthetic Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/gathin/tvhome/LauncherSettingsActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/LauncherSettingsActivity;II)V
    .locals 0

    iput p3, p0, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda4;->f$0:Lcom/gathin/tvhome/LauncherSettingsActivity;

    iput p2, p0, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda4;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda4;->f$1:I

    iget-object v0, p0, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda4;->f$0:Lcom/gathin/tvhome/LauncherSettingsActivity;

    iget v1, p0, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget v1, v0, Lcom/gathin/tvhome/LauncherSettingsActivity;->dockOpacity:I

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, v0, Lcom/gathin/tvhome/LauncherSettingsActivity;->dockOpacity:I

    iget-object v1, v0, Lcom/gathin/tvhome/LauncherSettingsActivity;->choices:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dock_opacity"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v0}, Lcom/gathin/tvhome/LauncherSettingsActivity;->changed()V

    invoke-virtual {v0}, Lcom/gathin/tvhome/LauncherSettingsActivity;->refresh()V

    :goto_0
    return-void

    :pswitch_0
    iget v1, v0, Lcom/gathin/tvhome/LauncherSettingsActivity;->rowsBelowDock:I

    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    iput p1, v0, Lcom/gathin/tvhome/LauncherSettingsActivity;->rowsBelowDock:I

    iget-object v1, v0, Lcom/gathin/tvhome/LauncherSettingsActivity;->choices:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "rows_below_dock"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v0}, Lcom/gathin/tvhome/LauncherSettingsActivity;->changed()V

    invoke-virtual {v0}, Lcom/gathin/tvhome/LauncherSettingsActivity;->refresh()V

    :goto_1
    return-void

    :pswitch_1
    iget v1, v0, Lcom/gathin/tvhome/LauncherSettingsActivity;->columns:I

    if-ne v1, p1, :cond_2

    goto :goto_2

    :cond_2
    iput p1, v0, Lcom/gathin/tvhome/LauncherSettingsActivity;->columns:I

    iget-object v1, v0, Lcom/gathin/tvhome/LauncherSettingsActivity;->choices:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "columns"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v0}, Lcom/gathin/tvhome/LauncherSettingsActivity;->changed()V

    invoke-virtual {v0}, Lcom/gathin/tvhome/LauncherSettingsActivity;->refresh()V

    :goto_2
    return-void

    :pswitch_2
    sget-object v1, Lcom/gathin/tvhome/LauncherSettingsActivity;->DOCK_OPACITIES:[I

    invoke-virtual {v0, p1}, Lcom/gathin/tvhome/LauncherSettingsActivity;->selectCategory(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
