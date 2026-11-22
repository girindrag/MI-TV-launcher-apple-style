.class public final Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final getDescriptorMethod:Ljava/lang/Object;

.field public final getModuleMethod:Ljava/lang/Object;

.field public final nameMethod:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/OpReorderer;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;->getModuleMethod:Ljava/lang/Object;

    .line 7
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;->getDescriptorMethod:Ljava/lang/Object;

    .line 8
    new-instance p1, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16$1;

    invoke-direct {p1, p0}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16$1;-><init>(Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;)V

    iput-object p1, p0, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;->nameMethod:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;->getModuleMethod:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;->getDescriptorMethod:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;->nameMethod:Ljava/lang/Object;

    return-void
.end method
