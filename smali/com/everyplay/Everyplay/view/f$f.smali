.class final Lcom/everyplay/Everyplay/view/f$f;
.super Lcom/everyplay/Everyplay/view/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/view/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/everyplay/Everyplay/view/f$b;-><init>(Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/f$f;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/f$f;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-super {p0}, Lcom/everyplay/Everyplay/view/f$b;->run()V

    sget-object v0, Lcom/everyplay/Everyplay/view/d$a;->d:Lcom/everyplay/Everyplay/view/d$a;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/d;->a(Lcom/everyplay/Everyplay/view/d$a;)Landroid/content/Intent;

    move-result-object v1

    const-string v0, "sessionId"

    iget-object v2, p0, Lcom/everyplay/Everyplay/view/f$f;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/everyplay/Everyplay/communication/c;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    instance-of v2, v0, Lcom/everyplay/Everyplay/view/EveryplaySharingModalActivity;

    if-eqz v2, :cond_0

    const-string v2, "openedFromSharingModal"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "sessionId"

    iget-object v4, p0, Lcom/everyplay/Everyplay/view/f$f;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/everyplay/Everyplay/view/f$f;->a:Lcom/everyplay/Everyplay/view/f$c;

    sget-object v4, Lcom/everyplay/Everyplay/view/f$c;->b:Lcom/everyplay/Everyplay/view/f$c;

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/everyplay/Everyplay/view/f$c;->a:Lcom/everyplay/Everyplay/view/f$c;

    iput-object v3, p0, Lcom/everyplay/Everyplay/view/f$f;->a:Lcom/everyplay/Everyplay/view/f$c;

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    sget-object v3, Lcom/everyplay/Everyplay/view/f$1;->a:[I

    iget-object v4, p0, Lcom/everyplay/Everyplay/view/f$f;->a:Lcom/everyplay/Everyplay/view/f$c;

    invoke-virtual {v4}, Lcom/everyplay/Everyplay/view/f$c;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled openType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/f$f;->a:Lcom/everyplay/Everyplay/view/f$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/f$f;->b:Lcom/everyplay/Everyplay/communication/k;

    invoke-static {v1, v0}, Lcom/everyplay/Everyplay/view/d;->a(Landroid/content/Intent;Lcom/everyplay/Everyplay/communication/k;)V

    goto :goto_0

    :pswitch_1
    instance-of v3, v0, Lcom/everyplay/Everyplay/view/c;

    if-eqz v3, :cond_3

    check-cast v0, Lcom/everyplay/Everyplay/view/c;

    const v1, 0xc354

    invoke-virtual {v0, v1, v2}, Lcom/everyplay/Everyplay/view/c;->b(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/f$f;->b:Lcom/everyplay/Everyplay/communication/k;

    invoke-static {v1, v0}, Lcom/everyplay/Everyplay/view/d;->a(Landroid/content/Intent;Lcom/everyplay/Everyplay/communication/k;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
