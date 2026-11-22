.class public Lcom/gathin/tvhome/WatchNextManager$WatchItem;
.super Ljava/lang/Object;
.source "WatchNextManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gathin/tvhome/WatchNextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WatchItem"
.end annotation


# instance fields
.field public intentUri:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public platform:Ljava/lang/String;

.field public progress:I

.field public subtitle:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/gathin/tvhome/WatchNextManager$WatchItem;->title:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/gathin/tvhome/WatchNextManager$WatchItem;->subtitle:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/gathin/tvhome/WatchNextManager$WatchItem;->platform:Ljava/lang/String;

    .line 44
    iput p4, p0, Lcom/gathin/tvhome/WatchNextManager$WatchItem;->progress:I

    .line 45
    iput-object p5, p0, Lcom/gathin/tvhome/WatchNextManager$WatchItem;->packageName:Ljava/lang/String;

    .line 46
    iput-object p6, p0, Lcom/gathin/tvhome/WatchNextManager$WatchItem;->intentUri:Ljava/lang/String;

    .line 47
    return-void
.end method
