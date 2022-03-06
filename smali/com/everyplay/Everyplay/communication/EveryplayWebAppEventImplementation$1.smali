.class final Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->EXT_show_action_list(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$1;->a:Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$1;->a:Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;

    invoke-static {v0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;)Lcom/everyplay/Everyplay/view/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$1;->a:Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;

    invoke-static {v0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->a(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;)Lcom/everyplay/Everyplay/view/l;

    move-result-object v0

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$1;->a:Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;

    invoke-static {v1}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->b(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;)Lcom/everyplay/Everyplay/c/a;

    move-result-object v1

    new-instance v2, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$1$1;

    invoke-direct {v2, p0}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$1$1;-><init>(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/everyplay/Everyplay/view/l;->a(Lcom/everyplay/Everyplay/c/a;Lcom/everyplay/Everyplay/view/b$a;)V

    :cond_0
    return-void
.end method
