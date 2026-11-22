.class public abstract Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/Continuation;
.implements Ljava/io/Serializable;


# instance fields
.field public final completion:Lkotlin/coroutines/Continuation;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;->completion:Lkotlin/coroutines/Continuation;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/EmptyCoroutineContext;

    move-result-object p1

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Coroutines with restricted suspension must have EmptyCoroutineContext"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
.end method

.method public final getContext()Lkotlin/coroutines/EmptyCoroutineContext;
    .locals 1

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    return-object v0
.end method

.method public abstract invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public releaseIntercepted()V
    .locals 0

    return-void
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 3

    move-object v0, p0

    :goto_0
    check-cast v0, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;

    iget-object v1, v0, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;->completion:Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlin/ResultKt;->checkNotNull(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v0, p1}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v2, :cond_0

    return-void

    :catchall_0
    move-exception p1

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v1, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;->completion:Lkotlin/coroutines/Continuation;

    if-nez v0, :cond_1

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kotlin.jvm.functions."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "renderLambdaToString(this)"

    invoke-static {v0, v1}, Lkotlin/ResultKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;->toString$kotlin$coroutines$jvm$internal$BaseContinuationImpl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final toString$kotlin$coroutines$jvm$internal$BaseContinuationImpl()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Continuation at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lkotlin/coroutines/jvm/internal/DebugMetadata;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/jvm/internal/DebugMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-interface {v1}, Lkotlin/coroutines/jvm/internal/DebugMetadata;->v()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_e

    const/4 v3, -0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "label"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    check-cast v5, Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    move-object v5, v2

    :goto_0
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    sub-int/2addr v5, v4

    goto :goto_2

    :catch_0
    move v5, v3

    :goto_2
    if-gez v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v1}, Lkotlin/coroutines/jvm/internal/DebugMetadata;->l()[I

    move-result-object v3

    aget v3, v3, v5

    :goto_3
    sget-object v4, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever;->cache:Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;

    sget-object v5, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever;->notOnJava9:Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;

    if-nez v4, :cond_4

    :try_start_1
    const-class v4, Ljava/lang/Class;

    const-string v6, "getModule"

    invoke-virtual {v4, v6, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v7, "java.lang.Module"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getDescriptor"

    invoke-virtual {v6, v7, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const-string v8, "java.lang.module.ModuleDescriptor"

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "name"

    invoke-virtual {v7, v8, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-instance v8, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;

    invoke-direct {v8, v4, v6, v7}, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    sput-object v8, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever;->cache:Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v8

    goto :goto_4

    :catch_1
    sput-object v5, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever;->cache:Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;

    move-object v4, v5

    :cond_4
    :goto_4
    if-ne v4, v5, :cond_5

    goto :goto_8

    :cond_5
    iget-object v5, v4, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;->getModuleMethod:Ljava/lang/Object;

    check-cast v5, Ljava/lang/reflect/Method;

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_5

    :cond_6
    move-object v5, v2

    :goto_5
    if-nez v5, :cond_7

    goto :goto_8

    :cond_7
    iget-object v6, v4, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;->getDescriptorMethod:Ljava/lang/Object;

    check-cast v6, Ljava/lang/reflect/Method;

    if-eqz v6, :cond_8

    invoke-virtual {v6, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_6

    :cond_8
    move-object v5, v2

    :goto_6
    if-nez v5, :cond_9

    goto :goto_8

    :cond_9
    iget-object v4, v4, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;->nameMethod:Ljava/lang/Object;

    check-cast v4, Ljava/lang/reflect/Method;

    if-eqz v4, :cond_a

    invoke-virtual {v4, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_7

    :cond_a
    move-object v4, v2

    :goto_7
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_b

    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    :cond_b
    :goto_8
    if-nez v2, :cond_c

    invoke-interface {v1}, Lkotlin/coroutines/jvm/internal/DebugMetadata;->c()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lkotlin/coroutines/jvm/internal/DebugMetadata;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_9
    new-instance v4, Ljava/lang/StackTraceElement;

    invoke-interface {v1}, Lkotlin/coroutines/jvm/internal/DebugMetadata;->m()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lkotlin/coroutines/jvm/internal/DebugMetadata;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v2, v5, v1, v3}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v2, v4

    :goto_a
    if-eqz v2, :cond_d

    goto :goto_b

    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Debug metadata version mismatch. Expected: 1, got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Please update the Kotlin standard library."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
