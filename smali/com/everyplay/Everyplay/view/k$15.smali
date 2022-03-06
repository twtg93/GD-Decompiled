.class final Lcom/everyplay/Everyplay/view/k$15;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/view/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/k$b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/everyplay/Everyplay/view/k;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/k;Lcom/everyplay/Everyplay/view/k$b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/k$15;->c:Lcom/everyplay/Everyplay/view/k;

    iput-object p2, p0, Lcom/everyplay/Everyplay/view/k$15;->a:Lcom/everyplay/Everyplay/view/k$b;

    iput-object p3, p0, Lcom/everyplay/Everyplay/view/k$15;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/everyplay/Everyplay/view/k$15$1;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/view/k$15$1;-><init>(Lcom/everyplay/Everyplay/view/k$15;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
