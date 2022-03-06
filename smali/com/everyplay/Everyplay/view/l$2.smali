.class final Lcom/everyplay/Everyplay/view/l$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/l;->j()V
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

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/l$2;->a:Lcom/everyplay/Everyplay/view/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-boolean v0, Lcom/everyplay/Everyplay/e/d;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l$2;->a:Lcom/everyplay/Everyplay/view/l;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l$2;->a:Lcom/everyplay/Everyplay/view/l;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/everyplay/Everyplay/view/l$2;->a:Lcom/everyplay/Everyplay/view/l;

    iget-object v2, v2, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v2, v2, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    iget-object v2, v2, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/everyplay/Everyplay/view/l;->a(IF)V

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l$2;->a:Lcom/everyplay/Everyplay/view/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/l;->a(F)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l$2;->a:Lcom/everyplay/Everyplay/view/l;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    sget v1, Lcom/everyplay/Everyplay/view/j$b;->a:I

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/j;->c(I)V

    return-void
.end method
