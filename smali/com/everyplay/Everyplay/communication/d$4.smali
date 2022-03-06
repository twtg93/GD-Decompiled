.class final Lcom/everyplay/Everyplay/communication/d$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/communication/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/communication/d;->ai_socialNetworkLogin(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/everyplay/Everyplay/communication/d;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/communication/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/communication/d$4;->c:Lcom/everyplay/Everyplay/communication/d;

    iput-object p2, p0, Lcom/everyplay/Everyplay/communication/d$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/everyplay/Everyplay/communication/d$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/d$4;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;->a(Ljava/lang/String;)Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "type"

    iget-object v3, p0, Lcom/everyplay/Everyplay/communication/d$4;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lcom/everyplay/Everyplay/communication/d$4$1;

    invoke-direct {v2, p0, v1}, Lcom/everyplay/Everyplay/communication/d$4$1;-><init>(Lcom/everyplay/Everyplay/communication/d$4;Lorg/json/JSONObject;)V

    sget-object v1, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;->a:Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/communication/socialnetworks/EveryplayFacebook;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/everyplay/Everyplay/communication/d$4$2;

    invoke-direct {v1, p0, v2, v0}, Lcom/everyplay/Everyplay/communication/d$4$2;-><init>(Lcom/everyplay/Everyplay/communication/d$4;Lcom/everyplay/Everyplay/communication/socialnetworks/b;Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;)V

    invoke-static {v1}, Lcom/everyplay/Everyplay/communication/socialnetworks/EveryplayFacebook;->a(Lcom/everyplay/Everyplay/communication/socialnetworks/a;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/d$4;->c:Lcom/everyplay/Everyplay/communication/d;

    iget-object v2, p0, Lcom/everyplay/Everyplay/communication/d$4;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/everyplay/Everyplay/communication/d;->a(Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
