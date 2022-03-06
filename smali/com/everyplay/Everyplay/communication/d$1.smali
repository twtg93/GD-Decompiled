.class final Lcom/everyplay/Everyplay/communication/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/communication/d;->a(Ljava/lang/String;Lcom/everyplay/Everyplay/communication/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/everyplay/Everyplay/communication/d$a;

.field final synthetic c:Lcom/everyplay/Everyplay/communication/d;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/communication/d;Ljava/lang/String;Lcom/everyplay/Everyplay/communication/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/communication/d$1;->c:Lcom/everyplay/Everyplay/communication/d;

    iput-object p2, p0, Lcom/everyplay/Everyplay/communication/d$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/everyplay/Everyplay/communication/d$1;->b:Lcom/everyplay/Everyplay/communication/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string v0, "kEveryplayAuthURLKey"

    invoke-static {v0}, Lcom/everyplay/Everyplay/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/d$1;->c:Lcom/everyplay/Everyplay/communication/d;

    iget-object v1, v1, Lcom/everyplay/Everyplay/communication/d;->a:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-virtual {v1}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "error"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "accessing auth interfaces is not allowed from host "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/d$1;->c:Lcom/everyplay/Everyplay/communication/d;

    iget-object v2, p0, Lcom/everyplay/Everyplay/communication/d$1;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/everyplay/Everyplay/communication/d;->a(Lcom/everyplay/Everyplay/communication/d;Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/d$1;->b:Lcom/everyplay/Everyplay/communication/d$a;

    invoke-interface {v0}, Lcom/everyplay/Everyplay/communication/d$a;->a()V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
