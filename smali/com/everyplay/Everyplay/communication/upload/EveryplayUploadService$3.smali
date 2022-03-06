.class final Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/c/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$b;

.field final synthetic b:Lcom/everyplay/Everyplay/communication/upload/a;

.field final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$b;Lcom/everyplay/Everyplay/communication/upload/a;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$3;->a:Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$b;

    iput-object p2, p0, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$3;->b:Lcom/everyplay/Everyplay/communication/upload/a;

    iput-object p3, p0, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$3;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/everyplay/Everyplay/c/a/d;Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$3;->a:Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$b;

    invoke-interface {v0, p2}, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$b;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public final a(Lcom/everyplay/Everyplay/c/a/d;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$3;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/everyplay/Everyplay/a/b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "access_token"

    invoke-static {}, Lcom/everyplay/Everyplay/a/b;->b()Lcom/everyplay/Everyplay/a/a;

    move-result-object v2

    iget-object v2, v2, Lcom/everyplay/Everyplay/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v1, "id"

    iget-object v2, p0, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$3;->b:Lcom/everyplay/Everyplay/communication/upload/a;

    iget-object v2, v2, Lcom/everyplay/Everyplay/communication/upload/a;->a:Lcom/everyplay/Everyplay/communication/upload/b;

    iget-object v2, v2, Lcom/everyplay/Everyplay/communication/upload/b;->b:Lcom/everyplay/Everyplay/c/a/c;

    iget-object v2, v2, Lcom/everyplay/Everyplay/c/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "target"

    iget-object v2, p0, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$3;->b:Lcom/everyplay/Everyplay/communication/upload/a;

    invoke-virtual {v2}, Lcom/everyplay/Everyplay/communication/upload/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/everyplay/Everyplay/communication/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "file"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "result_receiver"

    new-instance v2, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$a;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iget-object v4, p0, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$3;->b:Lcom/everyplay/Everyplay/communication/upload/a;

    iget-object v5, p0, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$3;->a:Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$b;

    invoke-direct {v2, v3, v4, v5}, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$a;-><init>(Landroid/os/Handler;Lcom/everyplay/Everyplay/communication/upload/a;Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$b;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "bytes_total"

    iget-object v2, p0, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$3;->b:Lcom/everyplay/Everyplay/communication/upload/a;

    iget-wide v2, v2, Lcom/everyplay/Everyplay/communication/upload/a;->f:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "bytes_completed"

    iget-object v2, p0, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$3;->b:Lcom/everyplay/Everyplay/communication/upload/a;

    iget-wide v2, v2, Lcom/everyplay/Everyplay/communication/upload/a;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "status"

    iget-object v2, p0, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$3;->b:Lcom/everyplay/Everyplay/communication/upload/a;

    iget-object v2, v2, Lcom/everyplay/Everyplay/communication/upload/a;->c:Lcom/everyplay/Everyplay/communication/upload/b$a;

    invoke-virtual {v2}, Lcom/everyplay/Everyplay/communication/upload/b$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "item_Identifier"

    iget-object v2, p0, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$3;->b:Lcom/everyplay/Everyplay/communication/upload/a;

    iget-object v2, v2, Lcom/everyplay/Everyplay/communication/upload/a;->b:Lcom/everyplay/Everyplay/c/a/d;

    iget-object v2, v2, Lcom/everyplay/Everyplay/c/a/d;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$3;->b:Lcom/everyplay/Everyplay/communication/upload/a;

    iget-object v3, v3, Lcom/everyplay/Everyplay/communication/upload/a;->a:Lcom/everyplay/Everyplay/communication/upload/b;

    iget-object v3, v3, Lcom/everyplay/Everyplay/communication/upload/b;->b:Lcom/everyplay/Everyplay/c/a/c;

    iget-object v3, v3, Lcom/everyplay/Everyplay/c/a/c;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$3;->b:Lcom/everyplay/Everyplay/communication/upload/a;

    invoke-virtual {v3}, Lcom/everyplay/Everyplay/communication/upload/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/everyplay/Everyplay/communication/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$3;->b:Lcom/everyplay/Everyplay/communication/upload/a;

    iget-wide v4, v3, Lcom/everyplay/Everyplay/communication/upload/a;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$3;->b:Lcom/everyplay/Everyplay/communication/upload/a;

    iget-wide v4, v3, Lcom/everyplay/Everyplay/communication/upload/a;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$3;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
