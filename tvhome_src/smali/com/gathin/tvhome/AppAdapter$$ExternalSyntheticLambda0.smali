.class public final synthetic Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iget-object v1, p0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iget v2, p0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    sget p1, Lcom/gathin/tvhome/MainActivity;->COLUMNS:I

    check-cast v1, Lcom/gathin/tvhome/MainActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, p1}, Lcom/gathin/tvhome/MainActivity;->open(Landroid/content/Intent;)V

    return-void

    :pswitch_0
    sget-object v2, Lcom/gathin/tvhome/LauncherSettingsActivity;->DOCK_OPACITIES:[I

    check-cast v1, Lcom/gathin/tvhome/LauncherSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/gathin/tvhome/Sky;->optimizeMemory(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1}, Lcom/gathin/tvhome/Sky;->getMemoryStatus(Landroid/content/Context;)Lcom/gathin/tvhome/DeviceCare$MemoryStatus;

    move-result-object v3

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/gathin/tvhome/DeviceCare$MemoryStatus;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u00b7 Boosted!"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Samsung Device Care: Freed "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " MB RAM!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_1
    check-cast v1, Lcom/gathin/tvhome/AppAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/gathin/tvhome/AppAdapter$Entry;

    iget-object v2, v0, Lcom/gathin/tvhome/AppAdapter$Entry;->pkg:Ljava/lang/String;

    const/high16 v3, 0x10000000

    iget-object v4, v1, Lcom/gathin/tvhome/AppAdapter;->ctx:Landroid/content/Context;

    if-eqz v2, :cond_2

    const-string v5, "com.android.tv.settings"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.xiaomi.gtv.settings"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/gathin/tvhome/MainActivity;

    invoke-direct {p1, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.gathin.tvhome.action.LAUNCHER_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    iget v5, v0, Lcom/gathin/tvhome/AppAdapter$Entry;->kind:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/gathin/tvhome/HomeSettingsActivity;

    invoke-direct {p1, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/gathin/tvhome/AppAdapter$Entry;->component:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x10200000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, v1, Lcom/gathin/tvhome/AppAdapter;->leanbackPackages:Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    iget-object v6, v1, Lcom/gathin/tvhome/AppAdapter;->launchActions:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_5

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v3, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_5

    move-object v5, v3

    :cond_5
    instance-of v3, v4, Lcom/gathin/tvhome/MainActivity;

    if-eqz v3, :cond_6

    move-object v3, v4

    check-cast v3, Lcom/gathin/tvhome/MainActivity;

    invoke-static {v3, v5}, Lcom/gathin/tvhome/ChildLockManager;->handleOpen(Lcom/gathin/tvhome/MainActivity;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_6

    return-void

    :cond_6
    :try_start_0
    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-boolean v3, v1, Lcom/gathin/tvhome/AppAdapter;->cinematic:Z

    if-eqz v3, :cond_7

    const-string v3, "last_opened"

    invoke-virtual {v4, v3, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v3, v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_7
    iget-boolean v2, v1, Lcom/gathin/tvhome/AppAdapter;->advancedEffects:Z

    if-eqz v2, :cond_8

    iget-boolean v1, v1, Lcom/gathin/tvhome/AppAdapter;->reducedMotion:Z

    if-nez v1, :cond_8

    instance-of v1, v4, Landroid/app/Activity;

    if-eqz v1, :cond_8

    move-object v1, v4

    check-cast v1, Landroid/app/Activity;

    const/high16 v2, 0x7f010000

    const v3, 0x7f010001

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, v0, Lcom/gathin/tvhome/AppAdapter$Entry;->label:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f100006

    invoke-virtual {v4, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_8
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
