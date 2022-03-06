.class final Lcom/everyplay/Everyplay/view/videoplayer/a/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/communication/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/videoplayer/a/a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/videoplayer/a/a;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/videoplayer/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/a$2;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "path"

    const-string v1, "kEveryplayDefaultPathKey"

    invoke-static {v1}, Lcom/everyplay/Everyplay/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/everyplay/Everyplay/view/f$c;->c:Lcom/everyplay/Everyplay/view/f$c;

    invoke-static {v0, v1, p0}, Lcom/everyplay/Everyplay/view/f;->b(Ljava/lang/String;Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc351
        :pswitch_0
    .end packed-switch
.end method
