.class final Lcom/everyplay/Everyplay/communication/socialnetworks/EveryplayFacebook$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/communication/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/communication/socialnetworks/EveryplayFacebook;->a(Ljava/lang/String;[Ljava/lang/String;Lcom/everyplay/Everyplay/communication/socialnetworks/EveryplayFacebook$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/communication/socialnetworks/EveryplayFacebook$a;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/communication/socialnetworks/EveryplayFacebook$a;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/communication/socialnetworks/EveryplayFacebook$3;->a:Lcom/everyplay/Everyplay/communication/socialnetworks/EveryplayFacebook$a;

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
    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/socialnetworks/EveryplayFacebook$3;->a:Lcom/everyplay/Everyplay/communication/socialnetworks/EveryplayFacebook$a;

    const-string v1, "permissions"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/everyplay/Everyplay/communication/socialnetworks/EveryplayFacebook$a;->a(Ljava/util/List;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/socialnetworks/EveryplayFacebook$3;->a:Lcom/everyplay/Everyplay/communication/socialnetworks/EveryplayFacebook$a;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "error"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/everyplay/Everyplay/communication/socialnetworks/EveryplayFacebook$a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
