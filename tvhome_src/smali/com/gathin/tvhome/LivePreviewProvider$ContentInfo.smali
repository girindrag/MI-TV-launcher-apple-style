.class public Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;
.super Ljava/lang/Object;
.source "LivePreviewProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gathin/tvhome/LivePreviewProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentInfo"
.end annotation


# instance fields
.field public intentUri:Ljava/lang/String;

.field public metadata:Ljava/lang/String;

.field public posterUri:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;->title:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;->metadata:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;->posterUri:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/gathin/tvhome/LivePreviewProvider$ContentInfo;->intentUri:Ljava/lang/String;

    .line 35
    return-void
.end method
