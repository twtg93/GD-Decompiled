.class public final Lcom/everyplay/Everyplay/view/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everyplay/Everyplay/view/f$e;,
        Lcom/everyplay/Everyplay/view/f$d;,
        Lcom/everyplay/Everyplay/view/f$g;,
        Lcom/everyplay/Everyplay/view/f$f;,
        Lcom/everyplay/Everyplay/view/f$a;,
        Lcom/everyplay/Everyplay/view/f$b;,
        Lcom/everyplay/Everyplay/view/f$c;
    }
.end annotation


# direct methods
.method public static a(Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;I)V
    .locals 3

    const-string v0, "/sharing_modal"

    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?edit=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/everyplay/Everyplay/view/f$d;

    invoke-direct {v2, v0, p0, p1, p2}, Lcom/everyplay/Everyplay/view/f$d;-><init>(Ljava/lang/String;Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Lcom/everyplay/Everyplay/view/f$c;ZZLjava/lang/String;Lcom/everyplay/Everyplay/communication/k;)V
    .locals 10

    new-instance v9, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/everyplay/Everyplay/view/f$a;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/everyplay/Everyplay/view/f$a;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/everyplay/Everyplay/view/f$c;ZZLjava/lang/String;Lcom/everyplay/Everyplay/communication/k;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/everyplay/Everyplay/view/f$f;

    invoke-direct {v1, p0, p1, p2}, Lcom/everyplay/Everyplay/view/f$f;-><init>(Ljava/lang/String;Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/everyplay/Everyplay/view/f$c;ZZLcom/everyplay/Everyplay/communication/k;)V
    .locals 8

    const/4 v1, -0x1

    const-string v2, "Cancel"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/everyplay/Everyplay/view/f;->a(Ljava/lang/String;ILjava/lang/String;Lcom/everyplay/Everyplay/view/f$c;ZZLjava/lang/String;Lcom/everyplay/Everyplay/communication/k;)V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/everyplay/Everyplay/view/f$g;

    invoke-direct {v1, p0, p1, p2}, Lcom/everyplay/Everyplay/view/f$g;-><init>(Lorg/json/JSONObject;Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/everyplay/Everyplay/view/f$e;

    invoke-direct {v1, p0, p1, p2}, Lcom/everyplay/Everyplay/view/f$e;-><init>(Ljava/lang/String;Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
