.class public Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/a/c;
.implements Lcom/everyplay/Everyplay/a/d;
.implements Lcom/everyplay/Everyplay/c/a/j;
.implements Lcom/everyplay/Everyplay/communication/a/b;
.implements Lcom/everyplay/Everyplay/communication/upload/d;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/everyplay/Everyplay/c/k;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/everyplay/Everyplay/c/n;

.field private c:Lcom/everyplay/Everyplay/c/a;

.field private d:Lcom/everyplay/Everyplay/view/l;


# direct methods
.method public constructor <init>(Lcom/everyplay/Everyplay/view/l;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->b:Lcom/everyplay/Everyplay/c/n;

    iput-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->c:Lcom/everyplay/Everyplay/c/a;

    iput-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->d:Lcom/everyplay/Everyplay/view/l;

    iput-object p1, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->d:Lcom/everyplay/Everyplay/view/l;

    return-void
.end method

.method static synthetic a(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;)Lcom/everyplay/Everyplay/view/l;
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->d:Lcom/everyplay/Everyplay/view/l;

    return-object v0
.end method

.method static synthetic a(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->d:Lcom/everyplay/Everyplay/view/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->d:Lcom/everyplay/Everyplay/view/l;

    invoke-virtual {v0, p1, p2}, Lcom/everyplay/Everyplay/view/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FAILED to send eventType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static synthetic b(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;)Lcom/everyplay/Everyplay/c/a;
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->c:Lcom/everyplay/Everyplay/c/a;

    return-object v0
.end method

.method static synthetic c(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;)Lcom/everyplay/Everyplay/c/n;
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->b:Lcom/everyplay/Everyplay/c/n;

    return-object v0
.end method


# virtual methods
.method public EXT_ab_convert(Lorg/json/JSONObject;)V
    .locals 1

    :try_start_0
    const-string v0, "test"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/communication/a/a;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public EXT_ab_status(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "loading"

    invoke-static {}, Lcom/everyplay/Everyplay/communication/a/a;->a()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "tests"

    invoke-static {}, Lcom/everyplay/Everyplay/communication/a/a;->b()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v2}, Lcom/everyplay/Everyplay/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ab_status"

    invoke-direct {p0, v1, v0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public EXT_ab_test(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    const-string v0, "test"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/communication/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "selection"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "test"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ab_test_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public EXT_add_connection(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "service"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v1, "service"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    new-instance v1, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$18;

    invoke-direct {v1, p0, v2}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$18;-><init>(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;Lorg/json/JSONObject;)V

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/a/b;->a(Ljava/lang/String;Lcom/everyplay/Everyplay/a/e;)V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public EXT_authorize_user(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$3;

    invoke-direct {v0, p0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$3;-><init>(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;)V

    invoke-static {v0}, Lcom/everyplay/Everyplay/a/b;->c(Lcom/everyplay/Everyplay/a/c;)V

    return-void
.end method

.method public EXT_authorized_user(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->EXT_authorized_user(Lorg/json/JSONObject;)V

    return-void
.end method

.method public EXT_authorized_user(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    :try_start_0
    const-string v2, "create"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "create"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    :try_start_1
    const-string v3, "fetch"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "fetch"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    move v1, v0

    move v0, v2

    :goto_2
    invoke-static {}, Lcom/everyplay/Everyplay/a/b;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "authorized_user"

    invoke-static {}, Lcom/everyplay/Everyplay/a/b;->b()Lcom/everyplay/Everyplay/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/everyplay/Everyplay/a/a;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/everyplay/Everyplay/a/b;->f()V

    :goto_3
    return-void

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    new-instance v1, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$19;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$19;-><init>(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;)V

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/a/b;->a(ZLcom/everyplay/Everyplay/a/c;)V

    goto :goto_3

    :cond_3
    const-string v0, "authorized_user"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_3

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public EXT_can_open_url(Lorg/json/JSONObject;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v2, "url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string v2, "url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v2}, Lcom/everyplay/Everyplay/view/d;->b(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v3, "url"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "can_open"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v0, "can_open_url"

    invoke-direct {p0, v0, v2}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v2

    const-string v2, "Could not fetch url"

    invoke-static {v2}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "Could not create response data"

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public EXT_can_send_mail()V
    .locals 5

    const/4 v2, 0x0

    new-instance v0, Lcom/everyplay/Everyplay/c/f;

    const-string v1, "foo@foo.com"

    const-string v3, "none"

    const-string v4, "none"

    invoke-direct {v0, v1, v3, v4}, Lcom/everyplay/Everyplay/c/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/everyplay/Everyplay/communication/c;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0}, Lcom/everyplay/Everyplay/communication/d/a;->a(Lcom/everyplay/Everyplay/c/f;)Landroid/content/Intent;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-static {v3}, Lcom/everyplay/Everyplay/view/d;->b(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "can_send_mail"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    if-eqz v1, :cond_1

    const-string v0, "can_send_mail"

    invoke-direct {p0, v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_2
    const-string v1, "Could not create response data"

    invoke-static {v1}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method public EXT_can_send_mail(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->EXT_can_send_mail()V

    return-void
.end method

.method public EXT_can_send_mail(Lorg/json/JSONObject;)V
    .locals 0

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->EXT_can_send_mail()V

    return-void
.end method

.method public EXT_close_webview(Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {}, Lcom/everyplay/Everyplay/Everyplay;->hideEveryplay()Z

    return-void
.end method

.method public EXT_connection_status(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "status"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-eqz v1, :cond_0

    const-string v0, "connection_status"

    invoke-direct {p0, v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while creating response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public EXT_copy_to_clipboard(Lorg/json/JSONObject;)V
    .locals 4

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->d:Lcom/everyplay/Everyplay/view/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->d:Lcom/everyplay/Everyplay/view/l;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/l;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->d:Lcom/everyplay/Everyplay/view/l;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/l;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, ""

    :try_start_0
    const-string v2, "text"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v2, "text"

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public EXT_deauthorize_user(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->EXT_deauthorize_user(Lorg/json/JSONObject;)V

    return-void
.end method

.method public EXT_deauthorize_user(Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {}, Lcom/everyplay/Everyplay/a/b;->d()V

    return-void
.end method

.method public EXT_get_supported_shares(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->EXT_get_supported_shares(Lorg/json/JSONObject;)V

    return-void
.end method

.method public EXT_get_supported_shares(Lorg/json/JSONObject;)V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "mail"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "sms"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "get_supported_shares"

    invoke-direct {p0, v1, v0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public EXT_is_bundle_installed(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v2, "bundle"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string v1, "bundle"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->a(Ljava/lang/String;)Z

    move-result v0

    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v3, "url"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is_installed"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v0, "is_bundle_installed"

    invoke-direct {p0, v0, v2}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Could not get bundle from data"

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "Could not create response data"

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public EXT_list_connections(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->EXT_list_connections(Lorg/json/JSONObject;)V

    return-void
.end method

.method public EXT_list_connections(Lorg/json/JSONObject;)V
    .locals 5

    const/4 v0, 0x1

    const-string v1, "reload"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "reload"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/everyplay/Everyplay/a/b;->b()Lcom/everyplay/Everyplay/a/a;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v0, "error"

    const-string v2, "not logged in"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const-string v0, "connection_list"

    invoke-direct {p0, v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$2;

    invoke-direct {v2, p0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$2;-><init>(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;)V

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/everyplay/Everyplay/a/a;->c:Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/everyplay/Everyplay/a/a;->c:Lorg/json/JSONArray;

    invoke-interface {v2, v0}, Lcom/everyplay/Everyplay/communication/b/f;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/everyplay/Everyplay/communication/b/a$b;->a:Lcom/everyplay/Everyplay/communication/b/a$b;

    const-string v3, "/me/connections"

    new-instance v4, Lcom/everyplay/Everyplay/a/a$1;

    invoke-direct {v4, v1, v2}, Lcom/everyplay/Everyplay/a/a$1;-><init>(Lcom/everyplay/Everyplay/a/a;Lcom/everyplay/Everyplay/communication/b/f;)V

    const/4 v1, 0x0

    invoke-static {v0, v3, v1, v4}, Lcom/everyplay/Everyplay/communication/b/a;->a(Lcom/everyplay/Everyplay/communication/b/a$b;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/everyplay/Everyplay/communication/b/h;)V

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public EXT_list_sessions(Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public EXT_list_sessions(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/everyplay/Everyplay/c/a/g;->f()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/c/a/c;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/c/a/c;->g()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "sessions"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v1, "session_list"

    invoke-direct {p0, v1, v0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public EXT_log(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSLOG: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Invalid log event received!"

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public EXT_lookup_session(Lorg/json/JSONObject;)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/c/a/g;->a(Ljava/lang/String;)Lcom/everyplay/Everyplay/c/a/c;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "session:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/everyplay/Everyplay/c/a/c;->g()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "error"

    const-string v3, "not found"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "session:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public EXT_open_browser(Lorg/json/JSONObject;)V
    .locals 11

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    const-string v0, "Cancel"

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->d:Lcom/everyplay/Everyplay/view/l;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->d:Lcom/everyplay/Everyplay/view/l;

    invoke-virtual {v1}, Lcom/everyplay/Everyplay/view/l;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->d:Lcom/everyplay/Everyplay/view/l;

    invoke-virtual {v1}, Lcom/everyplay/Everyplay/view/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->d:Lcom/everyplay/Everyplay/view/l;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/everyplay/Everyplay/R$string;->everyplay_cancel_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    :try_start_0
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    :try_start_1
    const-string v3, "modal"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "modal"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_5

    move v5, v6

    :goto_2
    :try_start_2
    const-string v3, "show_toolbar"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "show_toolbar"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result v3

    if-nez v3, :cond_4

    :goto_3
    :try_start_3
    const-string v3, "close_label"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "close_label"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v3

    :goto_4
    :try_start_4
    const-string v1, "end_prefix"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "end_prefix"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    move-result-object v1

    :goto_5
    move-object v2, v3

    move-object v6, v1

    :goto_6
    if-eqz v0, :cond_1

    const/4 v1, -0x1

    :try_start_5
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v1

    :goto_7
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    :try_start_6
    const-string v3, "id"

    invoke-virtual {v8, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    :goto_8
    const-string v3, "ensure_login"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_7
    const-string v3, "ensure_login"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_0
    :goto_9
    sget-object v3, Lcom/everyplay/Everyplay/view/f$c;->a:Lcom/everyplay/Everyplay/view/f$c;

    new-instance v7, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$14;

    invoke-direct {v7, p0, v8}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$14;-><init>(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;Lorg/json/JSONObject;)V

    invoke-static/range {v0 .. v7}, Lcom/everyplay/Everyplay/view/f;->a(Ljava/lang/String;ILjava/lang/String;Lcom/everyplay/Everyplay/view/f$c;ZZLjava/lang/String;Lcom/everyplay/Everyplay/communication/k;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Url missing from data, not opening browser!"

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->a(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception v3

    move v5, v6

    move-object v9, v1

    move-object v1, v3

    move-object v3, v9

    :goto_a
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Problems reading data: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    move-object v6, v2

    move-object v2, v3

    move v9, v4

    move v4, v5

    move v5, v9

    goto :goto_6

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_8

    :catch_3
    move-exception v3

    const-string v3, "Should have fetched ensure_login -value, but couldn\'t"

    invoke-static {v3}, Lcom/everyplay/Everyplay/device/b;->a(Ljava/lang/String;)V

    goto :goto_9

    :catch_4
    move-exception v3

    goto :goto_7

    :catch_5
    move-exception v3

    move v4, v5

    move v5, v6

    move-object v9, v3

    move-object v3, v1

    move-object v1, v9

    goto :goto_a

    :catch_6
    move-exception v3

    move-object v9, v3

    move-object v3, v1

    move-object v1, v9

    move v10, v5

    move v5, v4

    move v4, v10

    goto :goto_a

    :catch_7
    move-exception v1

    move v9, v5

    move v5, v4

    move v4, v9

    goto :goto_a

    :cond_2
    move-object v1, v2

    goto :goto_5

    :cond_3
    move-object v3, v1

    goto/16 :goto_4

    :cond_4
    move v4, v6

    goto/16 :goto_3

    :cond_5
    move v5, v4

    goto/16 :goto_2

    :cond_6
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public EXT_open_editor_with_session(Lorg/json/JSONObject;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    sget-object v1, Lcom/everyplay/Everyplay/view/f$c;->a:Lcom/everyplay/Everyplay/view/f$c;

    new-instance v2, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$6;

    invoke-direct {v2, p0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$6;-><init>(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;)V

    invoke-static {v0, v1, v2}, Lcom/everyplay/Everyplay/view/f;->a(Ljava/lang/String;Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;)V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    const-string v1, "Could not fetch sessionId from data"

    invoke-static {v1}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public EXT_open_everyplay(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "kEveryplayDefaultPathKey"

    invoke-static {v0}, Lcom/everyplay/Everyplay/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "path"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "path"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    sget-object v1, Lcom/everyplay/Everyplay/view/f$c;->c:Lcom/everyplay/Everyplay/view/f$c;

    invoke-static {}, Lcom/everyplay/Everyplay/view/d;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/everyplay/Everyplay/view/f$c;->b:Lcom/everyplay/Everyplay/view/f$c;

    :cond_1
    new-instance v2, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$5;

    invoke-direct {v2, p0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$5;-><init>(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;)V

    invoke-static {v0, v1, v2}, Lcom/everyplay/Everyplay/view/f;->b(Ljava/lang/String;Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;)V

    return-void

    :catch_0
    move-exception v1

    const-string v1, "Path not found in open data"

    invoke-static {v1}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public EXT_open_store(Lorg/json/JSONObject;)V
    .locals 3

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    new-instance v1, Lcom/everyplay/Everyplay/c/h;

    invoke-direct {v1, p1}, Lcom/everyplay/Everyplay/c/h;-><init>(Lorg/json/JSONObject;)V

    iget v0, v1, Lcom/everyplay/Everyplay/c/h;->a:I

    if-gez v0, :cond_0

    const-string v0, "id IS MISSING FROM GAMEDATA, data won\'t evaluate as valid GameData!"

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    :cond_0
    iget v0, v1, Lcom/everyplay/Everyplay/c/h;->b:I

    if-gez v0, :cond_1

    const-string v0, "profile_id IS MISSING FROM GAMEDATA, data won\'t evaluate as valid GameData!"

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    :cond_1
    iget v0, v1, Lcom/everyplay/Everyplay/c/h;->c:I

    if-gez v0, :cond_2

    const-string v0, "user_id IS MISSING FROM GAMEDATA, data won\'t evaluate as valid GameData!"

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    :cond_2
    iget v0, v1, Lcom/everyplay/Everyplay/c/h;->d:I

    if-gez v0, :cond_3

    const-string v0, "content_rating IS MISSING FROM GAMEDATA, data won\'t evaluate as valid GameData!"

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    :cond_3
    iget v0, v1, Lcom/everyplay/Everyplay/c/h;->h:I

    if-gez v0, :cond_4

    const-string v0, "video_count IS MISSING FROM GAMEDATA, data won\'t evaluate as valid GameData!"

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    :cond_4
    iget-object v0, v1, Lcom/everyplay/Everyplay/c/h;->l:Lcom/everyplay/Everyplay/c/p;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/everyplay/Everyplay/c/h;->l:Lcom/everyplay/Everyplay/c/p;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/c/p;->b()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const-string v0, "profile IS NULL or IS NOT VALID, data won\'t evaluate as valid GameData!"

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    :cond_6
    iget-object v0, v1, Lcom/everyplay/Everyplay/c/h;->m:Lcom/everyplay/Everyplay/c/p;

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/everyplay/Everyplay/c/h;->m:Lcom/everyplay/Everyplay/c/p;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/c/p;->b()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const-string v0, "owner IS NULL or IS NOT VALID, data won\'t evaluate as valid GameData!"

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    :cond_8
    iget v0, v1, Lcom/everyplay/Everyplay/c/h;->a:I

    if-ltz v0, :cond_a

    iget v0, v1, Lcom/everyplay/Everyplay/c/h;->b:I

    if-ltz v0, :cond_a

    iget v0, v1, Lcom/everyplay/Everyplay/c/h;->c:I

    if-ltz v0, :cond_a

    iget v0, v1, Lcom/everyplay/Everyplay/c/h;->d:I

    if-ltz v0, :cond_a

    iget v0, v1, Lcom/everyplay/Everyplay/c/h;->h:I

    if-ltz v0, :cond_a

    iget-object v0, v1, Lcom/everyplay/Everyplay/c/h;->l:Lcom/everyplay/Everyplay/c/p;

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/everyplay/Everyplay/c/h;->l:Lcom/everyplay/Everyplay/c/p;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/c/p;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/everyplay/Everyplay/c/h;->m:Lcom/everyplay/Everyplay/c/p;

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/everyplay/Everyplay/c/h;->m:Lcom/everyplay/Everyplay/c/p;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/c/p;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_9

    new-instance v0, Lcom/everyplay/Everyplay/view/g;

    invoke-direct {v0, v1}, Lcom/everyplay/Everyplay/view/g;-><init>(Lcom/everyplay/Everyplay/c/h;)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public EXT_open_url(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v1}, Lcom/everyplay/Everyplay/view/d;->b(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {v1}, Lcom/everyplay/Everyplay/view/d;->a(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Could not get url from data"

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public EXT_play_video(Lorg/json/JSONObject;)V
    .locals 2

    sget-object v0, Lcom/everyplay/Everyplay/view/f$c;->a:Lcom/everyplay/Everyplay/view/f$c;

    new-instance v1, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$4;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$4;-><init>(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;)V

    invoke-static {p1, v0, v1}, Lcom/everyplay/Everyplay/view/f;->a(Lorg/json/JSONObject;Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;)V

    return-void
.end method

.method public EXT_pong(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->d:Lcom/everyplay/Everyplay/view/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->d:Lcom/everyplay/Everyplay/view/l;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/l;->a()V

    :cond_0
    return-void
.end method

.method public EXT_pong(Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->EXT_pong(Ljava/lang/String;)V

    return-void
.end method

.method public EXT_prefetch(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$7;

    invoke-direct {v0, p0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$7;-><init>(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;)V

    invoke-static {v0}, Lcom/everyplay/Everyplay/communication/c/b;->a(Lcom/everyplay/Everyplay/communication/c/c;)V

    return-void
.end method

.method public EXT_reset_identifier(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->EXT_reset_identifier(Lorg/json/JSONObject;)V

    return-void
.end method

.method public EXT_reset_identifier(Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {}, Lcom/everyplay/Everyplay/a/b;->e()V

    return-void
.end method

.method public EXT_responds_to(Lorg/json/JSONObject;)V
    .locals 12

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-string v0, "selectors"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "selectors"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v5, v0

    :goto_0
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    :try_start_1
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v8, v7

    move v2, v1

    :goto_3
    if-ge v2, v8, :cond_4

    aget-object v9, v7, v2

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "EXT_"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v2, 0x1

    :goto_4
    :try_start_2
    invoke-virtual {v6, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "Could not find required property in JSON"

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    move-object v5, v4

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v2, "Could not fetch selector name from array"

    invoke-static {v2}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_2
    move-exception v2

    const-string v2, "Problems adding selector to response"

    invoke-static {v2}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    goto :goto_5

    :cond_2
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    const-string v0, "responds_to"

    invoke-direct {p0, v0, v6}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_3
    return-void

    :cond_4
    move v2, v1

    goto :goto_4
.end method

.method public EXT_select_image(Lorg/json/JSONObject;)V
    .locals 4

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    const/16 v2, 0x64

    const-string v3, "scale"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    const-string v3, "scale"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    :cond_0
    :goto_0
    const-string v3, "quality"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_1
    const-string v3, "quality"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    :cond_1
    :goto_1
    new-instance v3, Lcom/everyplay/Everyplay/c/j;

    invoke-direct {v3, v0, v1, v2}, Lcom/everyplay/Everyplay/c/j;-><init>(DI)V

    new-instance v0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$15;

    invoke-direct {v0, p0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$15;-><init>(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Lcom/everyplay/Everyplay/communication/e$2;

    invoke-direct {v2, v3, v0}, Lcom/everyplay/Everyplay/communication/e$2;-><init>(Lcom/everyplay/Everyplay/c/j;Lcom/everyplay/Everyplay/communication/m;)V

    invoke-static {v1, v2}, Lcom/everyplay/Everyplay/view/d;->a(Landroid/content/Intent;Lcom/everyplay/Everyplay/communication/k;)V

    return-void

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public EXT_send_analytics_event(Lorg/json/JSONObject;)V
    .locals 8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    const-string v0, "path"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "events"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "path"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "events"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Creating event from data: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/everyplay/Everyplay/c/b;

    invoke-direct {v5, v1}, Lcom/everyplay/Everyplay/c/b;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error fetching basic data for event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    :cond_0
    :goto_3
    return-void

    :catch_1
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error while getting event data: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "Event data is NULL"

    invoke-static {v1}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sending "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " event(s) to path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v4}, Lcom/everyplay/Everyplay/communication/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_3
.end method

.method public EXT_send_mail(Lorg/json/JSONObject;)V
    .locals 7

    const/4 v5, 0x0

    :try_start_0
    new-instance v0, Lcom/everyplay/Everyplay/c/f;

    const-string v1, "recipients"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "recipients"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "subject"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "subject"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v3, "body"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "body"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    const-string v4, "cc_recipients"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "cc_recipients"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    const-string v6, "bcc_recipients"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v5, "bcc_recipients"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_0
    invoke-direct/range {v0 .. v5}, Lcom/everyplay/Everyplay/c/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$17;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$17;-><init>(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;)V

    invoke-static {v0}, Lcom/everyplay/Everyplay/communication/d/a;->a(Lcom/everyplay/Everyplay/c/f;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "Choose an Email client :"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    new-instance v2, Lcom/everyplay/Everyplay/communication/d/a$1;

    invoke-direct {v2, v1}, Lcom/everyplay/Everyplay/communication/d/a$1;-><init>(Lcom/everyplay/Everyplay/communication/d/b;)V

    invoke-static {v0, v2}, Lcom/everyplay/Everyplay/view/d;->a(Landroid/content/Intent;Lcom/everyplay/Everyplay/communication/k;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    return-void

    :cond_1
    move-object v1, v5

    goto :goto_0

    :cond_2
    move-object v2, v5

    goto :goto_1

    :cond_3
    move-object v3, v5

    goto :goto_2

    :cond_4
    move-object v4, v5

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v0, "Could not send email!"

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public EXT_session_thumbnail_url(Lorg/json/JSONObject;)V
    .locals 6

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/everyplay/Everyplay/c/a/g;->a(Ljava/lang/String;)Lcom/everyplay/Everyplay/c/a/c;

    move-result-object v3

    if-eqz v3, :cond_5

    sget-object v0, Lcom/everyplay/Everyplay/c/a/d;->i:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v3, v0}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/everyplay/Everyplay/c/a/d;->i:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v3, v0}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/everyplay/Everyplay/c/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    if-nez v0, :cond_4

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v0, Lcom/everyplay/Everyplay/c/a/d;->a:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v3, v0}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/everyplay/Everyplay/c/a/d;->a:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v3, v0}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/everyplay/Everyplay/c/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/everyplay/Everyplay/c/a/d;->i:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v3, v1}, Lcom/everyplay/Everyplay/c/a/c;->a(Lcom/everyplay/Everyplay/c/a/d;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/everyplay/Everyplay/c/g;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/everyplay/Everyplay/c/a/d;->i:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v3, v0}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/everyplay/Everyplay/c/g;->d(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/d;->a([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "thumbnail_url"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "data:image/jpg;base64, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "session_thumbnail:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "error"

    const-string v3, "not found"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "session_thumbnail_error:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1
.end method

.method public EXT_set_fullscreen(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "fullscreen"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "fullscreen"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/everyplay/Everyplay/communication/c;->b()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v1, v1, Lcom/everyplay/Everyplay/view/EveryplaySocialActivity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->d:Lcom/everyplay/Everyplay/view/l;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->d:Lcom/everyplay/Everyplay/view/l;

    invoke-virtual {v1, v0}, Lcom/everyplay/Everyplay/view/l;->setFullscreen(Z)V

    :cond_1
    return-void

    :catch_0
    move-exception v1

    const-string v1, "Could not fetch fullscreen property from data"

    invoke-static {v1}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public EXT_show_action_list(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    new-instance v0, Lcom/everyplay/Everyplay/c/a;

    invoke-direct {v0, p1}, Lcom/everyplay/Everyplay/c/a;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->c:Lcom/everyplay/Everyplay/c/a;

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->c:Lcom/everyplay/Everyplay/c/a;

    iget v1, v0, Lcom/everyplay/Everyplay/c/a;->b:I

    if-ltz v1, :cond_1

    iget-object v1, v0, Lcom/everyplay/Everyplay/c/a;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/everyplay/Everyplay/c/a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$1;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$1;-><init>(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public EXT_show_native_overlay(Lorg/json/JSONObject;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "visible"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "visible"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->d:Lcom/everyplay/Everyplay/view/l;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/l;->c()V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Native overlay data is broken"

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->d:Lcom/everyplay/Everyplay/view/l;

    invoke-static {}, Lcom/everyplay/Everyplay/e/a;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/everyplay/Everyplay/view/l$1;

    invoke-direct {v2, v0}, Lcom/everyplay/Everyplay/view/l$1;-><init>(Lcom/everyplay/Everyplay/view/l;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public EXT_show_native_topbar(Lorg/json/JSONObject;)V
    .locals 5

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_0

    const-string v0, "visible"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "visible"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    :try_start_1
    const-string v0, "animation_duration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    :goto_0
    cmpl-double v2, v0, v2

    if-lez v2, :cond_2

    if-nez v4, :cond_1

    iget-object v2, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->d:Lcom/everyplay/Everyplay/view/l;

    invoke-virtual {v2, v0, v1}, Lcom/everyplay/Everyplay/view/l;->a(D)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-wide v0, v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->d:Lcom/everyplay/Everyplay/view/l;

    invoke-virtual {v2, v0, v1}, Lcom/everyplay/Everyplay/view/l;->b(D)V

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->d:Lcom/everyplay/Everyplay/view/l;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/l;->e()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->d:Lcom/everyplay/Everyplay/view/l;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/l;->f()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public EXT_sidemenu_data(Lorg/json/JSONArray;)V
    .locals 6

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a:Ljava/util/ArrayList;

    move v1, v2

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v0, :cond_0

    new-instance v3, Lcom/everyplay/Everyplay/c/k;

    invoke-direct {v3, v0}, Lcom/everyplay/Everyplay/c/k;-><init>(Lorg/json/JSONObject;)V

    iget-object v0, v3, Lcom/everyplay/Everyplay/c/k;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v3, Lcom/everyplay/Everyplay/c/k;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Something went wrong while getting next index: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$12;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$12;-><init>(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public EXT_sidemenu_toggle(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->d:Lcom/everyplay/Everyplay/view/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->d:Lcom/everyplay/Everyplay/view/l;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/l;->b()V

    :cond_0
    return-void
.end method

.method public EXT_social_network_ensure_permissions(Lorg/json/JSONObject;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    :try_start_2
    const-string v1, "permissions"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    move v3, v4

    :goto_0
    :try_start_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    move-object v6, v0

    move-object v0, v3

    move-object v3, v6

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    invoke-static {v0}, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;->a(Ljava/lang/String;)Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

    move-result-object v0

    sget-object v3, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;->a:Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

    if-eq v0, v3, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_4
    const-string v2, "error"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ensuring permissions not supported for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "social_network_ensure_permissions:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_3
    return-void

    :cond_1
    invoke-static {}, Lcom/everyplay/Everyplay/communication/socialnetworks/EveryplayFacebook;->a()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v2, "sdk"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "error"

    const-string v3, "Facebook sdk not installed"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "social_network_ensure_permissions:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_3

    :cond_2
    new-instance v3, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$9;

    invoke-direct {v3, p0, p1, v0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$9;-><init>(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;Lorg/json/JSONObject;Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;)V

    invoke-static {v2, v1, v3}, Lcom/everyplay/Everyplay/communication/socialnetworks/EveryplayFacebook;->a(Ljava/lang/String;[Ljava/lang/String;Lcom/everyplay/Everyplay/communication/socialnetworks/EveryplayFacebook$a;)V

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_4

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v2, v3

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    goto/16 :goto_1

    :catch_4
    move-exception v1

    move-object v6, v1

    move-object v1, v3

    move-object v3, v6

    goto/16 :goto_1

    :catch_5
    move-exception v3

    goto/16 :goto_1
.end method

.method public EXT_social_network_login(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-static {v0}, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;->a(Ljava/lang/String;)Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v3, "type"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$10;

    invoke-direct {v0, p0, v2}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$10;-><init>(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;Lorg/json/JSONObject;)V

    sget-object v2, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;->a:Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/everyplay/Everyplay/communication/socialnetworks/EveryplayFacebook;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$11;

    invoke-direct {v2, p0, v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$11;-><init>(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;Lcom/everyplay/Everyplay/communication/socialnetworks/b;Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;)V

    invoke-static {v2}, Lcom/everyplay/Everyplay/communication/socialnetworks/EveryplayFacebook;->a(Lcom/everyplay/Everyplay/communication/socialnetworks/a;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->openOauthFlow(Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public EXT_start_bundle(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v2, "bundle"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string v1, "bundle"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->a(Ljava/lang/String;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/everyplay/Everyplay/view/d;->a(Ljava/lang/String;)Z

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Could not get bundle from data"

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public EXT_take_photo(Lorg/json/JSONObject;)V
    .locals 8

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-string v4, "scale"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    const-string v4, "scale"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    :cond_0
    :goto_0
    const-string v4, "quality"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_1
    const-string v4, "quality"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    :cond_1
    :goto_1
    new-instance v4, Lcom/everyplay/Everyplay/c/j;

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-direct {v4, v0, v1, v2}, Lcom/everyplay/Everyplay/c/j;-><init>(DI)V

    new-instance v0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$16;

    invoke-direct {v0, p0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$16;-><init>(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tmp_pic_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/everyplay/Everyplay/communication/e;->a:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/everyplay/Everyplay/communication/e;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/everyplay/Everyplay/c/g;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "output"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v2, Lcom/everyplay/Everyplay/communication/e$1;

    invoke-direct {v2, v1, v0, v4}, Lcom/everyplay/Everyplay/communication/e$1;-><init>(Ljava/lang/String;Lcom/everyplay/Everyplay/communication/m;Lcom/everyplay/Everyplay/c/j;)V

    invoke-static {v3, v2}, Lcom/everyplay/Everyplay/view/d;->a(Landroid/content/Intent;Lcom/everyplay/Everyplay/communication/k;)V

    return-void

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public EXT_topbar_data(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    new-instance v0, Lcom/everyplay/Everyplay/c/n;

    invoke-direct {v0, p1}, Lcom/everyplay/Everyplay/c/n;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->b:Lcom/everyplay/Everyplay/c/n;

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->b:Lcom/everyplay/Everyplay/c/n;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$13;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$13;-><init>(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public EXT_update_session(Lorg/json/JSONObject;)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "client_metadata"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0}, Lcom/everyplay/Everyplay/c/a/g;->a(Ljava/lang/String;)Lcom/everyplay/Everyplay/c/a/c;

    move-result-object v3

    if-eqz v3, :cond_1

    iput-boolean v1, v3, Lcom/everyplay/Everyplay/c/a/c;->d:Z

    invoke-virtual {v3}, Lcom/everyplay/Everyplay/c/a/c;->e()V

    invoke-virtual {v3, v2}, Lcom/everyplay/Everyplay/c/a/c;->a(Lorg/json/JSONObject;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "session:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/everyplay/Everyplay/c/a/c;->g()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "error"

    const-string v3, "not found"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "session:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public EXT_update_user_info(Lorg/json/JSONObject;)V
    .locals 2

    invoke-static {}, Lcom/everyplay/Everyplay/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/a/b;->b()Lcom/everyplay/Everyplay/a/a;

    move-result-object v0

    new-instance v1, Lcom/everyplay/Everyplay/c/p;

    invoke-direct {v1, p1}, Lcom/everyplay/Everyplay/c/p;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, v0, Lcom/everyplay/Everyplay/a/a;->a:Lcom/everyplay/Everyplay/c/p;

    invoke-static {}, Lcom/everyplay/Everyplay/a/b;->g()V

    :cond_0
    return-void
.end method

.method public EXT_upload_session(Lorg/json/JSONObject;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "upload_session: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/c/a/g;->a(Ljava/lang/String;)Lcom/everyplay/Everyplay/c/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/everyplay/Everyplay/c/a/c;->e:Lcom/everyplay/Everyplay/c/a/c$a;

    sget-object v2, Lcom/everyplay/Everyplay/c/a/c$a;->e:Lcom/everyplay/Everyplay/c/a/c$a;

    if-eq v1, v2, :cond_0

    iget-object v0, v0, Lcom/everyplay/Everyplay/c/a/c;->j:Lcom/everyplay/Everyplay/communication/upload/b;

    iget-object v1, v0, Lcom/everyplay/Everyplay/communication/upload/b;->c:Lcom/everyplay/Everyplay/communication/upload/b$a;

    sget-object v2, Lcom/everyplay/Everyplay/communication/upload/b$a;->a:Lcom/everyplay/Everyplay/communication/upload/b$a;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/communication/upload/b;->e()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/everyplay/Everyplay/communication/upload/b$a;->d:Lcom/everyplay/Everyplay/communication/upload/b$a;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public EXT_wifi_status(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->j()Z

    move-result v0

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "status"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-eqz v1, :cond_0

    const-string v0, "wifi_status"

    invoke-direct {p0, v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while creating response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->d:Lcom/everyplay/Everyplay/view/l;

    iput-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->c:Lcom/everyplay/Everyplay/c/a;

    iput-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->b:Lcom/everyplay/Everyplay/c/n;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->b:Lcom/everyplay/Everyplay/c/n;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->b:Lcom/everyplay/Everyplay/c/n;

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

.method public onClean(Lcom/everyplay/Everyplay/c/a/c;)V
    .locals 0

    return-void
.end method

.method public onClose(Lcom/everyplay/Everyplay/c/a/c;)V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Exception;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onItemUploadCompleted(Lcom/everyplay/Everyplay/communication/upload/a;)V
    .locals 0

    return-void
.end method

.method public onItemUploadFailed(Lcom/everyplay/Everyplay/communication/upload/a;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onItemUploadProgress(Lcom/everyplay/Everyplay/communication/upload/a;)V
    .locals 0

    return-void
.end method

.method public onItemUploadStarted(Lcom/everyplay/Everyplay/communication/upload/a;)V
    .locals 0

    return-void
.end method

.method public onLogin(Lcom/everyplay/Everyplay/a/a;)Z
    .locals 2

    const-string v0, "account_store_did_change"

    invoke-virtual {p1}, Lcom/everyplay/Everyplay/a/a;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onLogout(Lcom/everyplay/Everyplay/a/a;)Z
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "error"

    const-string v2, "not authorized"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "account_store_did_change"

    invoke-direct {p0, v1, v0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onOpen(Lcom/everyplay/Everyplay/c/a/c;)V
    .locals 0

    return-void
.end method

.method public onRecordingStarted(Lcom/everyplay/Everyplay/c/a/c;)V
    .locals 0

    return-void
.end method

.method public onRecordingStopped(Lcom/everyplay/Everyplay/c/a/c;)V
    .locals 0

    return-void
.end method

.method public onTestsLoaded()V
    .locals 2

    const-string v0, "ab_tests_loaded"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public onUpdate(Lcom/everyplay/Everyplay/c/a/c;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "session:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/everyplay/Everyplay/c/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/everyplay/Everyplay/c/a/c;->g()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public onUploadCompleted(Lcom/everyplay/Everyplay/communication/upload/b;)V
    .locals 0

    return-void
.end method

.method public onUploadFailed(Lcom/everyplay/Everyplay/communication/upload/b;Ljava/lang/Exception;)V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "error"

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "session_upload_error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/everyplay/Everyplay/communication/upload/b;->b:Lcom/everyplay/Everyplay/c/a/c;

    iget-object v2, v2, Lcom/everyplay/Everyplay/c/a/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onUploadProgress(Lcom/everyplay/Everyplay/communication/upload/b;)V
    .locals 0

    return-void
.end method

.method public onUploadSessionReceived(Lcom/everyplay/Everyplay/communication/upload/b;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "session_video_info:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/everyplay/Everyplay/communication/upload/b;->b:Lcom/everyplay/Everyplay/c/a/c;

    iget-object v1, v1, Lcom/everyplay/Everyplay/c/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/everyplay/Everyplay/communication/upload/b;->e:Lcom/everyplay/Everyplay/c/o;

    invoke-virtual {v1}, Lcom/everyplay/Everyplay/c/o;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "video"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onUploadStarted(Lcom/everyplay/Everyplay/communication/upload/b;)V
    .locals 0

    return-void
.end method

.method public openOauthFlow(Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;)V
    .locals 5

    const-string v0, "kEveryplaySocnetURLKey"

    invoke-static {v0}, Lcom/everyplay/Everyplay/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/everyplay/Everyplay/view/f$c;->a:Lcom/everyplay/Everyplay/view/f$c;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$8;

    invoke-direct {v4, p0, p1}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$8;-><init>(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/everyplay/Everyplay/view/f;->a(Ljava/lang/String;Lcom/everyplay/Everyplay/view/f$c;ZZLcom/everyplay/Everyplay/communication/k;)V

    return-void
.end method
