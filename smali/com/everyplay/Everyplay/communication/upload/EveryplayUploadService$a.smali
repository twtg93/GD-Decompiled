.class final Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$a;
.super Landroid/os/ResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$b;

.field private b:Lcom/everyplay/Everyplay/communication/upload/a;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/everyplay/Everyplay/communication/upload/a;Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$b;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$a;->a:Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$b;

    iput-object p2, p0, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$a;->b:Lcom/everyplay/Everyplay/communication/upload/a;

    return-void
.end method


# virtual methods
.method protected final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$a;->a:Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$b;

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$a;->a:Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$b;

    const-string v1, "status_code"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "response"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$b;->a(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$a;->a:Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$b;

    const-string v1, "bytes_completed"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v1, "bytes_total"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    invoke-interface {v0, v2, v3}, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$b;->b(J)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$a;->a:Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$b;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "error"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/everyplay/Everyplay/communication/upload/EveryplayUploadService$b;->b(Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
