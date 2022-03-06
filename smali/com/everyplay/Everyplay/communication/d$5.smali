.class final Lcom/everyplay/Everyplay/communication/d$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/communication/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/communication/d;->ai_sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/everyplay/Everyplay/communication/d$5;->c:Lcom/everyplay/Everyplay/communication/d;

    iput-object p2, p0, Lcom/everyplay/Everyplay/communication/d$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/everyplay/Everyplay/communication/d$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/everyplay/Everyplay/c/b;

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/everyplay/Everyplay/communication/d$5;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/everyplay/Everyplay/c/b;-><init>(Lorg/json/JSONObject;)V

    const-string v1, "event/nativeauth"

    invoke-static {v1, v0}, Lcom/everyplay/Everyplay/communication/a;->a(Ljava/lang/String;Lcom/everyplay/Everyplay/c/b;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/d$5;->c:Lcom/everyplay/Everyplay/communication/d;

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/d$5;->b:Ljava/lang/String;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/everyplay/Everyplay/communication/d;->a(Lcom/everyplay/Everyplay/communication/d;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
