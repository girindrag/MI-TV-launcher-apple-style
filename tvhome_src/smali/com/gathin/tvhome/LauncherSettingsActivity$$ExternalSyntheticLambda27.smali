.class public final synthetic Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/gathin/tvhome/LauncherSettingsActivity;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/LauncherSettingsActivity;Ljava/util/ArrayList;I)V
    .locals 0

    iput p3, p0, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda27;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda27;->f$0:Lcom/gathin/tvhome/LauncherSettingsActivity;

    iput-object p2, p0, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda27;->f$1:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda27;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda27;->f$0:Lcom/gathin/tvhome/LauncherSettingsActivity;

    iget v3, p0, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda27;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    sget-object v3, Lcom/gathin/tvhome/LauncherSettingsActivity;->DOCK_OPACITIES:[I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const-string v3, "wallpaper_choice"

    if-ne p2, p1, :cond_0

    iget-object p1, v2, Lcom/gathin/tvhome/LauncherSettingsActivity;->choices:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "none"

    invoke-interface {p1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    iget-object p1, v2, Lcom/gathin/tvhome/LauncherSettingsActivity;->choices:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    invoke-virtual {v2}, Lcom/gathin/tvhome/LauncherSettingsActivity;->changed()V

    const p1, 0x7f10009c

    invoke-static {v2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {v2}, Lcom/gathin/tvhome/LauncherSettingsActivity;->refresh()V

    return-void

    :pswitch_0
    sget-object v3, Lcom/gathin/tvhome/LauncherSettingsActivity;->DOCK_OPACITIES:[I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const-string p1, "open_on_start"

    if-nez p2, :cond_1

    iget-object p2, v2, Lcom/gathin/tvhome/LauncherSettingsActivity;->choices:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_1
    const-string v3, "boot"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "boot_count"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "live_tv_boot"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, v2, Lcom/gathin/tvhome/LauncherSettingsActivity;->choices:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v3, 0x1

    sub-int/2addr p2, v3

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    aget-object p2, p2, v3

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    invoke-virtual {v2}, Lcom/gathin/tvhome/LauncherSettingsActivity;->refresh()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
