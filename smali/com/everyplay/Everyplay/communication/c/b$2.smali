.class final Lcom/everyplay/Everyplay/communication/c/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/communication/b/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/communication/c/b;->c(Lcom/everyplay/Everyplay/communication/c/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/communication/c/c;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/communication/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/communication/c/b$2;->a:Lcom/everyplay/Everyplay/communication/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/c/b$2;->a:Lcom/everyplay/Everyplay/communication/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/c/b$2;->a:Lcom/everyplay/Everyplay/communication/c/c;

    invoke-interface {v0, p1}, Lcom/everyplay/Everyplay/communication/c/c;->a(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/everyplay/Everyplay/communication/c/b;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/c/b$2;->a:Lcom/everyplay/Everyplay/communication/c/c;

    invoke-static {v0}, Lcom/everyplay/Everyplay/communication/c/b;->b(Lcom/everyplay/Everyplay/communication/c/c;)V

    return-void
.end method
