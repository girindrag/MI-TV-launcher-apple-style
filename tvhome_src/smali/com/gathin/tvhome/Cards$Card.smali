.class public final Lcom/gathin/tvhome/Cards$Card;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final accent:I

.field public final appLabel:Ljava/lang/String;

.field public final caption:Ljava/lang/String;

.field public final component:Landroid/content/ComponentName;

.field public final digest:Ljava/lang/String;

.field public final label:Ljava/lang/String;

.field public final pkg:Ljava/lang/String;

.field public final state:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gathin/tvhome/Cards$Card;->pkg:Ljava/lang/String;

    iput-object p2, p0, Lcom/gathin/tvhome/Cards$Card;->component:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/gathin/tvhome/Cards$Card;->label:Ljava/lang/String;

    iput-object p4, p0, Lcom/gathin/tvhome/Cards$Card;->appLabel:Ljava/lang/String;

    iput-object p5, p0, Lcom/gathin/tvhome/Cards$Card;->caption:Ljava/lang/String;

    iput p6, p0, Lcom/gathin/tvhome/Cards$Card;->accent:I

    iput-object p7, p0, Lcom/gathin/tvhome/Cards$Card;->digest:Ljava/lang/String;

    iput p8, p0, Lcom/gathin/tvhome/Cards$Card;->state:I

    return-void
.end method
