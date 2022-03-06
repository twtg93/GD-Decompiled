.class final Lcom/everyplay/Everyplay/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/communication/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/c;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/c;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/c$1;->a:Lcom/everyplay/Everyplay/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/everyplay/Everyplay/communication/g;->a()Z

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/everyplay/Everyplay/encoding/a;->c()V

    invoke-static {}, Lcom/everyplay/Everyplay/communication/g;->e()Z

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/everyplay/Everyplay/c;->t()V

    goto :goto_0

    :cond_1
    const-string v0, "Cached device settings disable recording support, checking current status from server"

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a([Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/everyplay/Everyplay/communication/g;->a()Z

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v0, p1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/encoding/a;->c()V

    invoke-static {}, Lcom/everyplay/Everyplay/communication/g;->e()Z

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/everyplay/Everyplay/c;->t()V

    :cond_2
    :goto_1
    sget v0, Lcom/everyplay/Everyplay/e/d;->a:I

    sget v1, Lcom/everyplay/Everyplay/e/d$b;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/everyplay/Everyplay/communication/c;->a(I)V

    goto :goto_0

    :cond_3
    const-string v0, "Device settings updated from server, recording support disabled."

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->a(Ljava/lang/String;)V

    sget v0, Lcom/everyplay/Everyplay/e/d;->a:I

    sget v1, Lcom/everyplay/Everyplay/e/d$b;->d:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/everyplay/Everyplay/c$1;->a:Lcom/everyplay/Everyplay/c;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/c;->o()V

    sget v0, Lcom/everyplay/Everyplay/e/d$b;->b:I

    sput v0, Lcom/everyplay/Everyplay/e/d;->a:I

    :cond_4
    sget v0, Lcom/everyplay/Everyplay/e/d;->a:I

    sget v1, Lcom/everyplay/Everyplay/e/d$b;->c:I

    if-ne v0, v1, :cond_2

    sget v0, Lcom/everyplay/Everyplay/e/d$b;->b:I

    sput v0, Lcom/everyplay/Everyplay/e/d;->a:I

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/everyplay/Everyplay/communication/g;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/everyplay/Everyplay/encoding/a;->c()V

    sget v0, Lcom/everyplay/Everyplay/e/d;->a:I

    sget v1, Lcom/everyplay/Everyplay/e/d$b;->c:I

    if-ne v0, v1, :cond_2

    sget v0, Lcom/everyplay/Everyplay/e/d$b;->b:I

    sput v0, Lcom/everyplay/Everyplay/e/d;->a:I

    :cond_2
    sget v0, Lcom/everyplay/Everyplay/e/d;->a:I

    sget v1, Lcom/everyplay/Everyplay/e/d$b;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/everyplay/Everyplay/communication/c;->a(I)V

    goto :goto_0
.end method
