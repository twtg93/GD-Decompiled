.class final Lcom/everyplay/Everyplay/communication/d$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/communication/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/communication/d;->ai_changeTopBar(Ljava/lang/String;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/everyplay/Everyplay/communication/d$6;->b:Lcom/everyplay/Everyplay/communication/d;

    iput-object p2, p0, Lcom/everyplay/Everyplay/communication/d$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/d$6;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/d$6;->b:Lcom/everyplay/Everyplay/communication/d;

    iget-object v1, v1, Lcom/everyplay/Everyplay/communication/d;->c:Lcom/everyplay/Everyplay/communication/d$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/d$6;->b:Lcom/everyplay/Everyplay/communication/d;

    iget-object v1, v1, Lcom/everyplay/Everyplay/communication/d;->c:Lcom/everyplay/Everyplay/communication/d$b;

    invoke-interface {v1, v0}, Lcom/everyplay/Everyplay/communication/d$b;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
