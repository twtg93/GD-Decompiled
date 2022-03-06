.class final Lcom/everyplay/Everyplay/communication/socialnetworks/EveryplayFacebook$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/communication/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/communication/socialnetworks/EveryplayFacebook;->a(Lcom/everyplay/Everyplay/communication/socialnetworks/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/communication/socialnetworks/b;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/communication/socialnetworks/b;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/communication/socialnetworks/EveryplayFacebook$4;->a:Lcom/everyplay/Everyplay/communication/socialnetworks/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/content/Intent;Landroid/os/Bundle;)V
    .locals 7

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/socialnetworks/EveryplayFacebook$4;->a:Lcom/everyplay/Everyplay/communication/socialnetworks/b;

    sget-object v2, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;->a:Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

    const-string v0, "access_token"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "expires_at"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "scopes"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/everyplay/Everyplay/communication/socialnetworks/b;->a(Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/socialnetworks/EveryplayFacebook$4;->a:Lcom/everyplay/Everyplay/communication/socialnetworks/b;

    sget-object v1, Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;->a:Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "error"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/everyplay/Everyplay/communication/socialnetworks/b;->a(Lcom/everyplay/Everyplay/communication/socialnetworks/b$a;Ljava/lang/Exception;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
