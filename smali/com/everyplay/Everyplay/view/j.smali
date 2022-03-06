.class public final Lcom/everyplay/Everyplay/view/j;
.super Lcom/everyplay/Everyplay/view/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everyplay/Everyplay/view/j$a;,
        Lcom/everyplay/Everyplay/view/j$b;
    }
.end annotation


# instance fields
.field protected c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

.field protected d:Landroid/view/View;

.field protected e:Lcom/everyplay/Everyplay/view/i;

.field protected f:Lcom/everyplay/Everyplay/view/b;

.field protected g:Lcom/everyplay/Everyplay/view/a/a;

.field protected h:Lcom/everyplay/Everyplay/view/k;

.field protected i:Z

.field protected j:Z

.field protected k:Ljava/util/Timer;

.field private l:I

.field private n:I

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/everyplay/Everyplay/view/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/j;->d:Landroid/view/View;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/j;->e:Lcom/everyplay/Everyplay/view/i;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/j;->f:Lcom/everyplay/Everyplay/view/b;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/j;->g:Lcom/everyplay/Everyplay/view/a/a;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    iput v1, p0, Lcom/everyplay/Everyplay/view/j;->l:I

    sget v0, Lcom/everyplay/Everyplay/view/j$a;->a:I

    iput v0, p0, Lcom/everyplay/Everyplay/view/j;->n:I

    iput-boolean v1, p0, Lcom/everyplay/Everyplay/view/j;->i:Z

    iput-boolean v1, p0, Lcom/everyplay/Everyplay/view/j;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/everyplay/Everyplay/view/j;->o:Z

    sget v0, Lcom/everyplay/Everyplay/R$layout;->everyplay_social_layout:I

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/j;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/j;->a(Landroid/view/View;)V

    new-instance v0, Lcom/everyplay/Everyplay/view/k;

    invoke-direct {v0, p1}, Lcom/everyplay/Everyplay/view/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    sget v2, Lcom/everyplay/Everyplay/R$id;->everyplaySocialLayoutTopBar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/k;->a(Landroid/view/View;)V

    new-instance v0, Lcom/everyplay/Everyplay/view/i;

    invoke-direct {v0, p1}, Lcom/everyplay/Everyplay/view/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/j;->e:Lcom/everyplay/Everyplay/view/i;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->e:Lcom/everyplay/Everyplay/view/i;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    sget v2, Lcom/everyplay/Everyplay/R$id;->everyplaySocialLayoutSideMenu:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/i;->a(Landroid/view/View;)V

    new-instance v0, Lcom/everyplay/Everyplay/view/a/a;

    invoke-direct {v0, p1}, Lcom/everyplay/Everyplay/view/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/j;->g:Lcom/everyplay/Everyplay/view/a/a;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->g:Lcom/everyplay/Everyplay/view/a/a;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    sget v2, Lcom/everyplay/Everyplay/R$id;->everyplaySocialLayoutSplashScreen:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/a/a;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    sget v1, Lcom/everyplay/Everyplay/R$id;->everyplaySocialLayoutWebView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/view/EveryplayWebView;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    sget v1, Lcom/everyplay/Everyplay/R$id;->everyplaySocialLayoutWebViewCover:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/j;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->g:Lcom/everyplay/Everyplay/view/a/a;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const-string v2, "splashscreen-bgcolor"

    invoke-static {v2}, Lcom/everyplay/Everyplay/c/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/view/n;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Lcom/everyplay/Everyplay/view/j;->n:I

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/j;->b(I)V

    sget v0, Lcom/everyplay/Everyplay/view/j$b;->c:I

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/j;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/everyplay/Everyplay/view/j;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/everyplay/Everyplay/view/j;->o:Z

    return v0
.end method

.method static synthetic b(Lcom/everyplay/Everyplay/view/j;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/everyplay/Everyplay/view/j;->o:Z

    return v0
.end method

.method static synthetic c(Lcom/everyplay/Everyplay/view/j;)V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    new-instance v1, Lcom/everyplay/Everyplay/view/j$5;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/view/j$5;-><init>(Lcom/everyplay/Everyplay/view/j;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/everyplay/Everyplay/view/j;->i:Z

    return-void
.end method


# virtual methods
.method protected final a(Lcom/everyplay/Everyplay/c/a;Lcom/everyplay/Everyplay/view/b$a;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->f:Lcom/everyplay/Everyplay/view/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->f:Lcom/everyplay/Everyplay/view/b;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->f:Lcom/everyplay/Everyplay/view/b;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/b;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/everyplay/Everyplay/view/b;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/j;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/everyplay/Everyplay/view/b;-><init>(Landroid/content/Context;Lcom/everyplay/Everyplay/c/a;)V

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/j;->f:Lcom/everyplay/Everyplay/view/b;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->f:Lcom/everyplay/Everyplay/view/b;

    iput-object p2, v0, Lcom/everyplay/Everyplay/view/b;->a:Lcom/everyplay/Everyplay/view/b$a;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->f:Lcom/everyplay/Everyplay/view/b;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/b;->show()V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Page load failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->g:Lcom/everyplay/Everyplay/view/a/a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/everyplay/Everyplay/view/j$1;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/view/j$1;-><init>(Lcom/everyplay/Everyplay/view/j;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/j;->h()V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 3

    const/4 v2, -0x1

    iput p1, p0, Lcom/everyplay/Everyplay/view/j;->n:I

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/view/j$6;->a:[I

    iget v1, p0, Lcom/everyplay/Everyplay/view/j;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/everyplay/Everyplay/view/k;->c:Z

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    iget-object v2, v2, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-virtual {v1, v0}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/j;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/everyplay/Everyplay/view/k;->c:Z

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-virtual {v1, v0}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/j;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->g:Lcom/everyplay/Everyplay/view/a/a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/everyplay/Everyplay/view/j$2;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/view/j$2;-><init>(Lcom/everyplay/Everyplay/view/j;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/j;->h()V

    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iput p1, p0, Lcom/everyplay/Everyplay/view/j;->l:I

    sget-object v0, Lcom/everyplay/Everyplay/view/j$6;->b:[I

    iget v1, p0, Lcom/everyplay/Everyplay/view/j;->l:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->e:Lcom/everyplay/Everyplay/view/i;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-virtual {v0, v2}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->g:Lcom/everyplay/Everyplay/view/a/a;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->e:Lcom/everyplay/Everyplay/view/i;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-virtual {v0, v2}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->g:Lcom/everyplay/Everyplay/view/a/a;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->e:Lcom/everyplay/Everyplay/view/i;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-virtual {v0, v2}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->g:Lcom/everyplay/Everyplay/view/a/a;

    sget v1, Lcom/everyplay/Everyplay/view/a/a$a;->a:I

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/a/a;->b(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->g:Lcom/everyplay/Everyplay/view/a/a;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lcom/everyplay/Everyplay/view/j;->l:I

    sget v1, Lcom/everyplay/Everyplay/view/j$b;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final e()V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->f:Lcom/everyplay/Everyplay/view/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->f:Lcom/everyplay/Everyplay/view/b;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/b;->cancel()V

    :cond_0
    return-void
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->f:Lcom/everyplay/Everyplay/view/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->f:Lcom/everyplay/Everyplay/view/b;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/everyplay/Everyplay/view/j;->i:Z

    iput-boolean v1, p0, Lcom/everyplay/Everyplay/view/j;->j:Z

    iget-boolean v0, p0, Lcom/everyplay/Everyplay/view/j;->o:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/everyplay/Everyplay/view/j;->o:Z

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/j;->i()V

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/j;->h()V

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/everyplay/Everyplay/view/j$3;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/view/j$3;-><init>(Lcom/everyplay/Everyplay/view/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final h()V
    .locals 6

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/j;->i()V

    const/16 v0, 0x1388

    invoke-static {}, Lcom/everyplay/Everyplay/c/g;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/everyplay/Everyplay/view/j;->o:Z

    if-eqz v1, :cond_0

    const/16 v0, 0x3a98

    move v4, v0

    :goto_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/j;->k:Ljava/util/Timer;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->k:Ljava/util/Timer;

    new-instance v1, Lcom/everyplay/Everyplay/view/j$4;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/view/j$4;-><init>(Lcom/everyplay/Everyplay/view/j;)V

    int-to-long v2, v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void

    :cond_0
    move v4, v0

    goto :goto_0
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/everyplay/Everyplay/view/j;->i:Z

    iput-boolean v0, p0, Lcom/everyplay/Everyplay/view/j;->j:Z

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->k:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/j;->k:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/j;->k:Ljava/util/Timer;

    :cond_0
    return-void
.end method
