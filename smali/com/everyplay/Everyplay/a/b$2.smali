.class final Lcom/everyplay/Everyplay/a/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/communication/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/a/e;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/a/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/a/b$2;->a:Lcom/everyplay/Everyplay/a/e;

    iput-object p2, p0, Lcom/everyplay/Everyplay/a/b$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/content/Intent;Landroid/os/Bundle;)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/a/b$2;->a:Lcom/everyplay/Everyplay/a/e;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Auth canceled"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/everyplay/Everyplay/a/e;->a(Ljava/lang/Exception;)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/everyplay/Everyplay/a/b$2;->a:Lcom/everyplay/Everyplay/a/e;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Auth failed, invalid clientId/secret/redirectUri?"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/everyplay/Everyplay/a/e;->a(Ljava/lang/Exception;)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/everyplay/Everyplay/a/b$2;->a:Lcom/everyplay/Everyplay/a/e;

    invoke-static {}, Lcom/everyplay/Everyplay/a/b;->h()Lcom/everyplay/Everyplay/a/a;

    invoke-interface {v0}, Lcom/everyplay/Everyplay/a/e;->a()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
