.class final Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/communication/socialnetworks/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->EXT_social_network_login(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/communication/socialnetworks/b;

.field final synthetic b:Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

.field final synthetic c:Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;Lcom/everyplay/Everyplay/communication/socialnetworks/b;Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$11;->c:Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;

    iput-object p2, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$11;->a:Lcom/everyplay/Everyplay/communication/socialnetworks/b;

    iput-object p3, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$11;->b:Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$11;->a:Lcom/everyplay/Everyplay/communication/socialnetworks/b;

    invoke-static {v0}, Lcom/everyplay/Everyplay/communication/socialnetworks/EveryplayFacebook;->a(Lcom/everyplay/Everyplay/communication/socialnetworks/b;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$11;->c:Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation$11;->b:Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayWebAppEventImplementation;->openOauthFlow(Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;)V

    goto :goto_0
.end method
