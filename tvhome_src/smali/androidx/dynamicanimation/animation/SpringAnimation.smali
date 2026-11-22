.class public final Landroidx/dynamicanimation/animation/SpringAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

.field public static final ROTATION:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

.field public static final ROTATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

.field public static final ROTATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

.field public static final SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

.field public static final SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$4;


# instance fields
.field public final mEndListeners:Ljava/util/ArrayList;

.field public mLastFrameTime:J

.field public mMinVisibleChange:F

.field public mPendingPosition:F

.field public final mProperty:Lkotlin/ResultKt;

.field public mRunning:Z

.field public mSpring:Landroidx/dynamicanimation/animation/SpringForce;

.field public final mTarget:Ljava/lang/Object;

.field public final mUpdateListeners:Ljava/util/ArrayList;

.field public mValue:F

.field public mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$4;-><init>(I)V

    sput-object v0, Landroidx/dynamicanimation/animation/SpringAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$4;-><init>(I)V

    sput-object v0, Landroidx/dynamicanimation/animation/SpringAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$4;-><init>(I)V

    sput-object v0, Landroidx/dynamicanimation/animation/SpringAnimation;->ROTATION:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$4;-><init>(I)V

    sput-object v0, Landroidx/dynamicanimation/animation/SpringAnimation;->ROTATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$4;-><init>(I)V

    sput-object v0, Landroidx/dynamicanimation/animation/SpringAnimation;->ROTATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$4;-><init>(I)V

    sput-object v0, Landroidx/dynamicanimation/animation/SpringAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lkotlin/ResultKt;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mTarget:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mProperty:Lkotlin/ResultKt;

    sget-object p1, Landroidx/dynamicanimation/animation/SpringAnimation;->ROTATION:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    if-eq p2, p1, :cond_4

    sget-object p1, Landroidx/dynamicanimation/animation/SpringAnimation;->ROTATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    if-eq p2, p1, :cond_4

    sget-object p1, Landroidx/dynamicanimation/animation/SpringAnimation;->ROTATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    if-ne p2, p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object p1, Landroidx/dynamicanimation/animation/SpringAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    const/high16 v1, 0x3b800000    # 0.00390625f

    if-ne p2, p1, :cond_1

    iput v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinVisibleChange:F

    goto :goto_2

    :cond_1
    sget-object p1, Landroidx/dynamicanimation/animation/SpringAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    if-eq p2, p1, :cond_3

    sget-object p1, Landroidx/dynamicanimation/animation/SpringAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    if-ne p2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinVisibleChange:F

    goto :goto_2

    :cond_3
    :goto_0
    iput v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinVisibleChange:F

    goto :goto_2

    :cond_4
    :goto_1
    const p1, 0x3dcccccd    # 0.1f

    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinVisibleChange:F

    :goto_2
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    return-void
.end method


# virtual methods
.method public final animateToFinalPosition(F)V
    .locals 6

    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    :cond_1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    float-to-double v1, p1

    iput-wide v1, v0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    double-to-float p1, v1

    float-to-double v1, p1

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    float-to-double v3, p1

    cmpl-double v3, v1, v3

    if-gtz v3, :cond_9

    const v3, -0x800001

    float-to-double v4, v3

    cmpg-double v1, v1, v4

    if-ltz v1, :cond_8

    iget v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinVisibleChange:F

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iput-wide v1, v0, Landroidx/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    const-wide v4, 0x404f400000000000L    # 62.5

    mul-double/2addr v1, v4

    iput-wide v1, v0, Landroidx/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_7

    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    if-nez v0, :cond_6

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mProperty:Lkotlin/ResultKt;

    iget-object v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lkotlin/ResultKt;->getValue(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    cmpl-float p1, v0, p1

    if-gtz p1, :cond_5

    cmpg-float p1, v0, v3

    if-ltz p1, :cond_5

    sget-object p1, Landroidx/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Landroidx/dynamicanimation/animation/AnimationHandler;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/AnimationHandler;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/AnimationHandler;

    iget-object v0, p1, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p1, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;

    if-nez v1, :cond_3

    new-instance v1, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;

    iget-object v2, p1, Landroidx/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Landroidx/recyclerview/widget/OpReorderer;

    invoke-direct {v1, v2}, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;-><init>(Landroidx/recyclerview/widget/OpReorderer;)V

    iput-object v1, p1, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;

    :cond_3
    iget-object p1, p1, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;

    iget-object v1, p1, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;->nameMethod:Ljava/lang/Object;

    check-cast v1, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16$1;

    iget-object p1, p1, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;->getDescriptorMethod:Ljava/lang/Object;

    check-cast p1, Landroid/view/Choreographer;

    invoke-virtual {p1, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_4
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Starting value need to be in between min value and max value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_0
    return-void

    :cond_7
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be started on the main thread"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be less than the min value."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be greater than the max value."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final cancel()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->endAnimationInternal()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be canceled on the main thread"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final endAnimationInternal()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    sget-object v1, Landroidx/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroidx/dynamicanimation/animation/AnimationHandler;

    invoke-direct {v2}, Landroidx/dynamicanimation/animation/AnimationHandler;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/AnimationHandler;

    iget-object v2, v1, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v2, p0}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ltz v3, :cond_1

    invoke-virtual {v2, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput-boolean v4, v1, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    :cond_1
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    :goto_0
    iget-object v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    throw v5

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_1
    if-ltz v0, :cond_5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final setPropertyValue(F)V
    .locals 2

    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mProperty:Lkotlin/ResultKt;

    iget-object v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lkotlin/ResultKt;->setValue(Ljava/lang/Object;F)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method
