.class final Lcom/everyplay/Everyplay/view/k$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/k;->a(IFFD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/everyplay/Everyplay/view/k;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/k;I)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/k$9;->b:Lcom/everyplay/Everyplay/view/k;

    iput p2, p0, Lcom/everyplay/Everyplay/view/k$9;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget v0, p0, Lcom/everyplay/Everyplay/view/k$9;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/k$9;->b:Lcom/everyplay/Everyplay/view/k;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/k$9;->b:Lcom/everyplay/Everyplay/view/k;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget v0, p0, Lcom/everyplay/Everyplay/view/k$9;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/k$9;->b:Lcom/everyplay/Everyplay/view/k;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method
