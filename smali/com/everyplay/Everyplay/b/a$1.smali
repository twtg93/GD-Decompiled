.class final Lcom/everyplay/Everyplay/b/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/everyplay/Everyplay/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/b/b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/b/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/b/a$1;->a:Lcom/everyplay/Everyplay/b/b;

    iput-object p2, p0, Lcom/everyplay/Everyplay/b/a$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/everyplay/Everyplay/b/a$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/everyplay/Everyplay/b/a$b;

    iget-object v1, p0, Lcom/everyplay/Everyplay/b/a$1;->a:Lcom/everyplay/Everyplay/b/b;

    invoke-direct {v0, v1}, Lcom/everyplay/Everyplay/b/a$b;-><init>(Lcom/everyplay/Everyplay/b/b;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/everyplay/Everyplay/b/a$1;->b:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/everyplay/Everyplay/b/a$1;->c:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/everyplay/Everyplay/b/a$b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    iget-object v2, p0, Lcom/everyplay/Everyplay/b/a$1;->b:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/everyplay/Everyplay/b/a$1;->c:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/b/a$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
