.class public Lcom/gathin/tvhome/VoiceClickLambda;
.super Ljava/lang/Object;
.source "VoiceClickLambda.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/gathin/tvhome/VoiceClickLambda;->activity:Landroid/app/Activity;

    .line 11
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 15
    iget-object p1, p0, Lcom/gathin/tvhome/VoiceClickLambda;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/gathin/tvhome/TvVoiceAssistant;->start(Landroid/content/Context;)V

    .line 16
    return-void
.end method
