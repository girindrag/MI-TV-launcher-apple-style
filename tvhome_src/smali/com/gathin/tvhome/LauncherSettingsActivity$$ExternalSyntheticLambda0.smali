.class public final synthetic Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/gathin/tvhome/LauncherSettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gathin/tvhome/LauncherSettingsActivity;I)V
    .locals 0

    iput p2, p0, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;->f$0:Lcom/gathin/tvhome/LauncherSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    const-string p1, "animations"

    const-string v0, "wallpaper_choice"

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x1040000

    const-string v4, "open_on_start"

    const/high16 v5, 0x10000

    const-string v6, "advanced_effects"

    const-string v7, "android.settings.SETTINGS"

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;->f$0:Lcom/gathin/tvhome/LauncherSettingsActivity;

    iget v11, p0, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v11, :pswitch_data_0

    sget-object p1, Lcom/gathin/tvhome/LauncherSettingsActivity;->DOCK_OPACITIES:[I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "android.settings.DISPLAY_SETTINGS"

    invoke-static {v10, p1}, Lcom/gathin/tvhome/Sky;->intent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v10, p1}, Lcom/gathin/tvhome/LauncherSettingsActivity;->open(Landroid/content/Intent;)V

    return-void

    :pswitch_0
    sget-object p1, Lcom/gathin/tvhome/LauncherSettingsActivity;->DOCK_OPACITIES:[I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v10, p1}, Lcom/gathin/tvhome/LauncherSettingsActivity;->open(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-static {v10, v7}, Lcom/gathin/tvhome/Sky;->intent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v10, p1}, Lcom/gathin/tvhome/LauncherSettingsActivity;->open(Landroid/content/Intent;)V

    :goto_0
    return-void

    :pswitch_1
    sget-object p1, Lcom/gathin/tvhome/LauncherSettingsActivity;->DOCK_OPACITIES:[I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "android.settings.WIFI_SETTINGS"

    invoke-static {v10, p1}, Lcom/gathin/tvhome/Sky;->intent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v10, p1}, Lcom/gathin/tvhome/LauncherSettingsActivity;->open(Landroid/content/Intent;)V

    return-void

    :pswitch_2
    sget-object p1, Lcom/gathin/tvhome/LauncherSettingsActivity;->DOCK_OPACITIES:[I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "CleanYourTV \u00b7 Apple TV interface for Android TV"

    invoke-static {v10, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_3
    sget-object p1, Lcom/gathin/tvhome/LauncherSettingsActivity;->DOCK_OPACITIES:[I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p1, 0x7f100039

    invoke-static {v10, p1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.HOME_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Lcom/gathin/tvhome/LauncherSettingsActivity;->open(Landroid/content/Intent;)V

    return-void

    :pswitch_4
    sget-object p1, Lcom/gathin/tvhome/LauncherSettingsActivity;->DOCK_OPACITIES:[I

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v11, v8

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    aget-object v12, v12, v9

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v11, v12

    goto :goto_2

    :cond_3
    if-nez v11, :cond_1

    invoke-virtual {v5, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/gathin/tvhome/Cards$$ExternalSyntheticLambda3;

    const/4 v1, 0x4

    invoke-direct {p1, v1}, Lcom/gathin/tvhome/Cards$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr p1, v9

    new-array p1, p1, [Ljava/lang/String;

    const v1, 0x7f100059

    invoke-virtual {v10, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v8

    iget-object v1, v10, Lcom/gathin/tvhome/LauncherSettingsActivity;->choices:Landroid/content/SharedPreferences;

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move v4, v8

    move v5, v4

    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_6

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    aget-object v7, v7, v8

    aput-object v7, p1, v6

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    aget-object v4, v4, v9

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v5, v6

    :cond_5
    move v4, v6

    goto :goto_3

    :cond_6
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f10005c

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda27;

    invoke-direct {v4, v10, v0, v8}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda27;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;Ljava/util/ArrayList;I)V

    invoke-virtual {v1, p1, v5, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :pswitch_5
    sget-object p1, Lcom/gathin/tvhome/LauncherSettingsActivity;->DOCK_OPACITIES:[I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.gathin.tvhome.extra.REORDER_FROM_SETTINGS"

    invoke-virtual {p1, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v10, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_6
    iget-object v1, v10, Lcom/gathin/tvhome/LauncherSettingsActivity;->choices:Landroid/content/SharedPreferences;

    const-string v2, "columns"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "dock_opacity"

    const-string v5, "rows_below_dock"

    if-nez v1, :cond_8

    iget-object v1, v10, Lcom/gathin/tvhome/LauncherSettingsActivity;->choices:Landroid/content/SharedPreferences;

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v10, Lcom/gathin/tvhome/LauncherSettingsActivity;->choices:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v10, Lcom/gathin/tvhome/LauncherSettingsActivity;->choices:Landroid/content/SharedPreferences;

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v10, Lcom/gathin/tvhome/LauncherSettingsActivity;->choices:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v10, Lcom/gathin/tvhome/LauncherSettingsActivity;->choices:Landroid/content/SharedPreferences;

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v10, Lcom/gathin/tvhome/LauncherSettingsActivity;->choices:Landroid/content/SharedPreferences;

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    const-string p1, "Already following theme"

    invoke-static {v10, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_6

    :cond_8
    :goto_4
    iget-object v1, v10, Lcom/gathin/tvhome/LauncherSettingsActivity;->choices:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {v10}, Lcom/gathin/tvhome/Config;->load(Landroid/content/Context;)Lcom/gathin/tvhome/Config;

    move-result-object p1

    iget v0, p1, Lcom/gathin/tvhome/Config;->columns:I

    iput v0, v10, Lcom/gathin/tvhome/LauncherSettingsActivity;->columns:I

    iget v0, p1, Lcom/gathin/tvhome/Config;->rowsBelowDock:I

    iput v0, v10, Lcom/gathin/tvhome/LauncherSettingsActivity;->rowsBelowDock:I

    iget v0, p1, Lcom/gathin/tvhome/Config;->dockOpacity:I

    iput v0, v10, Lcom/gathin/tvhome/LauncherSettingsActivity;->dockOpacity:I

    iget-boolean v0, p1, Lcom/gathin/tvhome/Config;->animations:Z

    iput-boolean v0, v10, Lcom/gathin/tvhome/LauncherSettingsActivity;->animations:Z

    if-eqz v0, :cond_9

    iget-boolean p1, p1, Lcom/gathin/tvhome/Config;->advancedEffects:Z

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    move v9, v8

    :goto_5
    iput-boolean v9, v10, Lcom/gathin/tvhome/LauncherSettingsActivity;->advancedEffects:Z

    invoke-virtual {v10}, Lcom/gathin/tvhome/LauncherSettingsActivity;->changed()V

    const-string p1, "Reset to theme configuration"

    invoke-static {v10, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {v10}, Lcom/gathin/tvhome/LauncherSettingsActivity;->refresh()V

    :goto_6
    return-void

    :pswitch_7
    sget-object p1, Lcom/gathin/tvhome/LauncherSettingsActivity;->DOCK_OPACITIES:[I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    invoke-static {v10, p1}, Lcom/gathin/tvhome/Sky;->intent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v10, p1}, Lcom/gathin/tvhome/LauncherSettingsActivity;->open(Landroid/content/Intent;)V

    return-void

    :pswitch_8
    iget-boolean p1, v10, Lcom/gathin/tvhome/LauncherSettingsActivity;->animations:Z

    if-nez p1, :cond_a

    goto :goto_7

    :cond_a
    iget-boolean p1, v10, Lcom/gathin/tvhome/LauncherSettingsActivity;->advancedEffects:Z

    xor-int/2addr p1, v9

    iput-boolean p1, v10, Lcom/gathin/tvhome/LauncherSettingsActivity;->advancedEffects:Z

    iget-object v0, v10, Lcom/gathin/tvhome/LauncherSettingsActivity;->choices:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v6, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v10}, Lcom/gathin/tvhome/LauncherSettingsActivity;->changed()V

    invoke-virtual {v10}, Lcom/gathin/tvhome/LauncherSettingsActivity;->refresh()V

    :goto_7
    return-void

    :pswitch_9
    iget-boolean v0, v10, Lcom/gathin/tvhome/LauncherSettingsActivity;->animations:Z

    xor-int/2addr v0, v9

    iput-boolean v0, v10, Lcom/gathin/tvhome/LauncherSettingsActivity;->animations:Z

    if-nez v0, :cond_b

    iput-boolean v8, v10, Lcom/gathin/tvhome/LauncherSettingsActivity;->advancedEffects:Z

    :cond_b
    iget-object v0, v10, Lcom/gathin/tvhome/LauncherSettingsActivity;->choices:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-boolean v1, v10, Lcom/gathin/tvhome/LauncherSettingsActivity;->animations:Z

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-boolean v0, v10, Lcom/gathin/tvhome/LauncherSettingsActivity;->advancedEffects:Z

    invoke-interface {p1, v6, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v10}, Lcom/gathin/tvhome/LauncherSettingsActivity;->changed()V

    invoke-virtual {v10}, Lcom/gathin/tvhome/LauncherSettingsActivity;->refresh()V

    return-void

    :pswitch_a
    sget-object p1, Lcom/gathin/tvhome/LauncherSettingsActivity;->DOCK_OPACITIES:[I

    invoke-virtual {v10, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    new-instance v4, Ljava/util/ArrayList;

    if-nez p1, :cond_c

    move-object v5, v2

    goto :goto_8

    :cond_c
    new-instance v5, Ljava/io/File;

    const-string v6, "wallpapers"

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_8
    invoke-static {v5}, Lcom/gathin/tvhome/Sky;->images(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-nez p1, :cond_d

    move-object v5, v2

    goto :goto_9

    :cond_d
    new-instance v5, Ljava/io/File;

    const-string v6, "wallpaper.jpg"

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_9
    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {v4, v8, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr p1, v9

    new-array p1, p1, [Ljava/lang/String;

    move v5, v8

    :goto_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_f

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, p1, v5

    add-int/2addr v5, v9

    goto :goto_a

    :cond_f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const v6, 0x7f10009f

    invoke-virtual {v10, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, p1, v5

    iget-object v5, v10, Lcom/gathin/tvhome/LauncherSettingsActivity;->choices:Landroid/content/SharedPreferences;

    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "none"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_d

    :cond_10
    if-nez v0, :cond_11

    goto :goto_c

    :cond_11
    :goto_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v8, v5, :cond_13

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    move v1, v8

    goto :goto_c

    :cond_12
    add-int/2addr v8, v9

    goto :goto_b

    :cond_13
    :goto_c
    move v0, v1

    :goto_d
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f10009d

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v5, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda27;

    invoke-direct {v5, v10, v4, v9}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda27;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;Ljava/util/ArrayList;I)V

    invoke-virtual {v1, p1, v0, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda30;

    invoke-direct {v0, v10}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda30;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;)V

    const v1, 0x7f1000a1

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :pswitch_b
    sget-object p1, Lcom/gathin/tvhome/LauncherSettingsActivity;->DOCK_OPACITIES:[I

    const-string p1, "com.mediatek.tvinput/.hdmi.HDMIInputService/HW6"

    invoke-virtual {v10, p1}, Lcom/gathin/tvhome/LauncherSettingsActivity;->switchInput(Ljava/lang/String;)V

    return-void

    :pswitch_c
    sget-object p1, Lcom/gathin/tvhome/LauncherSettingsActivity;->DOCK_OPACITIES:[I

    const-string p1, "com.mediatek.tvinput/.hdmi.HDMIInputService/HW5"

    invoke-virtual {v10, p1}, Lcom/gathin/tvhome/LauncherSettingsActivity;->switchInput(Ljava/lang/String;)V

    return-void

    :pswitch_d
    sget-object p1, Lcom/gathin/tvhome/LauncherSettingsActivity;->DOCK_OPACITIES:[I

    const-string p1, "com.mediatek.tvinput/.hdmi.HDMIInputService/HW4"

    invoke-virtual {v10, p1}, Lcom/gathin/tvhome/LauncherSettingsActivity;->switchInput(Ljava/lang/String;)V

    return-void

    :pswitch_e
    sget-object p1, Lcom/gathin/tvhome/LauncherSettingsActivity;->DOCK_OPACITIES:[I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "window_animation_scale"

    :try_start_0
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    const v2, 0x3f19999a    # 0.6f

    cmpg-float v0, v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    if-gtz v0, :cond_14

    goto :goto_e

    :cond_14
    move v1, v2

    :goto_e
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "transition_animation_scale"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "animator_duration_scale"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    invoke-virtual {v10}, Lcom/gathin/tvhome/LauncherSettingsActivity;->refreshAnimScaleBadge()V

    cmpl-float p1, v1, v2

    if-nez p1, :cond_15

    const-string p1, "Animations: 0.5x Snappy"

    goto :goto_f

    :catch_0
    move-exception p1

    goto :goto_10

    :cond_15
    const-string p1, "Animations: 1.0x Normal"

    :goto_f
    invoke-static {v10, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_11

    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot change animation scale: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_11
    return-void

    :pswitch_f
    sget-object p1, Lcom/gathin/tvhome/LauncherSettingsActivity;->DOCK_OPACITIES:[I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.tv.action.VIEW_INPUTS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v10, p1}, Lcom/gathin/tvhome/LauncherSettingsActivity;->open(Landroid/content/Intent;)V

    goto :goto_12

    :cond_16
    const p1, 0x7f100055

    invoke-static {v10, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_12
    return-void

    :pswitch_10
    sget-object p1, Lcom/gathin/tvhome/LauncherSettingsActivity;->DOCK_OPACITIES:[I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.SOUND_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v10, p1}, Lcom/gathin/tvhome/LauncherSettingsActivity;->open(Landroid/content/Intent;)V

    goto :goto_13

    :cond_17
    invoke-static {v10, v7}, Lcom/gathin/tvhome/Sky;->intent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v10, p1}, Lcom/gathin/tvhome/LauncherSettingsActivity;->open(Landroid/content/Intent;)V

    :goto_13
    return-void

    :pswitch_11
    sget-object p1, Lcom/gathin/tvhome/LauncherSettingsActivity;->DOCK_OPACITIES:[I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10, v7}, Lcom/gathin/tvhome/Sky;->intent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v10, p1}, Lcom/gathin/tvhome/LauncherSettingsActivity;->open(Landroid/content/Intent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
