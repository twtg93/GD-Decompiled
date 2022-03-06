.class public Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge$a;
    }
.end annotation


# static fields
.field private static a:Landroid/view/Choreographer;

.field private static b:Landroid/view/Choreographer$FrameCallback;

.field private static c:Ljava/util/concurrent/locks/Lock;

.field private static d:I

.field private static e:Lcom/everyplay/Everyplay/c/i;

.field public static everyplayLiveFaceCamImpl:Lcom/everyplay/Everyplay/d/b;

.field private static f:J

.field private static g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->a:Landroid/view/Choreographer;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->c:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x0

    sput v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->d:I

    new-instance v0, Lcom/everyplay/Everyplay/c/i;

    invoke-direct {v0}, Lcom/everyplay/Everyplay/c/i;-><init>()V

    sput-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->f:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/concurrent/locks/Lock;
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->c:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic a(ZLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->b(ZLjava/lang/String;)V

    return-void
.end method

.method public static addItemToCurrentSession(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/everyplay/Everyplay/c/a/d;->valueOf(Ljava/lang/String;)Lcom/everyplay/Everyplay/c/a/d;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/c/a/g;->a(Lcom/everyplay/Everyplay/c/a/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static addKeyChangeListener(Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge$a;)V
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->g:Ljava/util/ArrayList;

    :cond_0
    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method static synthetic b()Landroid/view/Choreographer;
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->a:Landroid/view/Choreographer;

    return-object v0
.end method

.method private static b(ZLjava/lang/String;)V
    .locals 6

    sget v0, Lcom/everyplay/Everyplay/e/d;->a:I

    sget v1, Lcom/everyplay/Everyplay/e/d$b;->c:I

    if-ne v0, v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->f:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    sget-wide v2, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calling \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" failed, waiting device settings query to complete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->f:J

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget v0, Lcom/everyplay/Everyplay/e/d;->a:I

    sget v1, Lcom/everyplay/Everyplay/e/d$b;->b:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Skipping "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", not supported on this device"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c()Landroid/view/Choreographer$FrameCallback;
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->b:Landroid/view/Choreographer$FrameCallback;

    return-object v0
.end method

.method public static varargs callStaticBooleanMethod(ZLjava/lang/String;[Ljava/lang/Object;)Z
    .locals 2

    sget v0, Lcom/everyplay/Everyplay/e/d;->a:I

    sget v1, Lcom/everyplay/Everyplay/e/d$b;->d:I

    if-ne v0, v1, :cond_0

    invoke-static {p1, p2}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->callStaticBooleanMethodNative(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->b(ZLjava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs native callStaticBooleanMethodNative(Ljava/lang/String;[Ljava/lang/Object;)Z
.end method

.method public static varargs callStaticFloatMethod(ZLjava/lang/String;[Ljava/lang/Object;)F
    .locals 2

    sget v0, Lcom/everyplay/Everyplay/e/d;->a:I

    sget v1, Lcom/everyplay/Everyplay/e/d$b;->d:I

    if-ne v0, v1, :cond_0

    invoke-static {p1, p2}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->callStaticFloatMethodNative(Ljava/lang/String;[Ljava/lang/Object;)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->b(ZLjava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs native callStaticFloatMethodNative(Ljava/lang/String;[Ljava/lang/Object;)F
.end method

.method public static varargs callStaticIntMethod(ZLjava/lang/String;[Ljava/lang/Object;)I
    .locals 2

    sget v0, Lcom/everyplay/Everyplay/e/d;->a:I

    sget v1, Lcom/everyplay/Everyplay/e/d$b;->d:I

    if-ne v0, v1, :cond_0

    invoke-static {p1, p2}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->callStaticIntMethodNative(Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->b(ZLjava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs native callStaticIntMethodNative(Ljava/lang/String;[Ljava/lang/Object;)I
.end method

.method public static varargs callStaticLongMethod(ZLjava/lang/String;[Ljava/lang/Object;)J
    .locals 2

    sget v0, Lcom/everyplay/Everyplay/e/d;->a:I

    sget v1, Lcom/everyplay/Everyplay/e/d$b;->d:I

    if-ne v0, v1, :cond_0

    invoke-static {p1, p2}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->callStaticLongMethodNative(Ljava/lang/String;[Ljava/lang/Object;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0, p1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->b(ZLjava/lang/String;)V

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static varargs native callStaticLongMethodNative(Ljava/lang/String;[Ljava/lang/Object;)J
.end method

.method public static varargs callStaticObjectMethod(ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget v0, Lcom/everyplay/Everyplay/e/d;->a:I

    sget v1, Lcom/everyplay/Everyplay/e/d$b;->d:I

    if-ne v0, v1, :cond_0

    invoke-static {p1, p2}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->callStaticObjectMethodNative(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->b(ZLjava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs native callStaticObjectMethodNative(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public static varargs callStaticStringMethod(ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    sget v0, Lcom/everyplay/Everyplay/e/d;->a:I

    sget v1, Lcom/everyplay/Everyplay/e/d$b;->d:I

    if-ne v0, v1, :cond_0

    invoke-static {p1, p2}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->callStaticStringMethodNative(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->b(ZLjava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs native callStaticStringMethodNative(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public static varargs callStaticVoidMethod(ZZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->f()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge$1;

    invoke-direct {v1, p2, p3, p0}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge$1;-><init>(Ljava/lang/String;[Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/everyplay/Everyplay/e/d;->a:I

    sget v1, Lcom/everyplay/Everyplay/e/d$b;->d:I

    if-ne v0, v1, :cond_1

    invoke-static {p2, p3}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->callStaticVoidMethodNative(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p2}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->b(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public static varargs native callStaticVoidMethodNative(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public static closeSession()V
    .locals 1

    invoke-static {}, Lcom/everyplay/Everyplay/c/a/g;->d()Lcom/everyplay/Everyplay/c/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/c/a/c;->d()V

    :cond_0
    return-void
.end method

.method public static configureSurface()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    :try_start_0
    new-instance v0, Lcom/everyplay/Everyplay/encoding/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/everyplay/Everyplay/encoding/d;-><init>(Lcom/everyplay/Everyplay/encoding/b;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/encoding/d;->a(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/everyplay/Everyplay/encoding/d;->c:Z

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/encoding/d;->a()Z

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/encoding/d;->b()Z

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/encoding/d;->f()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public static containsKey(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    iget-object v0, v0, Lcom/everyplay/Everyplay/c/i;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static createLink()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->f()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge$4;

    invoke-direct {v1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge$4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->g()V

    goto :goto_0
.end method

.method public static createSurface()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/everyplay/Everyplay/c/a/g;->c()Lcom/everyplay/Everyplay/c/a/c;

    move-result-object v0

    iget-object v2, v0, Lcom/everyplay/Everyplay/c/a/c;->h:Lcom/everyplay/Everyplay/encoding/b;

    if-eqz v2, :cond_1

    iget-object v0, v2, Lcom/everyplay/Everyplay/encoding/b;->f:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, v2, Lcom/everyplay/Everyplay/encoding/b;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, v2, Lcom/everyplay/Everyplay/encoding/b;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/encoding/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/encoding/d;->c()Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic d()V
    .locals 0

    invoke-static {}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->g()V

    return-void
.end method

.method static synthetic e()V
    .locals 0

    invoke-static {}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->h()V

    return-void
.end method

.method private static f()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static faceCamGraphicsInitialized()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->everyplayLiveFaceCamImpl:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->everyplayLiveFaceCamImpl:Lcom/everyplay/Everyplay/d/b;

    sget-boolean v1, Lcom/everyplay/Everyplay/d/b;->l:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/everyplay/Everyplay/d/b;->k:Landroid/app/Activity;

    invoke-static {}, Lcom/everyplay/Everyplay/communication/c;->b()Landroid/app/Activity;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3}, Lcom/everyplay/Everyplay/d/b;->a(Z)V

    sput-boolean v3, Lcom/everyplay/Everyplay/d/b;->l:Z

    :cond_0
    return-void
.end method

.method public static faceCamGraphicsUninitialized()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->everyplayLiveFaceCamImpl:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->everyplayLiveFaceCamImpl:Lcom/everyplay/Everyplay/d/b;

    sget-boolean v1, Lcom/everyplay/Everyplay/d/b;->l:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/everyplay/Everyplay/d/b;->c:Z

    sput-boolean v1, Lcom/everyplay/Everyplay/d/b;->l:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2, v2}, Lcom/everyplay/Everyplay/d/b;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public static faceCamStartRecording()V
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x1

    sget-object v1, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->everyplayLiveFaceCamImpl:Lcom/everyplay/Everyplay/d/b;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->everyplayLiveFaceCamImpl:Lcom/everyplay/Everyplay/d/b;

    iget v2, v1, Lcom/everyplay/Everyplay/d/b;->r:I

    sget v3, Lcom/everyplay/Everyplay/b;->c:I

    if-eq v2, v3, :cond_0

    iget-boolean v2, v1, Lcom/everyplay/Everyplay/d/b;->c:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/everyplay/Everyplay/d/b;->f:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/everyplay/Everyplay/c/a/g;->d()Lcom/everyplay/Everyplay/c/a/c;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v3, v1, Lcom/everyplay/Everyplay/d/b;->p:Lcom/everyplay/Everyplay/c/a/c;

    if-eq v2, v3, :cond_2

    iput-object v2, v1, Lcom/everyplay/Everyplay/d/b;->p:Lcom/everyplay/Everyplay/c/a/c;

    invoke-static {}, Lcom/everyplay/Everyplay/d/b;->k()Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/everyplay/Everyplay/d/b;->a(Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;Lcom/everyplay/Everyplay/c/a/c;)V

    :cond_2
    :try_start_0
    iget-boolean v3, v1, Lcom/everyplay/Everyplay/d/b;->t:Z

    if-nez v3, :cond_3

    iget v3, v1, Lcom/everyplay/Everyplay/d/b;->r:I

    sget v4, Lcom/everyplay/Everyplay/b;->a:I

    if-ne v3, v4, :cond_8

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    iget-object v3, v1, Lcom/everyplay/Everyplay/d/b;->a:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->unlock()V

    :cond_4
    new-instance v3, Landroid/media/MediaRecorder;

    invoke-direct {v3}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v3, v1, Lcom/everyplay/Everyplay/d/b;->d:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_9

    iget-object v3, v1, Lcom/everyplay/Everyplay/d/b;->d:Landroid/media/MediaRecorder;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :goto_2
    iget-object v3, v1, Lcom/everyplay/Everyplay/d/b;->d:Landroid/media/MediaRecorder;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v3, v1, Lcom/everyplay/Everyplay/d/b;->d:Landroid/media/MediaRecorder;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    iget-object v3, v1, Lcom/everyplay/Everyplay/d/b;->d:Landroid/media/MediaRecorder;

    const v4, 0xac44

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    if-nez v0, :cond_5

    iget-object v3, v1, Lcom/everyplay/Everyplay/d/b;->d:Landroid/media/MediaRecorder;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    iget-object v3, v1, Lcom/everyplay/Everyplay/d/b;->d:Landroid/media/MediaRecorder;

    iget v4, v1, Lcom/everyplay/Everyplay/d/b;->o:I

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    iget-object v3, v1, Lcom/everyplay/Everyplay/d/b;->d:Landroid/media/MediaRecorder;

    iget-object v4, v1, Lcom/everyplay/Everyplay/d/b;->i:Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->width:I

    iget-object v5, v1, Lcom/everyplay/Everyplay/d/b;->i:Landroid/hardware/Camera$Size;

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    :cond_5
    iget-object v3, v1, Lcom/everyplay/Everyplay/d/b;->d:Landroid/media/MediaRecorder;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    if-eqz v0, :cond_a

    sget-object v0, Lcom/everyplay/Everyplay/c/a/d;->f:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v2, v0}, Lcom/everyplay/Everyplay/c/a/c;->a(Lcom/everyplay/Everyplay/c/a/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/everyplay/Everyplay/d/b;->e:Ljava/lang/String;

    :goto_3
    iget-object v0, v1, Lcom/everyplay/Everyplay/d/b;->d:Landroid/media/MediaRecorder;

    iget-object v2, v1, Lcom/everyplay/Everyplay/d/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/everyplay/Everyplay/d/b;->d:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, v1, Lcom/everyplay/Everyplay/d/b;->d:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/everyplay/Everyplay/d/b;->f:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v2, v1, Lcom/everyplay/Everyplay/d/b;->d:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/everyplay/Everyplay/d/b;->d:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/everyplay/Everyplay/d/b;->d:Landroid/media/MediaRecorder;

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to start Live FaceCam recorder. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget-object v2, v1, Lcom/everyplay/Everyplay/d/b;->d:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcom/everyplay/Everyplay/d/b;->d:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    iput-object v6, v1, Lcom/everyplay/Everyplay/d/b;->d:Landroid/media/MediaRecorder;

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to initialize Live FaceCam recorder. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_9
    :try_start_3
    iget-object v3, v1, Lcom/everyplay/Everyplay/d/b;->d:Landroid/media/MediaRecorder;

    iget-object v4, v1, Lcom/everyplay/Everyplay/d/b;->a:Landroid/hardware/Camera;

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    iget-object v3, v1, Lcom/everyplay/Everyplay/d/b;->d:Landroid/media/MediaRecorder;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget-object v3, v1, Lcom/everyplay/Everyplay/d/b;->d:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    goto/16 :goto_2

    :cond_a
    sget-object v0, Lcom/everyplay/Everyplay/c/a/d;->d:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v2, v0}, Lcom/everyplay/Everyplay/c/a/c;->a(Lcom/everyplay/Everyplay/c/a/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/everyplay/Everyplay/d/b;->e:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :cond_b
    const-string v0, "No session"

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->c(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static faceCamStopRecording()V
    .locals 2

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->everyplayLiveFaceCamImpl:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->everyplayLiveFaceCamImpl:Lcom/everyplay/Everyplay/d/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/d/b;->b(Z)V

    :cond_0
    return-void
.end method

.method public static faceCamUpdateCameraPreviewMatrixAndDimensions()V
    .locals 9

    const/4 v0, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    sget-object v4, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->everyplayLiveFaceCamImpl:Lcom/everyplay/Everyplay/d/b;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->everyplayLiveFaceCamImpl:Lcom/everyplay/Everyplay/d/b;

    iget-boolean v5, v4, Lcom/everyplay/Everyplay/d/b;->c:Z

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/everyplay/Everyplay/d/b;->b:Landroid/graphics/SurfaceTexture;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/everyplay/Everyplay/d/b;->b:Landroid/graphics/SurfaceTexture;

    iget-object v6, v4, Lcom/everyplay/Everyplay/d/b;->h:[F

    invoke-virtual {v5, v6}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    iget-object v5, v4, Lcom/everyplay/Everyplay/d/b;->k:Landroid/app/Activity;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/everyplay/Everyplay/d/b;->k:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    iget-object v5, v4, Lcom/everyplay/Everyplay/d/b;->h:[F

    iget-object v6, v4, Lcom/everyplay/Everyplay/d/b;->h:[F

    aget v6, v6, v3

    mul-float/2addr v6, v7

    aput v6, v5, v3

    iget-object v5, v4, Lcom/everyplay/Everyplay/d/b;->h:[F

    const/16 v6, 0xc

    iget-object v7, v4, Lcom/everyplay/Everyplay/d/b;->h:[F

    const/16 v8, 0xc

    aget v7, v7, v8

    cmpl-float v7, v7, v1

    if-nez v7, :cond_3

    :goto_0
    aput v0, v5, v6

    :cond_0
    :goto_1
    const-string v0, "faceCamCameraPreviewTransformMatrix"

    iget-object v1, v4, Lcom/everyplay/Everyplay/d/b;->h:[F

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setFloatArray(Ljava/lang/String;[F)V

    :cond_1
    iget-object v0, v4, Lcom/everyplay/Everyplay/d/b;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, v4, Lcom/everyplay/Everyplay/d/b;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iput-object v0, v4, Lcom/everyplay/Everyplay/d/b;->j:Landroid/hardware/Camera$Size;

    iget-object v0, v4, Lcom/everyplay/Everyplay/d/b;->k:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, v4, Lcom/everyplay/Everyplay/d/b;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    move v0, v2

    :goto_2
    const-string v1, "faceCamCameraPreviewAspectRatio"

    iget-object v5, v4, Lcom/everyplay/Everyplay/d/b;->j:Landroid/hardware/Camera$Size;

    iget v5, v5, Landroid/hardware/Camera$Size;->width:I

    iget-object v4, v4, Lcom/everyplay/Everyplay/d/b;->j:Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    const/4 v6, 0x1

    invoke-static {v5, v4, v6}, Lcom/everyplay/Everyplay/d/b;->a(IIZ)F

    move-result v4

    invoke-static {v1, v4}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setFloat(Ljava/lang/String;F)V

    const-string v1, "faceCamCameraPreviewIsPortrait"

    if-nez v0, :cond_7

    move v0, v2

    :goto_3
    invoke-static {v1, v0}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_4
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v5, v4, Lcom/everyplay/Everyplay/d/b;->h:[F

    iget-object v6, v4, Lcom/everyplay/Everyplay/d/b;->h:[F

    aget v6, v6, v2

    mul-float/2addr v6, v7

    aput v6, v5, v2

    iget-object v5, v4, Lcom/everyplay/Everyplay/d/b;->h:[F

    const/16 v6, 0xd

    iget-object v7, v4, Lcom/everyplay/Everyplay/d/b;->h:[F

    const/16 v8, 0xd

    aget v7, v7, v8

    cmpl-float v7, v7, v1

    if-nez v7, :cond_5

    :goto_5
    aput v0, v5, v6

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_5

    :cond_6
    move v0, v3

    goto :goto_2

    :cond_7
    move v0, v3

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to update Live FaceCam preview matrix and dimensions: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->c(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static faceCamUpdateTexture()V
    .locals 3

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->everyplayLiveFaceCamImpl:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->everyplayLiveFaceCamImpl:Lcom/everyplay/Everyplay/d/b;

    iget-object v1, v0, Lcom/everyplay/Everyplay/d/b;->b:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/everyplay/Everyplay/d/b;->c:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v0, v0, Lcom/everyplay/Everyplay/d/b;->b:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Everyplay Live FaceCam failed to update camera texture: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static g()V
    .locals 2

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->a:Landroid/view/Choreographer;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    sput-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->a:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge$3;

    invoke-direct {v0}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge$3;-><init>()V

    sput-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->b:Landroid/view/Choreographer$FrameCallback;

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->a:Landroid/view/Choreographer;

    sget-object v1, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->b:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    invoke-virtual {v0, p0, p1}, Lcom/everyplay/Everyplay/c/i;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getBooleanArray(Ljava/lang/String;[Z)[Z
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    invoke-virtual {v0, p0, p1}, Lcom/everyplay/Everyplay/c/i;->a(Ljava/lang/String;[Z)[Z

    move-result-object v0

    return-object v0
.end method

.method public static getByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    invoke-virtual {v0, p0, p1}, Lcom/everyplay/Everyplay/c/i;->a(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getFloat(Ljava/lang/String;F)F
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    invoke-virtual {v0, p0, p1}, Lcom/everyplay/Everyplay/c/i;->a(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static getFloatArray(Ljava/lang/String;[F)[F
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    invoke-virtual {v0, p0, p1}, Lcom/everyplay/Everyplay/c/i;->a(Ljava/lang/String;[F)[F

    move-result-object v0

    return-object v0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    invoke-virtual {v0, p0, p1}, Lcom/everyplay/Everyplay/c/i;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getIntArray(Ljava/lang/String;[I)[I
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    invoke-virtual {v0, p0, p1}, Lcom/everyplay/Everyplay/c/i;->a(Ljava/lang/String;[I)[I

    move-result-object v0

    return-object v0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 3

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    invoke-virtual {v0, p0, p1, p2}, Lcom/everyplay/Everyplay/c/i;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLongArray(Ljava/lang/String;[J)[J
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    invoke-virtual {v0, p0, p1}, Lcom/everyplay/Everyplay/c/i;->a(Ljava/lang/String;[J)[J

    move-result-object v0

    return-object v0
.end method

.method public static getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    iget-object v0, v0, Lcom/everyplay/Everyplay/c/i;->a:Ljava/util/Map;

    return-object v0
.end method

.method public static getObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    invoke-virtual {v0, p0, p1}, Lcom/everyplay/Everyplay/c/i;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getObjectArray(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    invoke-virtual {v0, p0, p1}, Lcom/everyplay/Everyplay/c/i;->a(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    invoke-virtual {v0, p0, p1}, Lcom/everyplay/Everyplay/c/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    invoke-virtual {v0, p0, p1}, Lcom/everyplay/Everyplay/c/i;->a(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static h()V
    .locals 2

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->a:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->a:Landroid/view/Choreographer;

    sget-object v1, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->b:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->a:Landroid/view/Choreographer;

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public static isReadyForRecording()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->d:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static markFrame(IJI)V
    .locals 13

    const-wide/16 v10, 0x0

    const/4 v0, 0x4

    const/4 v4, 0x1

    sget v1, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->d:I

    if-ne v1, v4, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/c/a/g;->c()Lcom/everyplay/Everyplay/c/a/c;

    move-result-object v1

    iget-object v2, v1, Lcom/everyplay/Everyplay/c/a/c;->h:Lcom/everyplay/Everyplay/encoding/b;

    if-eqz v2, :cond_0

    iget-boolean v1, v2, Lcom/everyplay/Everyplay/encoding/b;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, v2, Lcom/everyplay/Everyplay/encoding/b;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/everyplay/Everyplay/encoding/d;

    if-eqz v1, :cond_1

    iget-boolean v3, v1, Lcom/everyplay/Everyplay/encoding/d;->m:Z

    if-ne v3, v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mark frame "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " EOS was signaled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_0

    iget-object v7, v2, Lcom/everyplay/Everyplay/encoding/b;->d:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-virtual {v1}, Lcom/everyplay/Everyplay/encoding/d;->h()I

    move-result v3

    if-ltz v3, :cond_4

    const/4 v6, 0x0

    iget-wide v4, v2, Lcom/everyplay/Everyplay/encoding/b;->h:J

    cmp-long v3, v4, v10

    if-lez v3, :cond_2

    iget-wide v4, v1, Lcom/everyplay/Everyplay/encoding/d;->j:J

    iget-wide v8, v1, Lcom/everyplay/Everyplay/encoding/d;->i:J

    sub-long/2addr v4, v8

    iget-wide v2, v2, Lcom/everyplay/Everyplay/encoding/b;->h:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_2

    iget-boolean v2, v1, Lcom/everyplay/Everyplay/encoding/d;->m:Z

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Track \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/everyplay/Everyplay/encoding/d;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' signaling EOS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "muxer-changing"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setBoolean(Ljava/lang/String;Z)V

    move v6, v0

    :cond_2
    iget-wide v2, v1, Lcom/everyplay/Everyplay/encoding/d;->j:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Track \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/everyplay/Everyplay/encoding/d;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' setDeltaTimestamp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/everyplay/Everyplay/encoding/d;->l:J

    cmp-long v2, v2, v10

    if-nez v2, :cond_5

    iget-wide v2, v1, Lcom/everyplay/Everyplay/encoding/d;->l:J

    add-long/2addr v2, p1

    iput-wide v2, v1, Lcom/everyplay/Everyplay/encoding/d;->l:J

    :cond_3
    :goto_1
    iget-wide v2, v1, Lcom/everyplay/Everyplay/encoding/d;->l:J

    sub-long v4, p1, v2

    invoke-virtual {v1}, Lcom/everyplay/Everyplay/encoding/d;->h()I

    move-result v2

    move/from16 v3, p3

    invoke-virtual/range {v1 .. v6}, Lcom/everyplay/Everyplay/encoding/d;->a(IIJI)V

    const/4 v2, -0x1

    iput v2, v1, Lcom/everyplay/Everyplay/encoding/d;->g:I

    if-ne v6, v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/everyplay/Everyplay/encoding/d;->m:Z

    :cond_4
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :try_start_1
    iget-wide v2, v1, Lcom/everyplay/Everyplay/encoding/d;->l:J

    sub-long v2, p1, v2

    iget-wide v4, v1, Lcom/everyplay/Everyplay/encoding/d;->l:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/everyplay/Everyplay/encoding/d;->l:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static native markFrameNative(J)V
.end method

.method public static nextFrame(I)Ljava/nio/ByteBuffer;
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    sget v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->d:I

    if-ne v0, v3, :cond_1

    invoke-static {}, Lcom/everyplay/Everyplay/c/a/g;->c()Lcom/everyplay/Everyplay/c/a/c;

    move-result-object v0

    iget-object v2, v0, Lcom/everyplay/Everyplay/c/a/c;->h:Lcom/everyplay/Everyplay/encoding/b;

    if-eqz v2, :cond_1

    iget-boolean v0, v2, Lcom/everyplay/Everyplay/encoding/b;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/everyplay/Everyplay/encoding/b;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/encoding/d;

    iget-boolean v2, v2, Lcom/everyplay/Everyplay/encoding/b;->e:Z

    if-eq v2, v3, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/everyplay/Everyplay/encoding/d;->n:Z

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/encoding/d;->g()Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static onEveryplayFaceCamRecordingPermission(I)V
    .locals 0

    return-void
.end method

.method public static onEveryplayFaceCamSessionStarted()V
    .locals 0

    return-void
.end method

.method public static onEveryplayFaceCamSessionStopped()V
    .locals 0

    return-void
.end method

.method public static onEveryplayReadyForRecording(I)V
    .locals 0

    sput p0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->d:I

    invoke-static {p0}, Lcom/everyplay/Everyplay/communication/c;->a(I)V

    return-void
.end method

.method public static onEveryplayRecordingStarted()V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/everyplay/Everyplay/c/a/g;->c()Lcom/everyplay/Everyplay/c/a/c;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v1, v0, Lcom/everyplay/Everyplay/c/a/c;->a:I

    invoke-static {v1}, Lcom/everyplay/Everyplay/encoding/b;->b(I)Lcom/everyplay/Everyplay/encoding/b;

    move-result-object v1

    if-nez v1, :cond_2

    iget v1, v0, Lcom/everyplay/Everyplay/c/a/c;->a:I

    invoke-static {v1}, Lcom/everyplay/Everyplay/encoding/b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/everyplay/Everyplay/c/a/c;->a:I

    invoke-static {v1}, Lcom/everyplay/Everyplay/encoding/b;->b(I)Lcom/everyplay/Everyplay/encoding/b;

    move-result-object v1

    iput-object v1, v0, Lcom/everyplay/Everyplay/c/a/c;->h:Lcom/everyplay/Everyplay/encoding/b;

    iget-object v1, v0, Lcom/everyplay/Everyplay/c/a/c;->h:Lcom/everyplay/Everyplay/encoding/b;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/everyplay/Everyplay/c/a/c;->h:Lcom/everyplay/Everyplay/encoding/b;

    iget-object v2, v1, Lcom/everyplay/Everyplay/encoding/b;->g:Lcom/everyplay/Everyplay/c/a/c;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/everyplay/Everyplay/encoding/b;->g:Lcom/everyplay/Everyplay/c/a/c;

    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, v1, Lcom/everyplay/Everyplay/encoding/b;->g:Lcom/everyplay/Everyplay/c/a/c;

    if-nez v2, :cond_1

    iput-object v0, v1, Lcom/everyplay/Everyplay/encoding/b;->g:Lcom/everyplay/Everyplay/c/a/c;

    :cond_1
    iget-object v1, v0, Lcom/everyplay/Everyplay/c/a/c;->h:Lcom/everyplay/Everyplay/encoding/b;

    invoke-virtual {v1, v0}, Lcom/everyplay/Everyplay/encoding/b;->a(Lcom/everyplay/Everyplay/communication/l;)V

    iget-object v1, v0, Lcom/everyplay/Everyplay/c/a/c;->h:Lcom/everyplay/Everyplay/encoding/b;

    const-string v2, "continuous-max-record-block-time"

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/everyplay/Everyplay/encoding/b;->h:J

    const-string v2, "continuous-max-items-per-session"

    invoke-static {v2, v6}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/everyplay/Everyplay/encoding/b;->i:I

    :cond_2
    iget-object v1, v0, Lcom/everyplay/Everyplay/c/a/c;->e:Lcom/everyplay/Everyplay/c/a/c$a;

    sget-object v2, Lcom/everyplay/Everyplay/c/a/c$a;->a:Lcom/everyplay/Everyplay/c/a/c$a;

    if-eq v1, v2, :cond_4

    iget-object v1, v0, Lcom/everyplay/Everyplay/c/a/c;->e:Lcom/everyplay/Everyplay/c/a/c$a;

    sget-object v2, Lcom/everyplay/Everyplay/c/a/c$a;->c:Lcom/everyplay/Everyplay/c/a/c$a;

    if-eq v1, v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t start recording while session status is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/everyplay/Everyplay/c/a/c;->e:Lcom/everyplay/Everyplay/c/a/c$a;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/c/a/c$a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->a(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v1, v0, Lcom/everyplay/Everyplay/c/a/c;->h:Lcom/everyplay/Everyplay/encoding/b;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/everyplay/Everyplay/c/a/c;->h:Lcom/everyplay/Everyplay/encoding/b;

    sget-object v2, Lcom/everyplay/Everyplay/c/a/d;->a:Lcom/everyplay/Everyplay/c/a/d;

    iput-object v2, v1, Lcom/everyplay/Everyplay/encoding/b;->b:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v1}, Lcom/everyplay/Everyplay/encoding/b;->a()V

    iget-object v2, v1, Lcom/everyplay/Everyplay/encoding/b;->j:Lcom/everyplay/Everyplay/encoding/b$a;

    if-nez v2, :cond_6

    new-instance v2, Lcom/everyplay/Everyplay/encoding/b$a;

    invoke-direct {v2, v1, v1}, Lcom/everyplay/Everyplay/encoding/b$a;-><init>(Lcom/everyplay/Everyplay/encoding/b;Lcom/everyplay/Everyplay/encoding/b;)V

    iput-object v2, v1, Lcom/everyplay/Everyplay/encoding/b;->j:Lcom/everyplay/Everyplay/encoding/b$a;

    iget-object v2, v1, Lcom/everyplay/Everyplay/encoding/b;->k:Ljava/lang/Thread;

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/Thread;

    iget-object v3, v1, Lcom/everyplay/Everyplay/encoding/b;->j:Lcom/everyplay/Everyplay/encoding/b$a;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, v1, Lcom/everyplay/Everyplay/encoding/b;->k:Ljava/lang/Thread;

    :cond_5
    iget-object v2, v1, Lcom/everyplay/Everyplay/encoding/b;->j:Lcom/everyplay/Everyplay/encoding/b$a;

    sget v3, Lcom/everyplay/Everyplay/encoding/b$b;->a:I

    iput v3, v2, Lcom/everyplay/Everyplay/encoding/b$a;->a:I

    iget-object v2, v1, Lcom/everyplay/Everyplay/encoding/b;->k:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_6
    iput-boolean v6, v1, Lcom/everyplay/Everyplay/encoding/b;->e:Z

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/everyplay/Everyplay/encoding/b;->c:Z

    sget-object v1, Lcom/everyplay/Everyplay/c/a/c$a;->b:Lcom/everyplay/Everyplay/c/a/c$a;

    iput-object v1, v0, Lcom/everyplay/Everyplay/c/a/c;->e:Lcom/everyplay/Everyplay/c/a/c$a;

    goto :goto_0

    :cond_7
    const-string v0, "Encoder is NULL"

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onEveryplayRecordingStopped()V
    .locals 3

    invoke-static {}, Lcom/everyplay/Everyplay/c/a/g;->c()Lcom/everyplay/Everyplay/c/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/everyplay/Everyplay/c/a/c;->e:Lcom/everyplay/Everyplay/c/a/c$a;

    sget-object v2, Lcom/everyplay/Everyplay/c/a/c$a;->b:Lcom/everyplay/Everyplay/c/a/c$a;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/c/a/c;->c()V

    :cond_0
    return-void
.end method

.method public static onEveryplayThumbnailReadyAtTextureId(II)V
    .locals 4

    invoke-static {}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->f()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge$2;

    invoke-direct {v1, p0, p1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge$2;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/everyplay/Everyplay/communication/c$a;->l:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/c;->a(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static onEveryplayUploadDidComplete(I)V
    .locals 0

    return-void
.end method

.method public static onEveryplayUploadDidProgress(ID)V
    .locals 0

    return-void
.end method

.method public static onEveryplayUploadDidStart(I)V
    .locals 0

    return-void
.end method

.method public static openSession()V
    .locals 0

    invoke-static {}, Lcom/everyplay/Everyplay/c/a/g;->e()Lcom/everyplay/Everyplay/c/a/c;

    return-void
.end method

.method public static releaseLink()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->f()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge$5;

    invoke-direct {v1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge$5;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->h()V

    goto :goto_0
.end method

.method public static releaseSurface()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/encoding/e;->a(Landroid/opengl/EGLContext;)Lcom/everyplay/Everyplay/encoding/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/everyplay/Everyplay/encoding/e;->b(Landroid/opengl/EGLContext;)V

    :cond_0
    return-void
.end method

.method public static removeKey(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    :try_start_0
    iget-object v1, v0, Lcom/everyplay/Everyplay/c/i;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/everyplay/Everyplay/c/i;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setBoolean(Ljava/lang/String;Z)V
    .locals 2

    sget-object v1, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v1, p0, v0}, Lcom/everyplay/Everyplay/c/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setBooleanArray(Ljava/lang/String;[Z)V
    .locals 2

    sget-object v1, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    if-eqz p1, :cond_0

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, p0, p1}, Lcom/everyplay/Everyplay/c/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 2

    sget-object v1, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    if-eqz p1, :cond_0

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, p0, p1}, Lcom/everyplay/Everyplay/c/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setFloat(Ljava/lang/String;F)V
    .locals 2

    sget-object v1, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v1, p0, v0}, Lcom/everyplay/Everyplay/c/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setFloatArray(Ljava/lang/String;[F)V
    .locals 2

    sget-object v1, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    if-eqz p1, :cond_0

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, p0, p1}, Lcom/everyplay/Everyplay/c/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setInt(Ljava/lang/String;I)V
    .locals 2

    sget-object v1, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, p0, v0}, Lcom/everyplay/Everyplay/c/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setIntArray(Ljava/lang/String;[I)V
    .locals 2

    sget-object v1, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    if-eqz p1, :cond_0

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, p0, p1}, Lcom/everyplay/Everyplay/c/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setLong(Ljava/lang/String;J)V
    .locals 3

    sget-object v1, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, p0, v0}, Lcom/everyplay/Everyplay/c/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setLongArray(Ljava/lang/String;[J)V
    .locals 2

    sget-object v1, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    if-eqz p1, :cond_0

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, p0, p1}, Lcom/everyplay/Everyplay/c/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    sget-object v1, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    if-eqz p1, :cond_0

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, p0, p1}, Lcom/everyplay/Everyplay/c/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setObjectArray(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v1, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    if-eqz p1, :cond_0

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, p0, p1}, Lcom/everyplay/Everyplay/c/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v1, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, p0, p1}, Lcom/everyplay/Everyplay/c/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    sget-object v1, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->e:Lcom/everyplay/Everyplay/c/i;

    if-eqz p1, :cond_0

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, p0, p1}, Lcom/everyplay/Everyplay/c/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static storeKeyChangedEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    sget v0, Lcom/everyplay/Everyplay/e/d;->a:I

    sget v1, Lcom/everyplay/Everyplay/e/d$b;->d:I

    if-eq v0, v1, :cond_0

    sget v0, Lcom/everyplay/Everyplay/e/d;->a:I

    sget v1, Lcom/everyplay/Everyplay/e/d$b;->c:I

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {p0, p1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->storeKeyChangedEventNative(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge$a;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static native storeKeyChangedEventNative(Ljava/lang/String;Ljava/lang/Object;)V
.end method
