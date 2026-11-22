.class public final Lcom/gathin/tvhome/LauncherSettingsActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final DOCK_OPACITIES:[I


# instance fields
.field public advancedBadge:Landroid/widget/TextView;

.field public advancedChoice:Landroid/view/View;

.field public advancedEffects:Z

.field public animScaleBadge:Landroid/widget/TextView;

.field public animations:Z

.field public animationsBadge:Landroid/widget/TextView;

.field public animationsChoice:Landroid/view/View;

.field public choices:Landroid/content/SharedPreferences;

.field public final columnChoices:[Landroid/widget/TextView;

.field public columns:I

.field public currentCategory:I

.field public final dockChoices:[Landroid/widget/TextView;

.field public dockOpacity:I

.field public followThemeChoice:Landroid/view/View;

.field public openOnStartBadge:Landroid/widget/TextView;

.field public openOnStartChoice:Landroid/view/View;

.field public final panes:[Landroid/widget/ScrollView;

.field public reorderChoice:Landroid/view/View;

.field public final rowChoices:[Landroid/widget/TextView;

.field public rowsBelowDock:I

.field public final tabs:[Landroid/widget/TextView;

.field public wallpaperChoice:Landroid/view/View;

.field public wallpaperSubtext:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x32

    const/16 v1, 0x1e

    const/16 v2, 0x64

    const/16 v3, 0x46

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/gathin/tvhome/LauncherSettingsActivity;->DOCK_OPACITIES:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->columnChoices:[Landroid/widget/TextView;

    new-array v1, v0, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->rowChoices:[Landroid/widget/TextView;

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->dockChoices:[Landroid/widget/TextView;

    const/4 v0, 0x6

    new-array v1, v0, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->tabs:[Landroid/widget/TextView;

    new-array v0, v0, [Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->panes:[Landroid/widget/ScrollView;

    const/4 v0, 0x0

    iput v0, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->currentCategory:I

    return-void
.end method

.method public static highlightSleepChoice(Landroid/widget/TextView;Z)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    const p1, 0x7f070002

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public static reverseRow([Landroid/widget/TextView;)V
    .locals 3

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final attachPaneBackToSidebar(Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda4;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public final changed()V
    .locals 7

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->choices:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->choices:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    const-string v4, "settings_revision"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    invoke-interface {v0, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final onBackPressed()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->tabs:[Landroid/widget/TextView;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-ne v0, v4, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->currentCategory:I

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void

    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v8, p0

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f0b0000

    invoke-virtual {v8, v0}, Landroid/app/Activity;->setContentView(I)V

    const-string v0, "launcher_settings"

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v8, Lcom/gathin/tvhome/LauncherSettingsActivity;->choices:Landroid/content/SharedPreferences;

    invoke-static/range {p0 .. p0}, Lcom/gathin/tvhome/Config;->load(Landroid/content/Context;)Lcom/gathin/tvhome/Config;

    move-result-object v0

    iget v1, v0, Lcom/gathin/tvhome/Config;->columns:I

    iput v1, v8, Lcom/gathin/tvhome/LauncherSettingsActivity;->columns:I

    iget v1, v0, Lcom/gathin/tvhome/Config;->rowsBelowDock:I

    iput v1, v8, Lcom/gathin/tvhome/LauncherSettingsActivity;->rowsBelowDock:I

    iget v1, v0, Lcom/gathin/tvhome/Config;->dockOpacity:I

    iput v1, v8, Lcom/gathin/tvhome/LauncherSettingsActivity;->dockOpacity:I

    iget-boolean v1, v0, Lcom/gathin/tvhome/Config;->animations:Z

    iput-boolean v1, v8, Lcom/gathin/tvhome/LauncherSettingsActivity;->animations:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/gathin/tvhome/Config;->advancedEffects:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v9

    :goto_0
    iput-boolean v0, v8, Lcom/gathin/tvhome/LauncherSettingsActivity;->advancedEffects:Z

    const v0, 0x7f0900db

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "Smart TV"

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u00b7 tvOS Hub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09004a

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090049

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u00b7 Android "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (API "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900c4

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v10, v8, Lcom/gathin/tvhome/LauncherSettingsActivity;->tabs:[Landroid/widget/TextView;

    aput-object v0, v10, v9

    const v0, 0x7f0900c3

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v10, v2

    const v0, 0x7f0900c6

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x2

    aput-object v0, v10, v1

    const v0, 0x7f0900c5

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v3, 0x3

    aput-object v0, v10, v3

    const v0, 0x7f0900c8

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v4, 0x4

    aput-object v0, v10, v4

    const v0, 0x7f0900c7

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v5, 0x5

    aput-object v0, v10, v5

    const v0, 0x7f09009d

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iget-object v6, v8, Lcom/gathin/tvhome/LauncherSettingsActivity;->panes:[Landroid/widget/ScrollView;

    aput-object v0, v6, v9

    const v0, 0x7f09009c

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    aput-object v0, v6, v2

    const v0, 0x7f09009f

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    aput-object v0, v6, v1

    const v0, 0x7f09009e

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    aput-object v0, v6, v3

    const v0, 0x7f0900a1

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    aput-object v0, v6, v4

    const v0, 0x7f0900a0

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    aput-object v0, v6, v5

    move v0, v9

    :goto_2
    array-length v3, v10

    if-ge v0, v3, :cond_3

    aget-object v3, v10, v0

    new-instance v5, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda4;

    const/4 v6, 0x0

    invoke-direct {v5, v8, v0, v6}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda4;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;II)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget-object v3, v10, v0

    new-instance v5, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v5, v8, v0}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda5;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    aget-object v3, v10, v0

    new-instance v5, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v5, v8, v0}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda6;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v8, v9}, Lcom/gathin/tvhome/LauncherSettingsActivity;->selectCategory(I)V

    const v0, 0x7f090060

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/gathin/tvhome/LauncherSettingsActivity;->attachPaneBackToSidebar(Landroid/view/View;)V

    new-instance v3, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v3, v8, v5}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09005f

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/gathin/tvhome/LauncherSettingsActivity;->attachPaneBackToSidebar(Landroid/view/View;)V

    new-instance v3, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;

    const/16 v5, 0xa

    invoke-direct {v3, v8, v5}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090045

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/gathin/tvhome/LauncherSettingsActivity;->attachPaneBackToSidebar(Landroid/view/View;)V

    new-instance v3, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;

    const/16 v5, 0xe

    invoke-direct {v3, v8, v5}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09005e

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/gathin/tvhome/LauncherSettingsActivity;->attachPaneBackToSidebar(Landroid/view/View;)V

    new-instance v3, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;

    const/16 v5, 0xf

    invoke-direct {v3, v8, v5}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09004f

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/gathin/tvhome/LauncherSettingsActivity;->attachPaneBackToSidebar(Landroid/view/View;)V

    new-instance v3, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;

    const/16 v5, 0x12

    invoke-direct {v3, v8, v5}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090050

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/gathin/tvhome/LauncherSettingsActivity;->attachPaneBackToSidebar(Landroid/view/View;)V

    new-instance v3, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v3, v8, v5}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09004e

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/gathin/tvhome/LauncherSettingsActivity;->attachPaneBackToSidebar(Landroid/view/View;)V

    new-instance v3, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;

    const/4 v5, 0x2

    invoke-direct {v3, v8, v5}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09004d

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/gathin/tvhome/LauncherSettingsActivity;->attachPaneBackToSidebar(Landroid/view/View;)V

    const v3, 0x7f09002a

    invoke-virtual {v8, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v8, Lcom/gathin/tvhome/LauncherSettingsActivity;->animScaleBadge:Landroid/widget/TextView;

    new-instance v3, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;

    const/4 v5, 0x3

    invoke-direct {v3, v8, v5}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\""

    const v3, 0x7f090094

    invoke-virtual {v8, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f090093

    invoke-virtual {v8, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    :try_start_0
    const-string v6, "connectivity"

    invoke-virtual {v8, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v7

    const/4 v11, 0x0

    if-eqz v7, :cond_4

    invoke-virtual {v6, v7}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_4
    move-object v6, v11

    :goto_3
    const-string v7, ""

    if-eqz v6, :cond_6

    :try_start_1
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/LinkAddress;

    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v13

    instance-of v13, v13, Ljava/net/Inet4Address;

    if-eqz v13, :cond_5

    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_6
    move-object v6, v7

    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "wifi"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v11

    :cond_7
    if-eqz v11, :cond_8

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    :cond_8
    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {v7, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_9
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "<unknown ssid>"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    const-string v7, "Wi-Fi"

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Connected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v6, "192.168.1.3"

    :cond_c
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u00b7 5 GHz Active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    const-string v0, "Network Connected"

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "IP: 192.168.1.3"

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    const v0, 0x7f090095

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/gathin/tvhome/LauncherSettingsActivity;->attachPaneBackToSidebar(Landroid/view/View;)V

    new-instance v1, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;

    const/16 v3, 0x10

    invoke-direct {v1, v8, v3}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090092

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/gathin/tvhome/LauncherSettingsActivity;->attachPaneBackToSidebar(Landroid/view/View;)V

    new-instance v1, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;

    const/16 v3, 0x11

    invoke-direct {v1, v8, v3}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090041

    const v1, 0x7f090042

    const v3, 0x7f09003f

    const v5, 0x7f090040

    filled-new-array {v3, v5, v0, v1}, [I

    move-result-object v0

    move v1, v9

    :goto_6
    iget-object v3, v8, Lcom/gathin/tvhome/LauncherSettingsActivity;->columnChoices:[Landroid/widget/TextView;

    if-ge v1, v4, :cond_d

    add-int/lit8 v5, v1, 0x4

    aget v6, v0, v1

    invoke-virtual {v8, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    aput-object v6, v3, v1

    invoke-virtual {v8, v6}, Lcom/gathin/tvhome/LauncherSettingsActivity;->attachPaneBackToSidebar(Landroid/view/View;)V

    aget-object v3, v3, v1

    new-instance v6, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda4;

    const/4 v7, 0x1

    invoke-direct {v6, v8, v5, v7}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda4;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;II)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    const v0, 0x7f0900b0

    const v1, 0x7f0900b1

    const v5, 0x7f0900ae

    const v6, 0x7f0900af

    filled-new-array {v5, v6, v0, v1}, [I

    move-result-object v0

    move v1, v9

    :goto_7
    iget-object v5, v8, Lcom/gathin/tvhome/LauncherSettingsActivity;->rowChoices:[Landroid/widget/TextView;

    if-ge v1, v4, :cond_e

    aget v6, v0, v1

    invoke-virtual {v8, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    aput-object v6, v5, v1

    invoke-virtual {v8, v6}, Lcom/gathin/tvhome/LauncherSettingsActivity;->attachPaneBackToSidebar(Landroid/view/View;)V

    aget-object v5, v5, v1

    new-instance v6, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda4;

    const/4 v7, 0x2

    invoke-direct {v6, v8, v1, v7}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda4;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_e
    const v0, 0x7f090053

    const v1, 0x7f090052

    const v6, 0x7f090051

    const v7, 0x7f090054

    filled-new-array {v6, v7, v0, v1}, [I

    move-result-object v0

    move v1, v9

    :goto_8
    iget-object v6, v8, Lcom/gathin/tvhome/LauncherSettingsActivity;->dockChoices:[Landroid/widget/TextView;

    if-ge v1, v4, :cond_f

    sget-object v7, Lcom/gathin/tvhome/LauncherSettingsActivity;->DOCK_OPACITIES:[I

    aget v7, v7, v1

    aget v11, v0, v1

    invoke-virtual {v8, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    aput-object v11, v6, v1

    invoke-virtual {v8, v11}, Lcom/gathin/tvhome/LauncherSettingsActivity;->attachPaneBackToSidebar(Landroid/view/View;)V

    aget-object v6, v6, v1

    new-instance v11, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda4;

    const/4 v12, 0x3

    invoke-direct {v11, v8, v7, v12}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda4;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;II)V

    invoke-virtual {v6, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {v3}, Lcom/gathin/tvhome/LauncherSettingsActivity;->reverseRow([Landroid/widget/TextView;)V

    invoke-static {v5}, Lcom/gathin/tvhome/LauncherSettingsActivity;->reverseRow([Landroid/widget/TextView;)V

    invoke-static {v6}, Lcom/gathin/tvhome/LauncherSettingsActivity;->reverseRow([Landroid/widget/TextView;)V

    :cond_10
    const v0, 0x7f0900a9

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v8, Lcom/gathin/tvhome/LauncherSettingsActivity;->reorderChoice:Landroid/view/View;

    invoke-virtual {v8, v0}, Lcom/gathin/tvhome/LauncherSettingsActivity;->attachPaneBackToSidebar(Landroid/view/View;)V

    iget-object v0, v8, Lcom/gathin/tvhome/LauncherSettingsActivity;->reorderChoice:Landroid/view/View;

    new-instance v1, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;

    const/16 v3, 0xc

    invoke-direct {v1, v8, v3}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09009b

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v8, Lcom/gathin/tvhome/LauncherSettingsActivity;->openOnStartChoice:Landroid/view/View;

    invoke-virtual {v8, v0}, Lcom/gathin/tvhome/LauncherSettingsActivity;->attachPaneBackToSidebar(Landroid/view/View;)V

    const v0, 0x7f09009a

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lcom/gathin/tvhome/LauncherSettingsActivity;->openOnStartBadge:Landroid/widget/TextView;

    iget-object v0, v8, Lcom/gathin/tvhome/LauncherSettingsActivity;->openOnStartChoice:Landroid/view/View;

    new-instance v1, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;

    const/16 v3, 0xd

    invoke-direct {v1, v8, v3}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900dd

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v8, Lcom/gathin/tvhome/LauncherSettingsActivity;->wallpaperChoice:Landroid/view/View;

    invoke-virtual {v8, v0}, Lcom/gathin/tvhome/LauncherSettingsActivity;->attachPaneBackToSidebar(Landroid/view/View;)V

    const v0, 0x7f0900de

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lcom/gathin/tvhome/LauncherSettingsActivity;->wallpaperSubtext:Landroid/widget/TextView;

    iget-object v0, v8, Lcom/gathin/tvhome/LauncherSettingsActivity;->wallpaperChoice:Landroid/view/View;

    new-instance v1, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;

    const/4 v3, 0x7

    invoke-direct {v1, v8, v3}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09002c

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v8, Lcom/gathin/tvhome/LauncherSettingsActivity;->animationsChoice:Landroid/view/View;

    invoke-virtual {v8, v0}, Lcom/gathin/tvhome/LauncherSettingsActivity;->attachPaneBackToSidebar(Landroid/view/View;)V

    const v0, 0x7f09002b

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lcom/gathin/tvhome/LauncherSettingsActivity;->animationsBadge:Landroid/widget/TextView;

    iget-object v0, v8, Lcom/gathin/tvhome/LauncherSettingsActivity;->animationsChoice:Landroid/view/View;

    new-instance v1, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;

    const/16 v3, 0x8

    invoke-direct {v1, v8, v3}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090027

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v8, Lcom/gathin/tvhome/LauncherSettingsActivity;->advancedChoice:Landroid/view/View;

    invoke-virtual {v8, v0}, Lcom/gathin/tvhome/LauncherSettingsActivity;->attachPaneBackToSidebar(Landroid/view/View;)V

    const v0, 0x7f090026

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lcom/gathin/tvhome/LauncherSettingsActivity;->advancedBadge:Landroid/widget/TextView;

    iget-object v0, v8, Lcom/gathin/tvhome/LauncherSettingsActivity;->advancedChoice:Landroid/view/View;

    new-instance v1, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;

    const/16 v3, 0x9

    invoke-direct {v1, v8, v3}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09005b

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v8, Lcom/gathin/tvhome/LauncherSettingsActivity;->followThemeChoice:Landroid/view/View;

    invoke-virtual {v8, v0}, Lcom/gathin/tvhome/LauncherSettingsActivity;->attachPaneBackToSidebar(Landroid/view/View;)V

    iget-object v0, v8, Lcom/gathin/tvhome/LauncherSettingsActivity;->followThemeChoice:Landroid/view/View;

    new-instance v1, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;

    const/16 v3, 0xb

    invoke-direct {v1, v8, v3}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09005d

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_12

    const-string v1, "window"

    invoke-virtual {v8, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    if-eqz v1, :cond_11

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    move-result v3

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " @ "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%.1f"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Hz \u00b7 Full HD"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_11
    const-string v1, "1920x1080 @ 60.0 Hz \u00b7 Full HD"

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    const v0, 0x7f090048

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_13

    invoke-static/range {p0 .. p0}, Lcom/gathin/tvhome/Sky;->getMemoryStatus(Landroid/content/Context;)Lcom/gathin/tvhome/DeviceCare$MemoryStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gathin/tvhome/DeviceCare$MemoryStatus;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    const v1, 0x7f090047

    invoke-virtual {v8, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_14

    new-instance v3, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, v8, v0, v4}, Lcom/gathin/tvhome/AppAdapter$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v1}, Lcom/gathin/tvhome/LauncherSettingsActivity;->attachPaneBackToSidebar(Landroid/view/View;)V

    :cond_14
    const v0, 0x7f0900bf

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static/range {p0 .. p0}, Lcom/gathin/tvhome/SleepTimer;->getActiveMinutes(Landroid/content/Context;)I

    move-result v1

    if-eqz v0, :cond_16

    if-lez v1, :cond_15

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Active: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " min until auto power off"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_15
    const-string v1, "Auto power off after duration"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_16
    :goto_a
    const v0, 0x7f0900be

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const v0, 0x7f0900bb

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    const v0, 0x7f0900bc

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/TextView;

    const v0, 0x7f0900bd

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/TextView;

    const v0, 0x7f0900ba

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/TextView;

    if-nez v11, :cond_17

    goto/16 :goto_10

    :cond_17
    const-string v0, "sleep_timer_prefs"

    invoke-virtual {v8, v0, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "minutes"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_18

    move v1, v2

    goto :goto_b

    :cond_18
    move v1, v9

    :goto_b
    invoke-static {v11, v1}, Lcom/gathin/tvhome/LauncherSettingsActivity;->highlightSleepChoice(Landroid/widget/TextView;Z)V

    const/16 v1, 0xf

    if-ne v0, v1, :cond_19

    move v1, v2

    goto :goto_c

    :cond_19
    move v1, v9

    :goto_c
    invoke-static {v12, v1}, Lcom/gathin/tvhome/LauncherSettingsActivity;->highlightSleepChoice(Landroid/widget/TextView;Z)V

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1a

    move v1, v2

    goto :goto_d

    :cond_1a
    move v1, v9

    :goto_d
    invoke-static {v13, v1}, Lcom/gathin/tvhome/LauncherSettingsActivity;->highlightSleepChoice(Landroid/widget/TextView;Z)V

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_1b

    move v1, v2

    goto :goto_e

    :cond_1b
    move v1, v9

    :goto_e
    invoke-static {v14, v1}, Lcom/gathin/tvhome/LauncherSettingsActivity;->highlightSleepChoice(Landroid/widget/TextView;Z)V

    const/16 v1, 0x78

    if-ne v0, v1, :cond_1c

    goto :goto_f

    :cond_1c
    move v2, v9

    :goto_f
    invoke-static {v15, v2}, Lcom/gathin/tvhome/LauncherSettingsActivity;->highlightSleepChoice(Landroid/widget/TextView;Z)V

    new-instance v7, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda31;

    const/16 v16, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object v9, v7

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda31;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    invoke-virtual {v11, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda31;

    const/4 v7, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda31;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    invoke-virtual {v12, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda31;

    const/4 v7, 0x2

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda31;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    invoke-virtual {v13, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda31;

    const/4 v7, 0x3

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda31;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    invoke-virtual {v14, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda31;

    const/4 v7, 0x4

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda31;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    invoke-virtual {v15, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v11}, Lcom/gathin/tvhome/LauncherSettingsActivity;->attachPaneBackToSidebar(Landroid/view/View;)V

    invoke-virtual {v8, v12}, Lcom/gathin/tvhome/LauncherSettingsActivity;->attachPaneBackToSidebar(Landroid/view/View;)V

    invoke-virtual {v8, v13}, Lcom/gathin/tvhome/LauncherSettingsActivity;->attachPaneBackToSidebar(Landroid/view/View;)V

    invoke-virtual {v8, v14}, Lcom/gathin/tvhome/LauncherSettingsActivity;->attachPaneBackToSidebar(Landroid/view/View;)V

    invoke-virtual {v8, v15}, Lcom/gathin/tvhome/LauncherSettingsActivity;->attachPaneBackToSidebar(Landroid/view/View;)V

    :goto_10
    const v0, 0x7f0900b2

    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900b3

    invoke-virtual {v8, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0900b4

    invoke-virtual {v8, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_1d

    new-instance v3, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;

    const/4 v4, 0x4

    invoke-direct {v3, v8, v4}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v0}, Lcom/gathin/tvhome/LauncherSettingsActivity;->attachPaneBackToSidebar(Landroid/view/View;)V

    :cond_1d
    if-eqz v1, :cond_1e

    new-instance v0, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;

    const/4 v3, 0x5

    invoke-direct {v0, v8, v3}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v1}, Lcom/gathin/tvhome/LauncherSettingsActivity;->attachPaneBackToSidebar(Landroid/view/View;)V

    :cond_1e
    if-eqz v2, :cond_1f

    new-instance v0, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;

    const/4 v1, 0x6

    invoke-direct {v0, v8, v1}, Lcom/gathin/tvhome/LauncherSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gathin/tvhome/LauncherSettingsActivity;I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v2}, Lcom/gathin/tvhome/LauncherSettingsActivity;->attachPaneBackToSidebar(Landroid/view/View;)V

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/gathin/tvhome/LauncherSettingsActivity;->refresh()V

    const/4 v0, 0x0

    aget-object v0, v10, v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public final open(Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p1, 0x7f100057

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public final refresh()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->columnChoices:[Landroid/widget/TextView;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    iget v3, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->columns:I

    add-int/lit8 v5, v1, 0x4

    if-ne v3, v5, :cond_0

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->rowChoices:[Landroid/widget/TextView;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-object v2, v2, v1

    iget v3, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->rowsBelowDock:I

    if-ne v3, v1, :cond_2

    move v3, v4

    goto :goto_3

    :cond_2
    move v3, v0

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_4
    iget-object v2, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->dockChoices:[Landroid/widget/TextView;

    array-length v3, v2

    if-ge v1, v3, :cond_5

    aget-object v2, v2, v1

    iget v3, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->dockOpacity:I

    sget-object v5, Lcom/gathin/tvhome/LauncherSettingsActivity;->DOCK_OPACITIES:[I

    aget v5, v5, v1

    if-ne v3, v5, :cond_4

    move v3, v4

    goto :goto_5

    :cond_4
    move v3, v0

    :goto_5
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->animationsBadge:Landroid/widget/TextView;

    const v2, 0x7f10005b

    const v3, 0x7f100059

    if-eqz v1, :cond_7

    iget-boolean v4, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->animations:Z

    if-eqz v4, :cond_6

    move v4, v2

    goto :goto_6

    :cond_6
    move v4, v3

    :goto_6
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_7
    iget-object v1, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->advancedBadge:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    iget-boolean v4, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->advancedEffects:Z

    if-eqz v4, :cond_8

    goto :goto_7

    :cond_8
    move v2, v3

    :goto_7
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->advancedChoice:Landroid/view/View;

    iget-boolean v2, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->animations:Z

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->advancedChoice:Landroid/view/View;

    iget-boolean v2, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->animations:Z

    if-eqz v2, :cond_9

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_9
    const v2, 0x3ee66666    # 0.45f

    :goto_8
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_a
    iget-object v1, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->choices:Landroid/content/SharedPreferences;

    const-string v2, "wallpaper_choice"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->wallpaperSubtext:Landroid/widget/TextView;

    if-eqz v2, :cond_d

    const-string v4, "none"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const v1, 0x7f10009f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_b
    if-eqz v1, :cond_c

    goto :goto_9

    :cond_c
    const-string v1, "Apple TV dynamic trending show backdrops"

    :goto_9
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    iget-object v1, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->openOnStartBadge:Landroid/widget/TextView;

    if-eqz v1, :cond_f

    iget-object v2, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->choices:Landroid/content/SharedPreferences;

    const-string v4, "open_on_start"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_e
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_a
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    invoke-virtual {p0}, Lcom/gathin/tvhome/LauncherSettingsActivity;->refreshAnimScaleBadge()V

    return-void
.end method

.method public final refreshAnimScaleBadge()V
    .locals 3

    iget-object v0, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->animScaleBadge:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "window_animation_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iget-object v1, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->animScaleBadge:Landroid/widget/TextView;

    const v2, 0x3f19999a    # 0.6f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    const-string v0, "0.5x Snappy"

    goto :goto_0

    :cond_1
    const-string v0, "1.0x Normal"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v0, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->animScaleBadge:Landroid/widget/TextView;

    const-string v1, "1.0x"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public final selectCategory(I)V
    .locals 4

    iput p1, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->currentCategory:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->tabs:[Landroid/widget/TextView;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v2, p0, Lcom/gathin/tvhome/LauncherSettingsActivity;->panes:[Landroid/widget/ScrollView;

    aget-object v2, v2, v1

    if-ne v1, p1, :cond_1

    move v3, v0

    goto :goto_2

    :cond_1
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final setSleep(ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 3

    invoke-static {p0, p1}, Lcom/gathin/tvhome/SleepTimer;->setTimer(Landroid/content/Context;I)V

    const v0, 0x7f0900bf

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-lez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Active: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " min until auto power off"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v1, "Auto power off after duration"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    invoke-static {p2, v2}, Lcom/gathin/tvhome/LauncherSettingsActivity;->highlightSleepChoice(Landroid/widget/TextView;Z)V

    const/16 p2, 0xf

    if-ne p1, p2, :cond_3

    move p2, v1

    goto :goto_2

    :cond_3
    move p2, v0

    :goto_2
    invoke-static {p3, p2}, Lcom/gathin/tvhome/LauncherSettingsActivity;->highlightSleepChoice(Landroid/widget/TextView;Z)V

    const/16 p2, 0x1e

    if-ne p1, p2, :cond_4

    move p2, v1

    goto :goto_3

    :cond_4
    move p2, v0

    :goto_3
    invoke-static {p4, p2}, Lcom/gathin/tvhome/LauncherSettingsActivity;->highlightSleepChoice(Landroid/widget/TextView;Z)V

    const/16 p2, 0x3c

    if-ne p1, p2, :cond_5

    move p2, v1

    goto :goto_4

    :cond_5
    move p2, v0

    :goto_4
    invoke-static {p5, p2}, Lcom/gathin/tvhome/LauncherSettingsActivity;->highlightSleepChoice(Landroid/widget/TextView;Z)V

    const/16 p2, 0x78

    if-ne p1, p2, :cond_6

    move v0, v1

    :cond_6
    invoke-static {p6, v0}, Lcom/gathin/tvhome/LauncherSettingsActivity;->highlightSleepChoice(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public final switchInput(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/media/tv/TvContract;->buildChannelUriForPassthroughInput(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Input switcher: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
