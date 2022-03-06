.class final Lcom/everyplay/Everyplay/communication/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/communication/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/everyplay/Everyplay/communication/g;->g()Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lcom/everyplay/Everyplay/communication/b/a$b;->b:Lcom/everyplay/Everyplay/communication/b/a$b;

    invoke-static {}, Lcom/everyplay/Everyplay/communication/g;->h()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/everyplay/Everyplay/communication/g$1$1;

    invoke-direct {v3, p0}, Lcom/everyplay/Everyplay/communication/g$1$1;-><init>(Lcom/everyplay/Everyplay/communication/g$1;)V

    invoke-static {v1, v2, v0, v3}, Lcom/everyplay/Everyplay/communication/b/a;->a(Lcom/everyplay/Everyplay/communication/b/a$b;Ljava/lang/String;Lorg/json/JSONObject;Lcom/everyplay/Everyplay/communication/b/h;)V

    return-void
.end method
