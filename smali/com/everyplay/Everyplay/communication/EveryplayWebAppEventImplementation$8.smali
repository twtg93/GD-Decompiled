.class final Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/communication/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->openOauthFlow(Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

.field final synthetic b:Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$8;->b:Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;

    iput-object p2, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$8;->a:Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/content/Intent;Landroid/os/Bundle;)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "error"

    const-string v2, "user cancelled"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$8;->b:Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "social_network_login:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$8;->a:Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

    invoke-virtual {v3}, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "data"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_2
    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$8;->b:Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "social_network_login:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$8;->a:Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

    invoke-virtual {v3}, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xc355
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
