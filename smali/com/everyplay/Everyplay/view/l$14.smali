.class final Lcom/everyplay/Everyplay/view/l$14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/l;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/l;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/l;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/l$14;->a:Lcom/everyplay/Everyplay/view/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    sget-boolean v0, Lcom/everyplay/Everyplay/e/d;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l$14;->a:Lcom/everyplay/Everyplay/view/l;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/l$14;->a:Lcom/everyplay/Everyplay/view/l;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/j;->e:Lcom/everyplay/Everyplay/view/i;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/l;->a(F)V

    :goto_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l$14;->a:Lcom/everyplay/Everyplay/view/l;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    sget v1, Lcom/everyplay/Everyplay/view/j$b;->b:I

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/j;->c(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l$14;->a:Lcom/everyplay/Everyplay/view/l;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/everyplay/Everyplay/view/l$14;->a:Lcom/everyplay/Everyplay/view/l;

    iget-object v2, v2, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v2, v2, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    iget-object v2, v2, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    iget-object v3, p0, Lcom/everyplay/Everyplay/view/l$14;->a:Lcom/everyplay/Everyplay/view/l;

    iget-object v3, v3, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v3, v3, Lcom/everyplay/Everyplay/view/j;->e:Lcom/everyplay/Everyplay/view/i;

    iget-object v3, v3, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/everyplay/Everyplay/view/l;->a(IF)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l$14;->a:Lcom/everyplay/Everyplay/view/l;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/l$14;->a:Lcom/everyplay/Everyplay/view/l;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/j;->e:Lcom/everyplay/Everyplay/view/i;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l$14;->a:Lcom/everyplay/Everyplay/view/l;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/l$14;->a:Lcom/everyplay/Everyplay/view/l;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/j;->e:Lcom/everyplay/Everyplay/view/i;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto :goto_0
.end method
