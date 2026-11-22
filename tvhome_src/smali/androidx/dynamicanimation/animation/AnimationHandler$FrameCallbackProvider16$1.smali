.class public final Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic this$0:Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16$1;->this$0:Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16$1;->this$0:Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;

    iget-object v1, v1, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;->getModuleMethod:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/OpReorderer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v1, v1, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Ljava/lang/Object;

    check-cast v1, Landroidx/dynamicanimation/animation/AnimationHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v7, 0x0

    :goto_0
    iget-object v8, v1, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v8, :cond_1

    :cond_0
    :goto_1
    move/from16 p2, v7

    goto/16 :goto_5

    :cond_1
    iget-object v9, v1, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v9, v8}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v11, v11, v4

    if-gez v11, :cond_0

    invoke-virtual {v9, v8}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-wide v11, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    const-wide/16 v13, 0x0

    cmp-long v9, v11, v13

    if-nez v9, :cond_3

    iput-wide v2, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    iget v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    invoke-virtual {v8, v9}, Landroidx/dynamicanimation/animation/SpringAnimation;->setPropertyValue(F)V

    goto :goto_1

    :cond_3
    sub-long v16, v2, v11

    iput-wide v2, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    iget v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    const v14, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v9, v9, v14

    if-eqz v9, :cond_4

    iget-object v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget-wide v11, v9, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    iget v11, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    float-to-double v11, v11

    iget v13, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    move/from16 p2, v7

    float-to-double v6, v13

    const-wide/16 v18, 0x2

    div-long v25, v16, v18

    move-object/from16 v18, v9

    move-wide/from16 v19, v11

    move-wide/from16 v21, v6

    move-wide/from16 v23, v25

    invoke-virtual/range {v18 .. v24}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v6

    iget-object v7, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    float-to-double v11, v9

    iput-wide v11, v7, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    iput v14, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    iget v9, v6, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    float-to-double v11, v9

    iget v6, v6, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    float-to-double v14, v6

    move-object/from16 v20, v7

    move-wide/from16 v21, v11

    move-wide/from16 v23, v14

    invoke-virtual/range {v20 .. v26}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v6

    iget v7, v6, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v7, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v6, v6, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v6, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_3

    :cond_4
    move/from16 p2, v7

    iget-object v11, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v6, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    float-to-double v12, v6

    iget v6, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    float-to-double v14, v6

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual/range {v11 .. v17}, Landroidx/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    move-result-object v7

    iget v9, v7, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iput v9, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v7, v7, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    iput v7, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    :goto_3
    iget v7, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    const v9, -0x800001

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iget v11, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    iget-object v12, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v13, v11

    iget-wide v10, v12, Landroidx/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    cmpg-double v10, v13, v10

    if-gez v10, :cond_5

    iget-wide v10, v12, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    double-to-float v10, v10

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v10, v7

    iget-wide v12, v12, Landroidx/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    cmpg-double v7, v10, v12

    if-gez v7, :cond_5

    iget-object v7, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget-wide v10, v7, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    double-to-float v7, v10

    iput v7, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    const/4 v7, 0x0

    iput v7, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    const/4 v10, 0x1

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    :goto_4
    iget v7, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    invoke-static {v6, v9}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v8, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    invoke-virtual {v8, v6}, Landroidx/dynamicanimation/animation/SpringAnimation;->setPropertyValue(F)V

    if-eqz v10, :cond_6

    invoke-virtual {v8}, Landroidx/dynamicanimation/animation/SpringAnimation;->endAnimationInternal()V

    :cond_6
    :goto_5
    add-int/lit8 v7, p2, 0x1

    goto/16 :goto_0

    :cond_7
    iget-boolean v2, v1, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    if-eqz v2, :cond_a

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_6
    if-ltz v2, :cond_9

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    :cond_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_c

    iget-object v2, v1, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;

    if-nez v2, :cond_b

    new-instance v2, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;

    iget-object v3, v1, Landroidx/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Landroidx/recyclerview/widget/OpReorderer;

    invoke-direct {v2, v3}, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;-><init>(Landroidx/recyclerview/widget/OpReorderer;)V

    iput-object v2, v1, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;

    :cond_b
    iget-object v1, v1, Landroidx/dynamicanimation/animation/AnimationHandler;->mProvider:Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;

    iget-object v2, v1, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;->nameMethod:Ljava/lang/Object;

    check-cast v2, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16$1;

    iget-object v1, v1, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;->getDescriptorMethod:Ljava/lang/Object;

    check-cast v1, Landroid/view/Choreographer;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_c
    return-void
.end method
