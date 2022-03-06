.class final Lcom/everyplay/Everyplay/communication/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/communication/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/communication/d;->ai_isAllowed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/everyplay/Everyplay/communication/d;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/communication/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/communication/d$2;->b:Lcom/everyplay/Everyplay/communication/d;

    iput-object p2, p0, Lcom/everyplay/Everyplay/communication/d$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "allowed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/d$2;->b:Lcom/everyplay/Everyplay/communication/d;

    iget-object v2, p0, Lcom/everyplay/Everyplay/communication/d$2;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/everyplay/Everyplay/communication/d;->a(Lcom/everyplay/Everyplay/communication/d;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
