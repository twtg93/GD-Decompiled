.class final Lcom/everyplay/Everyplay/view/f$e;
.super Lcom/everyplay/Everyplay/view/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/view/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# static fields
.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/everyplay/Everyplay/view/f$e;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/everyplay/Everyplay/view/f$b;-><init>(Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;)V

    sput-object p1, Lcom/everyplay/Everyplay/view/f$e;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-super {p0}, Lcom/everyplay/Everyplay/view/f$b;->run()V

    sget-object v0, Lcom/everyplay/Everyplay/view/d$a;->a:Lcom/everyplay/Everyplay/view/d$a;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/d;->a(Lcom/everyplay/Everyplay/view/d$a;)Landroid/content/Intent;

    move-result-object v1

    const-string v0, "url"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kEveryplayBaseWebUrlKey"

    invoke-static {v3}, Lcom/everyplay/Everyplay/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/everyplay/Everyplay/view/f$e;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/everyplay/Everyplay/communication/c;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "path"

    sget-object v4, Lcom/everyplay/Everyplay/view/f$e;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/everyplay/Everyplay/view/f$1;->a:[I

    iget-object v4, p0, Lcom/everyplay/Everyplay/view/f$e;->a:Lcom/everyplay/Everyplay/view/f$c;

    invoke-virtual {v4}, Lcom/everyplay/Everyplay/view/f$c;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled openType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/f$e;->a:Lcom/everyplay/Everyplay/view/f$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/everyplay/Everyplay/view/c;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/everyplay/Everyplay/view/c;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/c;->c()Lcom/everyplay/Everyplay/view/l;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/l;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Could not open in current activity, something in the flow could be broken"

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/f$e;->b:Lcom/everyplay/Everyplay/communication/k;

    invoke-static {v1, v0}, Lcom/everyplay/Everyplay/view/d;->a(Landroid/content/Intent;Lcom/everyplay/Everyplay/communication/k;)V

    goto :goto_0

    :pswitch_2
    instance-of v3, v0, Lcom/everyplay/Everyplay/view/c;

    if-eqz v3, :cond_2

    check-cast v0, Lcom/everyplay/Everyplay/view/c;

    const v1, 0xc351

    invoke-virtual {v0, v1, v2}, Lcom/everyplay/Everyplay/view/c;->b(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/f$e;->b:Lcom/everyplay/Everyplay/communication/k;

    invoke-static {v1, v0}, Lcom/everyplay/Everyplay/view/d;->a(Landroid/content/Intent;Lcom/everyplay/Everyplay/communication/k;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
