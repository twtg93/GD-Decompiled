.class public final Lcom/everyplay/Everyplay/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/everyplay/Everyplay/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/everyplay/Everyplay/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/everyplay/Everyplay/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/everyplay/Everyplay/a/b;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/everyplay/Everyplay/a/b;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/everyplay/Everyplay/communication/c;->b()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "EpAccountPrefsFile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "data"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/everyplay/Everyplay/a/a;

    invoke-direct {v0, v1}, Lcom/everyplay/Everyplay/a/a;-><init>(Lorg/json/JSONObject;)V

    sput-object v0, Lcom/everyplay/Everyplay/a/b;->c:Lcom/everyplay/Everyplay/a/a;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/everyplay/Everyplay/a/b;->b(Ljava/lang/Exception;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sput-object v3, Lcom/everyplay/Everyplay/a/b;->c:Lcom/everyplay/Everyplay/a/a;

    goto :goto_0
.end method

.method public static a(Lcom/everyplay/Everyplay/a/a;)V
    .locals 1

    sput-object p0, Lcom/everyplay/Everyplay/a/b;->c:Lcom/everyplay/Everyplay/a/a;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/everyplay/Everyplay/a/b;->b(Ljava/lang/Exception;)V

    invoke-static {}, Lcom/everyplay/Everyplay/a/b;->g()V

    return-void
.end method

.method public static a(Lcom/everyplay/Everyplay/a/c;)V
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lcom/everyplay/Everyplay/a/d;)V
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0}, Lcom/everyplay/Everyplay/a/b;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/everyplay/Everyplay/communication/b/a$b;->a:Lcom/everyplay/Everyplay/communication/b/a$b;

    const-string v1, "/me"

    const-string v2, "access_token"

    invoke-static {v1, v2, p0}, Lcom/everyplay/Everyplay/communication/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/everyplay/Everyplay/a/b$7;

    invoke-direct {v2, p0}, Lcom/everyplay/Everyplay/a/b$7;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/everyplay/Everyplay/communication/b/a;->a(Lcom/everyplay/Everyplay/communication/b/a$b;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/everyplay/Everyplay/communication/b/h;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/everyplay/Everyplay/a/e;)V
    .locals 4

    invoke-static {}, Lcom/everyplay/Everyplay/a/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/everyplay/Everyplay/a/b$9;

    invoke-direct {v0, p0, p1}, Lcom/everyplay/Everyplay/a/b$9;-><init>(Ljava/lang/String;Lcom/everyplay/Everyplay/a/e;)V

    invoke-static {v0}, Lcom/everyplay/Everyplay/a/b;->c(Lcom/everyplay/Everyplay/a/c;)V

    :cond_0
    sget-object v0, Lcom/everyplay/Everyplay/communication/b/a$b;->a:Lcom/everyplay/Everyplay/communication/b/a$b;

    const-string v1, "/me/connections"

    new-instance v2, Lcom/everyplay/Everyplay/a/b$10;

    invoke-direct {v2, p0, p1}, Lcom/everyplay/Everyplay/a/b$10;-><init>(Ljava/lang/String;Lcom/everyplay/Everyplay/a/e;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/everyplay/Everyplay/communication/b/a;->a(Lcom/everyplay/Everyplay/communication/b/a$b;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/everyplay/Everyplay/communication/b/h;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "grant_type"

    const-string v2, "password"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "username"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "client_id"

    sget-object v2, Lcom/everyplay/Everyplay/e/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "client_secret"

    sget-object v2, Lcom/everyplay/Everyplay/e/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Lcom/everyplay/Everyplay/communication/b/a$b;->b:Lcom/everyplay/Everyplay/communication/b/a$b;

    const-string v2, "kEveryplayAccessTokenURLKey"

    invoke-static {v2}, Lcom/everyplay/Everyplay/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/everyplay/Everyplay/a/b$1;

    invoke-direct {v3}, Lcom/everyplay/Everyplay/a/b$1;-><init>()V

    invoke-static {v1, v2, v0, v3}, Lcom/everyplay/Everyplay/communication/b/a;->a(Lcom/everyplay/Everyplay/communication/b/a$b;Ljava/lang/String;Lorg/json/JSONObject;Lcom/everyplay/Everyplay/communication/b/h;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Z)V
    .locals 4

    const-string v0, "kEveryplayAppAPIURLKey"

    invoke-static {v0}, Lcom/everyplay/Everyplay/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "verified"

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "identifier"

    invoke-static {v0, v1, p0}, Lcom/everyplay/Everyplay/communication/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/everyplay/Everyplay/communication/b/a$b;->a:Lcom/everyplay/Everyplay/communication/b/a$b;

    new-instance v2, Lcom/everyplay/Everyplay/a/b$6;

    invoke-direct {v2, p1, p0}, Lcom/everyplay/Everyplay/a/b$6;-><init>(ZLjava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Lcom/everyplay/Everyplay/communication/b/a;->a(Lcom/everyplay/Everyplay/communication/b/a$b;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/everyplay/Everyplay/communication/b/h;)V

    return-void
.end method

.method public static a(ZLcom/everyplay/Everyplay/a/c;)V
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/a/b;->c:Lcom/everyplay/Everyplay/a/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/a/b;->c:Lcom/everyplay/Everyplay/a/a;

    invoke-interface {p1, v0}, Lcom/everyplay/Everyplay/a/c;->onLogin(Lcom/everyplay/Everyplay/a/a;)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/everyplay/Everyplay/a/b;->a(Lcom/everyplay/Everyplay/a/c;)V

    invoke-static {}, Lcom/everyplay/Everyplay/device/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/everyplay/Everyplay/a/b;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static b()Lcom/everyplay/Everyplay/a/a;
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/a/b;->c:Lcom/everyplay/Everyplay/a/a;

    return-object v0
.end method

.method static synthetic b(Lcom/everyplay/Everyplay/a/a;)Lcom/everyplay/Everyplay/a/a;
    .locals 0

    sput-object p0, Lcom/everyplay/Everyplay/a/b;->c:Lcom/everyplay/Everyplay/a/a;

    return-object p0
.end method

.method public static b(Lcom/everyplay/Everyplay/a/c;)V
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b(Lcom/everyplay/Everyplay/a/d;)V
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private static b(Ljava/lang/Exception;)V
    .locals 4

    sget-object v1, Lcom/everyplay/Everyplay/a/b;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/everyplay/Everyplay/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/a/c;

    if-eqz p0, :cond_1

    invoke-interface {v0, p0}, Lcom/everyplay/Everyplay/a/c;->onError(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    sget-object v3, Lcom/everyplay/Everyplay/a/b;->c:Lcom/everyplay/Everyplay/a/a;

    invoke-interface {v0, v3}, Lcom/everyplay/Everyplay/a/c;->onLogin(Lcom/everyplay/Everyplay/a/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/everyplay/Everyplay/a/b;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;Lcom/everyplay/Everyplay/a/e;)V
    .locals 3

    sget-object v0, Lcom/everyplay/Everyplay/view/d$a;->h:Lcom/everyplay/Everyplay/view/d$a;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/d;->a(Lcom/everyplay/Everyplay/view/d$a;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "service"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "redirect_uri"

    const-string v2, "x-everyplay://connection"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/everyplay/Everyplay/a/b$2;

    invoke-direct {v1, p1, p0}, Lcom/everyplay/Everyplay/a/b$2;-><init>(Lcom/everyplay/Everyplay/a/e;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/view/d;->a(Landroid/content/Intent;Lcom/everyplay/Everyplay/communication/k;)V

    return-void
.end method

.method public static c(Lcom/everyplay/Everyplay/a/c;)V
    .locals 3

    sget-object v0, Lcom/everyplay/Everyplay/a/b;->c:Lcom/everyplay/Everyplay/a/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/a/b;->c:Lcom/everyplay/Everyplay/a/a;

    invoke-interface {p0, v0}, Lcom/everyplay/Everyplay/a/c;->onLogin(Lcom/everyplay/Everyplay/a/a;)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/everyplay/Everyplay/a/b;->a(Lcom/everyplay/Everyplay/a/c;)V

    sget-object v0, Lcom/everyplay/Everyplay/view/d$a;->g:Lcom/everyplay/Everyplay/view/d$a;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/d;->a(Lcom/everyplay/Everyplay/view/d$a;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "client_secret"

    sget-object v2, Lcom/everyplay/Everyplay/e/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "client_id"

    sget-object v2, Lcom/everyplay/Everyplay/e/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "redirect_uri"

    sget-object v2, Lcom/everyplay/Everyplay/e/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/everyplay/Everyplay/a/b$8;

    invoke-direct {v1}, Lcom/everyplay/Everyplay/a/b$8;-><init>()V

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/view/d;->a(Landroid/content/Intent;Lcom/everyplay/Everyplay/communication/k;)V

    goto :goto_0
.end method

.method static synthetic c(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "identifier"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Lcom/everyplay/Everyplay/communication/b/a$b;->b:Lcom/everyplay/Everyplay/communication/b/a$b;

    const-string v2, "/users"

    new-instance v3, Lcom/everyplay/Everyplay/a/b$3;

    invoke-direct {v3, p0}, Lcom/everyplay/Everyplay/a/b$3;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v0, v3}, Lcom/everyplay/Everyplay/communication/b/a;->a(Lcom/everyplay/Everyplay/communication/b/a$b;Ljava/lang/String;Lorg/json/JSONObject;Lcom/everyplay/Everyplay/communication/b/h;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/a/b;->c:Lcom/everyplay/Everyplay/a/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()V
    .locals 4

    sget-object v1, Lcom/everyplay/Everyplay/a/b;->c:Lcom/everyplay/Everyplay/a/a;

    const/4 v0, 0x0

    sput-object v0, Lcom/everyplay/Everyplay/a/b;->c:Lcom/everyplay/Everyplay/a/a;

    invoke-static {}, Lcom/everyplay/Everyplay/a/b;->g()V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    sget-object v2, Lcom/everyplay/Everyplay/a/b;->b:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/everyplay/Everyplay/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/a/d;

    invoke-interface {v0, v1}, Lcom/everyplay/Everyplay/a/d;->onLogout(Lcom/everyplay/Everyplay/a/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static e()V
    .locals 4

    invoke-static {}, Lcom/everyplay/Everyplay/device/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kEveryplayAppAPIURLKey"

    invoke-static {v1}, Lcom/everyplay/Everyplay/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "connect/verify/reset"

    invoke-static {v1, v2}, Lcom/everyplay/Everyplay/communication/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "identifier"

    invoke-static {v1, v2, v0}, Lcom/everyplay/Everyplay/communication/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/everyplay/Everyplay/communication/b/a$b;->a:Lcom/everyplay/Everyplay/communication/b/a$b;

    new-instance v2, Lcom/everyplay/Everyplay/a/b$4;

    invoke-direct {v2}, Lcom/everyplay/Everyplay/a/b$4;-><init>()V

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Lcom/everyplay/Everyplay/communication/b/a;->a(Lcom/everyplay/Everyplay/communication/b/a$b;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/everyplay/Everyplay/communication/b/h;)V

    return-void
.end method

.method public static f()V
    .locals 4

    invoke-static {}, Lcom/everyplay/Everyplay/device/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kEveryplayAppAPIURLKey"

    invoke-static {v1}, Lcom/everyplay/Everyplay/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "verified"

    invoke-static {v1, v2}, Lcom/everyplay/Everyplay/communication/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "identifier"

    invoke-static {v1, v2, v0}, Lcom/everyplay/Everyplay/communication/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/everyplay/Everyplay/communication/b/a$b;->a:Lcom/everyplay/Everyplay/communication/b/a$b;

    new-instance v2, Lcom/everyplay/Everyplay/a/b$5;

    invoke-direct {v2}, Lcom/everyplay/Everyplay/a/b$5;-><init>()V

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Lcom/everyplay/Everyplay/communication/b/a;->a(Lcom/everyplay/Everyplay/communication/b/a$b;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/everyplay/Everyplay/communication/b/h;)V

    return-void
.end method

.method public static g()V
    .locals 4

    const-string v0, ""

    invoke-static {}, Lcom/everyplay/Everyplay/a/b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/a/b;->c:Lcom/everyplay/Everyplay/a/a;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/a/a;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/everyplay/Everyplay/communication/c;->b()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "EpAccountPrefsFile"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "data"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic h()Lcom/everyplay/Everyplay/a/a;
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/a/b;->c:Lcom/everyplay/Everyplay/a/a;

    return-object v0
.end method
