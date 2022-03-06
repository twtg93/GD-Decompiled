.class public final Lcom/everyplay/Everyplay/view/browser/b;
.super Lcom/everyplay/Everyplay/view/m;


# instance fields
.field protected c:Lcom/everyplay/Everyplay/view/k;

.field protected d:Lcom/everyplay/Everyplay/view/browser/a;

.field protected e:Lcom/everyplay/Everyplay/view/EveryplayWebView;

.field protected f:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/everyplay/Everyplay/view/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/browser/b;->c:Lcom/everyplay/Everyplay/view/k;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/browser/b;->d:Lcom/everyplay/Everyplay/view/browser/a;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/browser/b;->e:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/browser/b;->f:Landroid/widget/ProgressBar;

    sget v0, Lcom/everyplay/Everyplay/R$layout;->everyplay_browser_layout:I

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/browser/b;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/browser/b;->a(Landroid/view/View;)V

    new-instance v0, Lcom/everyplay/Everyplay/view/k;

    invoke-direct {v0, p1}, Lcom/everyplay/Everyplay/view/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/browser/b;->c:Lcom/everyplay/Everyplay/view/k;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/browser/b;->c:Lcom/everyplay/Everyplay/view/k;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    sget v2, Lcom/everyplay/Everyplay/R$id;->everyplayBrowserTopBar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/k;->a(Landroid/view/View;)V

    new-instance v0, Lcom/everyplay/Everyplay/view/browser/a;

    invoke-direct {v0, p1}, Lcom/everyplay/Everyplay/view/browser/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/browser/b;->d:Lcom/everyplay/Everyplay/view/browser/a;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/browser/b;->d:Lcom/everyplay/Everyplay/view/browser/a;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    sget v2, Lcom/everyplay/Everyplay/R$id;->everyplayBrowserBottomBar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/browser/a;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    sget v1, Lcom/everyplay/Everyplay/R$id;->everyplayBrowserWebView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/view/EveryplayWebView;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/browser/b;->e:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    sget v1, Lcom/everyplay/Everyplay/R$id;->everyplayBrowserProgressBar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/browser/b;->f:Landroid/widget/ProgressBar;

    return-void
.end method
