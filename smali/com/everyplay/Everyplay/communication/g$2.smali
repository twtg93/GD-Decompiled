.class final Lcom/everyplay/Everyplay/communication/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/communication/g;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/everyplay/Everyplay/communication/g;->p()V

    invoke-static {}, Lcom/everyplay/Everyplay/communication/g;->f()I

    move-result v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/communication/g;->b(I)I

    invoke-static {}, Lcom/everyplay/Everyplay/communication/g;->b()V

    invoke-static {}, Lcom/everyplay/Everyplay/communication/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/encoding/a;->b()V

    :cond_0
    new-instance v0, Lcom/everyplay/Everyplay/communication/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/everyplay/Everyplay/communication/g;-><init>(B)V

    invoke-static {v0}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->addKeyChangeListener(Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge$a;)V

    invoke-static {}, Lcom/everyplay/Everyplay/communication/g;->q()V

    invoke-static {}, Lcom/everyplay/Everyplay/communication/g;->o()V

    invoke-static {}, Lcom/everyplay/Everyplay/communication/g;->r()Ljava/lang/Thread;

    return-void
.end method
