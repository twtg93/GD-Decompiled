.class final Lcom/everyplay/Everyplay/d/b$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/d/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/d/b;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/d/b$6;->a:Lcom/everyplay/Everyplay/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const v6, 0x461c4000    # 10000.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    long-to-float v3, v4

    sget v0, Lcom/everyplay/Everyplay/e/d;->a:I

    sget v4, Lcom/everyplay/Everyplay/e/d$b;->d:I

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    long-to-float v4, v4

    sub-float/2addr v4, v3

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    sget v4, Lcom/everyplay/Everyplay/e/d;->a:I

    sget v0, Lcom/everyplay/Everyplay/e/d$b;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v3

    :cond_2
    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    long-to-float v3, v4

    invoke-static {}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->isReadyForRecording()Z

    move-result v0

    invoke-static {}, Lcom/everyplay/Everyplay/d/b;->c()Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_1
    if-nez v0, :cond_3

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    long-to-float v0, v0

    sub-float/2addr v0, v3

    cmpg-float v0, v0, v6

    if-gez v0, :cond_3

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->isReadyForRecording()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_3
    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b$6;->a:Lcom/everyplay/Everyplay/d/b;

    const-string v1, "isFaceCamNativeSupported"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->callStaticBooleanMethod(ZLjava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/d/b;->a(Lcom/everyplay/Everyplay/d/b;Z)Z

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b$6;->a:Lcom/everyplay/Everyplay/d/b;

    invoke-static {v0}, Lcom/everyplay/Everyplay/d/b;->f(Lcom/everyplay/Everyplay/d/b;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/everyplay/Everyplay/communication/c;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/everyplay/Everyplay/d/b$6$1;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/d/b$6$1;-><init>(Lcom/everyplay/Everyplay/d/b$6;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b$6;->a:Lcom/everyplay/Everyplay/d/b;

    invoke-static {v0}, Lcom/everyplay/Everyplay/d/b;->d(Lcom/everyplay/Everyplay/d/b;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b$6;->a:Lcom/everyplay/Everyplay/d/b;

    invoke-static {v0}, Lcom/everyplay/Everyplay/d/b;->e(Lcom/everyplay/Everyplay/d/b;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b$6;->a:Lcom/everyplay/Everyplay/d/b;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_4

    iget-boolean v3, v0, Lcom/everyplay/Everyplay/d/b;->n:Z

    if-nez v3, :cond_4

    iput-boolean v1, v0, Lcom/everyplay/Everyplay/d/b;->m:Z

    iput-boolean v1, v0, Lcom/everyplay/Everyplay/d/b;->n:Z

    const-string v0, "android.permission.CAMERA"

    const-string v3, "android.permission.RECORD_AUDIO"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v2

    aput-object v3, v4, v1

    const-string v0, "EveryplayLiveFacecam"

    const-string v1, "livefacecamVideo"

    invoke-static {v0, v1, v4}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2
.end method
