.class final Lcom/everyplay/Everyplay/view/k$15$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/k$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/k$15;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/k$15;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/k$15$1;->a:Lcom/everyplay/Everyplay/view/k$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/k$15$1;->a:Lcom/everyplay/Everyplay/view/k$15;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/k$15;->c:Lcom/everyplay/Everyplay/view/k;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/k$15$1;->a:Lcom/everyplay/Everyplay/view/k$15;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/k$15;->a:Lcom/everyplay/Everyplay/view/k$b;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/k;->a(Lcom/everyplay/Everyplay/view/k$b;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/k$15$1;->a:Lcom/everyplay/Everyplay/view/k$15;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/k$15;->c:Lcom/everyplay/Everyplay/view/k;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/k;->d(Lcom/everyplay/Everyplay/view/k;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/k$15$1;->a:Lcom/everyplay/Everyplay/view/k$15;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/k$15;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/k$15$1;->a:Lcom/everyplay/Everyplay/view/k$15;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/k$15;->c:Lcom/everyplay/Everyplay/view/k;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/k;->e(Lcom/everyplay/Everyplay/view/k;)V

    return-void
.end method
