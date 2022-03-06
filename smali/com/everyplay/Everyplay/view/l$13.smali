.class final Lcom/everyplay/Everyplay/view/l$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/l;->onConfigurationChanged(Landroid/content/res/Configuration;)V
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

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/l$13;->a:Lcom/everyplay/Everyplay/view/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l$13;->a:Lcom/everyplay/Everyplay/view/l;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l$13;->a:Lcom/everyplay/Everyplay/view/l;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/l$13;->a:Lcom/everyplay/Everyplay/view/l;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-virtual {v1, v0}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/l$13;->a:Lcom/everyplay/Everyplay/view/l;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/j;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
