.class final Lcom/everyplay/Everyplay/c$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/c$3;->a(ILandroid/content/Intent;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/everyplay/Everyplay/c$3;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/c$3;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/c$3$1;->c:Lcom/everyplay/Everyplay/c$3;

    iput p2, p0, Lcom/everyplay/Everyplay/c$3$1;->a:I

    iput-object p3, p0, Lcom/everyplay/Everyplay/c$3$1;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v1, 0x0

    iget v0, p0, Lcom/everyplay/Everyplay/c$3$1;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled resultCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/everyplay/Everyplay/c$3$1;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/c$3$1;->b:Landroid/os/Bundle;

    const-string v1, "path"

    const-string v2, "kEveryplayDefaultPathKey"

    invoke-static {v2}, Lcom/everyplay/Everyplay/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/everyplay/Everyplay/view/f$c;->a:Lcom/everyplay/Everyplay/view/f$c;

    iget-object v2, p0, Lcom/everyplay/Everyplay/c$3$1;->c:Lcom/everyplay/Everyplay/c$3;

    iget-object v2, v2, Lcom/everyplay/Everyplay/c$3;->a:Lcom/everyplay/Everyplay/c;

    invoke-static {v2}, Lcom/everyplay/Everyplay/c;->a(Lcom/everyplay/Everyplay/c;)Lcom/everyplay/Everyplay/communication/k;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/everyplay/Everyplay/view/f;->b(Ljava/lang/String;Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/everyplay/Everyplay/view/f$c;->a:Lcom/everyplay/Everyplay/view/f$c;

    iget-object v1, p0, Lcom/everyplay/Everyplay/c$3$1;->c:Lcom/everyplay/Everyplay/c$3;

    iget-object v1, v1, Lcom/everyplay/Everyplay/c$3;->a:Lcom/everyplay/Everyplay/c;

    invoke-static {v1}, Lcom/everyplay/Everyplay/c;->a(Lcom/everyplay/Everyplay/c;)Lcom/everyplay/Everyplay/communication/k;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/everyplay/Everyplay/view/f;->a(Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;I)V

    goto :goto_0

    :pswitch_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/everyplay/Everyplay/c$3$1;->b:Landroid/os/Bundle;

    const-string v3, "videoData"

    const-string v4, "{}"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v1, Lcom/everyplay/Everyplay/view/f$c;->a:Lcom/everyplay/Everyplay/view/f$c;

    iget-object v2, p0, Lcom/everyplay/Everyplay/c$3$1;->c:Lcom/everyplay/Everyplay/c$3;

    iget-object v2, v2, Lcom/everyplay/Everyplay/c$3;->a:Lcom/everyplay/Everyplay/c;

    invoke-static {v2}, Lcom/everyplay/Everyplay/c;->a(Lcom/everyplay/Everyplay/c;)Lcom/everyplay/Everyplay/communication/k;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/everyplay/Everyplay/view/f;->a(Lorg/json/JSONObject;Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Could not form JSONData"

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/everyplay/Everyplay/c$3$1;->b:Landroid/os/Bundle;

    const-string v2, "sessionId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/everyplay/Everyplay/view/f$c;->a:Lcom/everyplay/Everyplay/view/f$c;

    iget-object v2, p0, Lcom/everyplay/Everyplay/c$3$1;->c:Lcom/everyplay/Everyplay/c$3;

    iget-object v2, v2, Lcom/everyplay/Everyplay/c$3;->a:Lcom/everyplay/Everyplay/c;

    invoke-static {v2}, Lcom/everyplay/Everyplay/c;->a(Lcom/everyplay/Everyplay/c;)Lcom/everyplay/Everyplay/communication/k;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/everyplay/Everyplay/view/f;->a(Ljava/lang/String;Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc351
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
