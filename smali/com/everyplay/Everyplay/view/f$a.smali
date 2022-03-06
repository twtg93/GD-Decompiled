.class final Lcom/everyplay/Everyplay/view/f$a;
.super Lcom/everyplay/Everyplay/view/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/view/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/everyplay/Everyplay/view/f$c;ZZLjava/lang/String;Lcom/everyplay/Everyplay/communication/k;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p4, p8}, Lcom/everyplay/Everyplay/view/f$b;-><init>(Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;)V

    iput-object v1, p0, Lcom/everyplay/Everyplay/view/f$a;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/everyplay/Everyplay/view/f$a;->d:Z

    iput-boolean v2, p0, Lcom/everyplay/Everyplay/view/f$a;->e:Z

    iput v2, p0, Lcom/everyplay/Everyplay/view/f$a;->f:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/everyplay/Everyplay/view/f$a;->g:I

    iput-object v1, p0, Lcom/everyplay/Everyplay/view/f$a;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/everyplay/Everyplay/view/f$a;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/f$a;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/everyplay/Everyplay/view/f$a;->d:Z

    iput-boolean p6, p0, Lcom/everyplay/Everyplay/view/f$a;->e:Z

    iput p2, p0, Lcom/everyplay/Everyplay/view/f$a;->g:I

    iput-object p3, p0, Lcom/everyplay/Everyplay/view/f$a;->h:Ljava/lang/String;

    iput-object p7, p0, Lcom/everyplay/Everyplay/view/f$a;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-super {p0}, Lcom/everyplay/Everyplay/view/f$b;->run()V

    iget-boolean v0, p0, Lcom/everyplay/Everyplay/view/f$a;->e:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    iput v0, p0, Lcom/everyplay/Everyplay/view/f$a;->f:I

    :cond_0
    sget-object v0, Lcom/everyplay/Everyplay/view/d$a;->e:Lcom/everyplay/Everyplay/view/d$a;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/d;->a(Lcom/everyplay/Everyplay/view/d$a;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    iget-object v2, p0, Lcom/everyplay/Everyplay/view/f$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "flags"

    iget v2, p0, Lcom/everyplay/Everyplay/view/f$a;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "show_toolbar"

    iget-boolean v2, p0, Lcom/everyplay/Everyplay/view/f$a;->d:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "id"

    iget v2, p0, Lcom/everyplay/Everyplay/view/f$a;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "closeButtonText"

    iget-object v2, p0, Lcom/everyplay/Everyplay/view/f$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/f$a;->i:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "end_prefix"

    iget-object v2, p0, Lcom/everyplay/Everyplay/view/f$a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    sget-object v1, Lcom/everyplay/Everyplay/view/f$c;->a:Lcom/everyplay/Everyplay/view/f$c;

    iput-object v1, p0, Lcom/everyplay/Everyplay/view/f$a;->a:Lcom/everyplay/Everyplay/view/f$c;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/everyplay/Everyplay/view/f$1;->a:[I

    iget-object v2, p0, Lcom/everyplay/Everyplay/view/f$a;->a:Lcom/everyplay/Everyplay/view/f$c;

    invoke-virtual {v2}, Lcom/everyplay/Everyplay/view/f$c;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled openType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/f$a;->a:Lcom/everyplay/Everyplay/view/f$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/everyplay/Everyplay/view/f$a;->b:Lcom/everyplay/Everyplay/communication/k;

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/view/d;->a(Landroid/content/Intent;Lcom/everyplay/Everyplay/communication/k;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
