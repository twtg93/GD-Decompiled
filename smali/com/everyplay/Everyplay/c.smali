.class public final Lcom/everyplay/Everyplay/c;
.super Lcom/everyplay/Everyplay/a;


# static fields
.field private static a:Z

.field private static b:J


# instance fields
.field private c:Lcom/everyplay/Everyplay/communication/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/everyplay/Everyplay/c;->a:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/everyplay/Everyplay/c;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/everyplay/Everyplay/a;-><init>()V

    new-instance v0, Lcom/everyplay/Everyplay/c$3;

    invoke-direct {v0, p0}, Lcom/everyplay/Everyplay/c$3;-><init>(Lcom/everyplay/Everyplay/c;)V

    iput-object v0, p0, Lcom/everyplay/Everyplay/c;->c:Lcom/everyplay/Everyplay/communication/k;

    const-string v0, "Everyplay"

    const-string v1, "Everyplay SDK build: 1590"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/everyplay/Everyplay/c;->u()V

    return-void
.end method

.method static synthetic a(Lcom/everyplay/Everyplay/c;)Lcom/everyplay/Everyplay/communication/k;
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/c;->c:Lcom/everyplay/Everyplay/communication/k;

    return-object v0
.end method

.method static synthetic t()V
    .locals 0

    invoke-static {}, Lcom/everyplay/Everyplay/c;->v()V

    return-void
.end method

.method private declared-synchronized u()V
    .locals 6

    const/4 v5, 0x1

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/everyplay/Everyplay/c;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/everyplay/Everyplay/c;->a:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/everyplay/Everyplay/c;->b:J

    invoke-static {}, Lcom/everyplay/Everyplay/e/a;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/everyplay/Everyplay/b/a$2;

    invoke-direct {v1}, Lcom/everyplay/Everyplay/b/a$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    const-string v0, "system/lib/lib_k3_ffmpeg.so"

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v0, v4, :cond_1

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "64"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v0, v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Skipping libeveryplay.so load. Need Android SDK API level 16 or later, found: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->a(Ljava/lang/String;)V

    sget v0, Lcom/everyplay/Everyplay/e/d$b;->b:I

    sput v0, Lcom/everyplay/Everyplay/e/d;->a:I

    :cond_3
    sget v0, Lcom/everyplay/Everyplay/e/d;->a:I

    sget v3, Lcom/everyplay/Everyplay/e/d$b;->b:I

    if-eq v0, v3, :cond_4

    sget v0, Lcom/everyplay/Everyplay/e/d;->a:I

    sget v3, Lcom/everyplay/Everyplay/e/d$b;->c:I

    if-eq v0, v3, :cond_4

    sget v0, Lcom/everyplay/Everyplay/e/d;->a:I

    sget v3, Lcom/everyplay/Everyplay/e/d$b;->d:I

    if-ne v0, v3, :cond_7

    :cond_4
    :goto_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    const-string v0, "SM-G950"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "SM-G955"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string v0, "8998"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "isSamsungS8Qualcomm"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setBoolean(Ljava/lang/String;Z)V

    :cond_6
    new-instance v0, Lcom/everyplay/Everyplay/c$1;

    invoke-direct {v0, p0}, Lcom/everyplay/Everyplay/c$1;-><init>(Lcom/everyplay/Everyplay/c;)V

    invoke-static {v0}, Lcom/everyplay/Everyplay/communication/g;->a(Lcom/everyplay/Everyplay/communication/g$a;)V

    new-instance v0, Lcom/everyplay/Everyplay/c$7;

    invoke-direct {v0, p0}, Lcom/everyplay/Everyplay/c$7;-><init>(Lcom/everyplay/Everyplay/c;)V

    invoke-static {v0}, Lcom/everyplay/Everyplay/c/a/g;->a(Lcom/everyplay/Everyplay/c/a/j;)V

    new-instance v0, Lcom/everyplay/Everyplay/c$8;

    invoke-direct {v0, p0}, Lcom/everyplay/Everyplay/c$8;-><init>(Lcom/everyplay/Everyplay/c;)V

    invoke-static {v0}, Lcom/everyplay/Everyplay/communication/upload/c;->a(Lcom/everyplay/Everyplay/communication/upload/d;)V

    new-instance v0, Lcom/everyplay/Everyplay/c$9;

    invoke-direct {v0, p0}, Lcom/everyplay/Everyplay/c$9;-><init>(Lcom/everyplay/Everyplay/c;)V

    invoke-static {v0}, Lcom/everyplay/Everyplay/a/b;->a(Lcom/everyplay/Everyplay/a/c;)V

    new-instance v0, Lcom/everyplay/Everyplay/c$10;

    invoke-direct {v0, p0}, Lcom/everyplay/Everyplay/c$10;-><init>(Lcom/everyplay/Everyplay/c;)V

    invoke-static {v0}, Lcom/everyplay/Everyplay/a/b;->a(Lcom/everyplay/Everyplay/a/d;)V

    new-instance v0, Lcom/everyplay/Everyplay/c$11;

    invoke-direct {v0, p0}, Lcom/everyplay/Everyplay/c$11;-><init>(Lcom/everyplay/Everyplay/c;)V

    invoke-static {v0}, Lcom/everyplay/Everyplay/communication/a/a;->a(Lcom/everyplay/Everyplay/communication/a/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    :try_start_2
    const-string v0, "initialized"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setBoolean(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v0, "everyplay"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget v0, Lcom/everyplay/Everyplay/e/d$b;->c:I

    sput v0, Lcom/everyplay/Everyplay/e/d;->a:I

    invoke-static {}, Lcom/everyplay/Everyplay/communication/g;->a()Z

    move-result v0

    if-ne v0, v5, :cond_4

    const-string v0, "Skipping server settings query, settling to auto-detecting device settings"

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/everyplay/Everyplay/c;->v()V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    sget v3, Lcom/everyplay/Everyplay/e/d$b;->b:I

    sput v3, Lcom/everyplay/Everyplay/e/d;->a:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t load libeveryplay.so: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->c(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2
.end method

.method private static v()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget v0, Lcom/everyplay/Everyplay/e/d;->a:I

    sget v1, Lcom/everyplay/Everyplay/e/d$b;->b:I

    if-eq v0, v1, :cond_0

    sget v0, Lcom/everyplay/Everyplay/e/d;->a:I

    sget v1, Lcom/everyplay/Everyplay/e/d$b;->d:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "emulator"

    invoke-static {v0, v3}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v2, :cond_2

    const-string v0, "Emulator environment detected, recording support disabled. Always test against a real device."

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->a(Ljava/lang/String;)V

    sget v0, Lcom/everyplay/Everyplay/e/d$b;->b:I

    sput v0, Lcom/everyplay/Everyplay/e/d;->a:I

    goto :goto_0

    :cond_2
    const-string v0, "ndkIsSupported"

    invoke-static {v0, v3}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ndkIsSupported == false ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ndkArch"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/everyplay/Everyplay/e/d$b;->b:I

    sput v0, Lcom/everyplay/Everyplay/e/d;->a:I

    goto :goto_0

    :cond_3
    :try_start_0
    const-string v0, "ndkDriverCached"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/everyplay/Everyplay/c/g;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ndkDriverCache"

    invoke-static {v1, v0}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    invoke-static {}, Lcom/everyplay/Everyplay/communication/g;->a()Z

    move-result v0

    if-ne v0, v2, :cond_5

    invoke-static {}, Lcom/everyplay/Everyplay/encoding/a;->b()V

    invoke-static {}, Lcom/everyplay/Everyplay/encoding/a;->c()V

    :cond_5
    invoke-static {v2}, Lcom/everyplay/Everyplay/communication/g;->a(I)V

    sget v0, Lcom/everyplay/Everyplay/e/d$b;->d:I

    sput v0, Lcom/everyplay/Everyplay/e/d;->a:I

    const-string v0, "initialized"

    invoke-static {v0, v2}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/everyplay/Everyplay/c;->b:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NATIVE INIT TOOK "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SEC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_1
.end method

.method private static w()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/everyplay/Everyplay/Everyplay;->isRecording()Z

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/Everyplay;->stopRecording()V

    :goto_0
    invoke-static {}, Lcom/everyplay/Everyplay/Everyplay;->isRecording()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const-wide/16 v0, 0xf

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    const-string v0, "kEveryplayAPIURLKey"

    invoke-static {v0}, Lcom/everyplay/Everyplay/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/videos/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(II)V
    .locals 4

    if-gez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/everyplay/Everyplay/c$6;

    invoke-direct {v1, p0, p1}, Lcom/everyplay/Everyplay/c$6;-><init>(Lcom/everyplay/Everyplay/c;I)V

    mul-int/lit16 v2, p2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    sput-object p1, Lcom/everyplay/Everyplay/e/b;->a:Ljava/lang/String;

    const-string v0, "clientId"

    sget-object v1, Lcom/everyplay/Everyplay/e/b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    sput-object p2, Lcom/everyplay/Everyplay/e/b;->b:Ljava/lang/String;

    :cond_1
    if-eqz p3, :cond_2

    sput-object p3, Lcom/everyplay/Everyplay/e/b;->c:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/everyplay/Everyplay/c/m;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/everyplay/Everyplay/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/c;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    sget-object v0, Lcom/everyplay/Everyplay/view/f$c;->a:Lcom/everyplay/Everyplay/view/f$c;

    new-instance v1, Lcom/everyplay/Everyplay/c$4;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/c$4;-><init>(Lcom/everyplay/Everyplay/c;)V

    invoke-static {p1, v0, v1}, Lcom/everyplay/Everyplay/view/f;->a(Lorg/json/JSONObject;Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;)V

    return-void
.end method

.method public final a()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported API level: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/everyplay/Everyplay/IEveryplayListener;Landroid/app/Activity;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p2, p1}, Lcom/everyplay/Everyplay/communication/c;->a(Landroid/app/Activity;Lcom/everyplay/Everyplay/IEveryplayListener;)V

    sget v2, Lcom/everyplay/Everyplay/e/d;->a:I

    sget v3, Lcom/everyplay/Everyplay/e/d$b;->b:I

    if-ne v2, v3, :cond_0

    invoke-static {v1}, Lcom/everyplay/Everyplay/communication/c;->a(I)V

    :cond_0
    sget v2, Lcom/everyplay/Everyplay/e/d;->b:I

    sget v3, Lcom/everyplay/Everyplay/e/d$c;->a:I

    if-ne v2, v3, :cond_2

    new-instance v1, Lcom/everyplay/Everyplay/c/b;

    invoke-static {}, Lcom/everyplay/Everyplay/e/d;->e()Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/everyplay/Everyplay/c/b;-><init>(Lorg/json/JSONObject;)V

    const-string v2, "event/init"

    invoke-static {v2, v1}, Lcom/everyplay/Everyplay/communication/a;->a(Ljava/lang/String;Lcom/everyplay/Everyplay/c/b;)V

    invoke-static {}, Lcom/everyplay/Everyplay/communication/g;->d()V

    invoke-static {}, Lcom/everyplay/Everyplay/a/b;->a()V

    invoke-static {}, Lcom/everyplay/Everyplay/communication/c/b;->a()V

    invoke-static {}, Lcom/everyplay/Everyplay/device/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/everyplay/Everyplay/communication/a/a;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/everyplay/Everyplay/c/a/g;->a()V

    invoke-static {}, Lcom/everyplay/Everyplay/c/d;->b()Z

    invoke-static {}, Lcom/everyplay/Everyplay/e/d;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    :try_start_0
    const-class v1, Landroid/webkit/WebView;

    const-string v2, "setWebContentsDebuggingEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/everyplay/Everyplay/c$12;

    invoke-direct {v3, p0, v1}, Lcom/everyplay/Everyplay/c$12;-><init>(Lcom/everyplay/Everyplay/c;Ljava/lang/reflect/Method;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    sget v1, Lcom/everyplay/Everyplay/e/d$c;->b:I

    sput v1, Lcom/everyplay/Everyplay/e/d;->b:I

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/c;->w()V

    invoke-static {}, Lcom/everyplay/Everyplay/communication/a;->a()V

    new-instance v0, Lcom/everyplay/Everyplay/c/b;

    invoke-direct {v0}, Lcom/everyplay/Everyplay/c/b;-><init>()V

    const-string v1, "eventType"

    const-string v2, "showEveryplayWithPathInternal"

    invoke-virtual {v0, v1, v2}, Lcom/everyplay/Everyplay/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Lcom/everyplay/Everyplay/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "event/sdk"

    invoke-static {v1, v0}, Lcom/everyplay/Everyplay/communication/a;->a(Ljava/lang/String;Lcom/everyplay/Everyplay/c/b;)V

    sget-object v0, Lcom/everyplay/Everyplay/view/f$c;->a:Lcom/everyplay/Everyplay/view/f$c;

    new-instance v1, Lcom/everyplay/Everyplay/c$14;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/c$14;-><init>(Lcom/everyplay/Everyplay/c;)V

    invoke-static {p1, v0, v1}, Lcom/everyplay/Everyplay/view/f;->b(Ljava/lang/String;Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 1

    const-string v0, "targetFPS"

    invoke-static {v0, p1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/everyplay/Everyplay/communication/b/a$b;->a:Lcom/everyplay/Everyplay/communication/b/a$b;

    new-instance v1, Lcom/everyplay/Everyplay/c$5;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/c$5;-><init>(Lcom/everyplay/Everyplay/c;)V

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Lcom/everyplay/Everyplay/communication/b/a;->a(Lcom/everyplay/Everyplay/communication/b/a$b;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/everyplay/Everyplay/communication/b/h;)V

    return-void
.end method

.method public final b(Lorg/json/JSONObject;)V
    .locals 4

    invoke-static {}, Lcom/everyplay/Everyplay/c/a/g;->d()Lcom/everyplay/Everyplay/c/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/json/JSONObject;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/everyplay/Everyplay/c/a/c;->g:Lorg/json/JSONObject;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/everyplay/Everyplay/d;->a([Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/everyplay/Everyplay/c/a/c;->g:Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/e/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/e/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/e/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(I)V
    .locals 1

    const-string v0, "motionFactor"

    invoke-static {v0, p1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/c;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "String to JSONObject conversion failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()Z
    .locals 3

    invoke-static {}, Lcom/everyplay/Everyplay/c/a/g;->d()Lcom/everyplay/Everyplay/c/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/everyplay/Everyplay/c/a/d;->a:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, v0, Lcom/everyplay/Everyplay/c/a/c;->e:Lcom/everyplay/Everyplay/c/a/c$a;

    sget-object v2, Lcom/everyplay/Everyplay/c/a/c$a;->f:Lcom/everyplay/Everyplay/c/a/c$a;

    if-eq v1, v2, :cond_0

    iget-object v0, v0, Lcom/everyplay/Everyplay/c/a/c;->e:Lcom/everyplay/Everyplay/c/a/c$a;

    sget-object v1, Lcom/everyplay/Everyplay/c/a/c$a;->e:Lcom/everyplay/Everyplay/c/a/c$a;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(I)V
    .locals 2

    const-string v0, "maxRecordingSecondsLength"

    mul-int/lit8 v1, p1, 0x3c

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final d()Z
    .locals 1

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/upload"

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/c;->a(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(I)V
    .locals 1

    const-string v0, "maxRecordingSecondsLength"

    invoke-static {v0, p1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final e()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/c;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/c;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/c;->w()V

    invoke-static {}, Lcom/everyplay/Everyplay/communication/a;->a()V

    new-instance v1, Lcom/everyplay/Everyplay/c/b;

    invoke-direct {v1}, Lcom/everyplay/Everyplay/c/b;-><init>()V

    const-string v2, "eventType"

    const-string v3, "showEveryplaySharingModalWithPath"

    invoke-virtual {v1, v2, v3}, Lcom/everyplay/Everyplay/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "path"

    const-string v3, "/sharing_modal"

    invoke-virtual {v1, v2, v3}, Lcom/everyplay/Everyplay/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "event/sdk"

    invoke-static {v2, v1}, Lcom/everyplay/Everyplay/communication/a;->a(Ljava/lang/String;Lcom/everyplay/Everyplay/c/b;)V

    sget-object v1, Lcom/everyplay/Everyplay/view/f$c;->a:Lcom/everyplay/Everyplay/view/f$c;

    new-instance v2, Lcom/everyplay/Everyplay/c$13;

    invoke-direct {v2, p0}, Lcom/everyplay/Everyplay/c$13;-><init>(Lcom/everyplay/Everyplay/c;)V

    invoke-static {v1, v2, v0}, Lcom/everyplay/Everyplay/view/f;->a(Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;I)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final f(I)V
    .locals 1

    const-string v0, "lowMemoryDevice"

    invoke-static {v0, p1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final f()Z
    .locals 1

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kEveryplayDefaultPathKey"

    invoke-static {v0}, Lcom/everyplay/Everyplay/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/c;->a(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "Could not open Everyplay"

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g(I)V
    .locals 1

    const-string v0, "disableSingleCoreDevices"

    invoke-static {v0, p1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final g()Z
    .locals 2

    invoke-static {}, Lcom/everyplay/Everyplay/communication/c;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/everyplay/Everyplay/view/c;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/everyplay/Everyplay/c$2;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/c$2;-><init>(Lcom/everyplay/Everyplay/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()V
    .locals 4

    invoke-static {}, Lcom/everyplay/Everyplay/c/a/g;->d()Lcom/everyplay/Everyplay/c/a/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/c;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/c;->w()V

    new-instance v1, Lcom/everyplay/Everyplay/c/b;

    invoke-direct {v1}, Lcom/everyplay/Everyplay/c/b;-><init>()V

    const-string v2, "eventType"

    const-string v3, "playLastRecording"

    invoke-virtual {v1, v2, v3}, Lcom/everyplay/Everyplay/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "event/sdk"

    invoke-static {v2, v1}, Lcom/everyplay/Everyplay/communication/a;->a(Ljava/lang/String;Lcom/everyplay/Everyplay/c/b;)V

    iget-object v0, v0, Lcom/everyplay/Everyplay/c/a/c;->b:Ljava/lang/String;

    sget-object v1, Lcom/everyplay/Everyplay/view/f$c;->a:Lcom/everyplay/Everyplay/view/f$c;

    iget-object v2, p0, Lcom/everyplay/Everyplay/c;->c:Lcom/everyplay/Everyplay/communication/k;

    invoke-static {v0, v1, v2}, Lcom/everyplay/Everyplay/view/f;->a(Ljava/lang/String;Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;)V

    :cond_0
    return-void
.end method

.method public final h(I)V
    .locals 1

    const-string v0, "thumbnailTargetTextureId"

    invoke-static {v0, p1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/everyplay/Everyplay/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/a/b;->b()Lcom/everyplay/Everyplay/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/everyplay/Everyplay/a/a;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i(I)V
    .locals 1

    const-string v0, "thumbnailTargetTextureWidth"

    invoke-static {v0, p1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final j(I)V
    .locals 1

    const-string v0, "thumbnailTargetTextureHeight"

    invoke-static {v0, p1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final j()Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "isRecordingSupported"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->callStaticBooleanMethod(ZLjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final k(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Cannot change audio resampler quality while recording"

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "audioResamplerQuality"

    invoke-static {v0, p1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final k()Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "isRecording"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->callStaticBooleanMethod(ZLjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "isPaused"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->callStaticBooleanMethod(ZLjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final m()Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "snapshotRenderbuffer"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->callStaticBooleanMethod(ZLjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final n()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "startRecording"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v2, v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->callStaticVoidMethod(ZZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final o()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    const-string v1, "stopRecording"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v3, v1, v2}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->callStaticVoidMethod(ZZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final p()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "pauseRecording"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2, v2, v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->callStaticVoidMethod(ZZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final q()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "resumeRecording"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2, v2, v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->callStaticVoidMethod(ZZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final r()Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "isSingleCoreDevice"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->callStaticBooleanMethod(ZLjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final s()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "takeThumbnail"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2, v2, v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->callStaticVoidMethod(ZZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
