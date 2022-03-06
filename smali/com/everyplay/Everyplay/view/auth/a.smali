.class public final Lcom/everyplay/Everyplay/view/auth/a;
.super Lcom/everyplay/Everyplay/view/m;


# instance fields
.field protected c:Lcom/everyplay/Everyplay/view/k;

.field protected d:Lcom/everyplay/Everyplay/view/EveryplayWebView;

.field protected e:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/everyplay/Everyplay/view/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/auth/a;->c:Lcom/everyplay/Everyplay/view/k;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/auth/a;->d:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/auth/a;->e:Landroid/widget/ProgressBar;

    sget v0, Lcom/everyplay/Everyplay/R$layout;->everyplay_auth_layout:I

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/auth/a;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/auth/a;->a(Landroid/view/View;)V

    new-instance v0, Lcom/everyplay/Everyplay/view/k;

    invoke-direct {v0, p1}, Lcom/everyplay/Everyplay/view/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/auth/a;->c:Lcom/everyplay/Everyplay/view/k;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/auth/a;->c:Lcom/everyplay/Everyplay/view/k;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    sget v2, Lcom/everyplay/Everyplay/R$id;->everyplayAuthTopBar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/k;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    sget v1, Lcom/everyplay/Everyplay/R$id;->everyplayAuthWebView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/view/EveryplayWebView;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/auth/a;->d:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    sget v1, Lcom/everyplay/Everyplay/R$id;->everyplayAuthProgressBar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/auth/a;->e:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    new-instance v1, Lcom/everyplay/Everyplay/view/auth/a$1;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/view/auth/a$1;-><init>(Lcom/everyplay/Everyplay/view/auth/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    new-instance v1, Lcom/everyplay/Everyplay/view/auth/a$2;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/view/auth/a$2;-><init>(Lcom/everyplay/Everyplay/view/auth/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
