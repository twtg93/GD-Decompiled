.class final Lcom/everyplay/Everyplay/communication/d$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/communication/socialnetworks/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/communication/d$4;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/everyplay/Everyplay/communication/d$4;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/communication/d$4;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/communication/d$4$1;->b:Lcom/everyplay/Everyplay/communication/d$4;

    iput-object p2, p0, Lcom/everyplay/Everyplay/communication/d$4$1;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;Ljava/lang/Exception;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/d$4$1;->a:Lorg/json/JSONObject;

    const-string v1, "error"

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/d$4$1;->b:Lcom/everyplay/Everyplay/communication/d$4;

    iget-object v0, v0, Lcom/everyplay/Everyplay/communication/d$4;->c:Lcom/everyplay/Everyplay/communication/d;

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/d$4$1;->b:Lcom/everyplay/Everyplay/communication/d$4;

    iget-object v1, v1, Lcom/everyplay/Everyplay/communication/d$4;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/everyplay/Everyplay/communication/d$4$1;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/everyplay/Everyplay/communication/d;->a(Lcom/everyplay/Everyplay/communication/d;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/d$4$1;->a:Lorg/json/JSONObject;

    const-string v1, "access_token"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/d$4$1;->a:Lorg/json/JSONObject;

    const-string v1, "scopes"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/d$4$1;->a:Lorg/json/JSONObject;

    const-string v1, "expires_at"

    invoke-virtual {v0, v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/d$4$1;->b:Lcom/everyplay/Everyplay/communication/d$4;

    iget-object v0, v0, Lcom/everyplay/Everyplay/communication/d$4;->c:Lcom/everyplay/Everyplay/communication/d;

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/d$4$1;->b:Lcom/everyplay/Everyplay/communication/d$4;

    iget-object v1, v1, Lcom/everyplay/Everyplay/communication/d$4;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/everyplay/Everyplay/communication/d$4$1;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/everyplay/Everyplay/communication/d;->a(Lcom/everyplay/Everyplay/communication/d;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
