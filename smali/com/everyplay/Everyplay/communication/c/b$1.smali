.class final Lcom/everyplay/Everyplay/communication/c/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/c/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/communication/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/everyplay/Everyplay/communication/c/a;

.field final synthetic c:Lorg/json/JSONObject;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lorg/json/JSONArray;

.field final synthetic f:Lcom/everyplay/Everyplay/communication/c/c;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/everyplay/Everyplay/communication/c/a;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;Lcom/everyplay/Everyplay/communication/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/communication/c/b$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/everyplay/Everyplay/communication/c/b$1;->b:Lcom/everyplay/Everyplay/communication/c/a;

    iput-object p3, p0, Lcom/everyplay/Everyplay/communication/c/b$1;->c:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/everyplay/Everyplay/communication/c/b$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/everyplay/Everyplay/communication/c/b$1;->e:Lorg/json/JSONArray;

    iput-object p6, p0, Lcom/everyplay/Everyplay/communication/c/b$1;->f:Lcom/everyplay/Everyplay/communication/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/c/b$1;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LOCAL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", REMOTE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/c/b$1;->b:Lcom/everyplay/Everyplay/communication/c/a;

    iget-object v1, v1, Lcom/everyplay/Everyplay/communication/c/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has not changed since it was last prefetched"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "updated"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "file"

    iget-object v2, p0, Lcom/everyplay/Everyplay/communication/c/b$1;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "base"

    iget-object v2, p0, Lcom/everyplay/Everyplay/communication/c/b$1;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/c/b$1;->e:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/c/b$1;->b:Lcom/everyplay/Everyplay/communication/c/a;

    iput-boolean v5, v0, Lcom/everyplay/Everyplay/communication/c/a;->e:Z

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/c/b$1;->b:Lcom/everyplay/Everyplay/communication/c/a;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/communication/c/a;->c()V

    invoke-static {}, Lcom/everyplay/Everyplay/communication/c/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/c/b$1;->f:Lcom/everyplay/Everyplay/communication/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/c/b$1;->f:Lcom/everyplay/Everyplay/communication/c/c;

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/c/b$1;->e:Lorg/json/JSONArray;

    invoke-interface {v0, v1}, Lcom/everyplay/Everyplay/communication/c/c;->a(Lorg/json/JSONArray;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/c/b$1;->b:Lcom/everyplay/Everyplay/communication/c/a;

    new-instance v1, Lcom/everyplay/Everyplay/communication/c/b$1$1;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/communication/c/b$1$1;-><init>(Lcom/everyplay/Everyplay/communication/c/b$1;)V

    iget-object v2, v0, Lcom/everyplay/Everyplay/communication/c/a;->f:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_1
    iget-object v3, v0, Lcom/everyplay/Everyplay/communication/c/a;->f:Ljava/util/ArrayList;

    new-instance v4, Lcom/everyplay/Everyplay/communication/c/a$1;

    invoke-direct {v4, v0, v1}, Lcom/everyplay/Everyplay/communication/c/a$1;-><init>(Lcom/everyplay/Everyplay/communication/c/a;Lcom/everyplay/Everyplay/communication/c/d;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/c/b$1;->b:Lcom/everyplay/Everyplay/communication/c/a;

    iput-boolean v5, v0, Lcom/everyplay/Everyplay/communication/c/a;->e:Z

    sget-object v1, Lcom/everyplay/Everyplay/communication/b/a$b;->a:Lcom/everyplay/Everyplay/communication/b/a$b;

    iget-object v2, v0, Lcom/everyplay/Everyplay/communication/c/a;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/everyplay/Everyplay/communication/b/a;->a(Lcom/everyplay/Everyplay/communication/b/a$b;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/everyplay/Everyplay/communication/b/h;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
