.class public final Lcom/everyplay/Everyplay/view/l;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/everyplay/Everyplay/communication/o;
.implements Lcom/everyplay/Everyplay/view/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everyplay/Everyplay/view/l$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/everyplay/Everyplay/view/j;

.field b:Z

.field protected c:Ljava/lang/String;

.field protected d:F

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/everyplay/Everyplay/view/l;->b:Z

    iput-object v1, p0, Lcom/everyplay/Everyplay/view/l;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/everyplay/Everyplay/view/l;->d:F

    iput-object v1, p0, Lcom/everyplay/Everyplay/view/l;->e:Landroid/view/View;

    invoke-direct {p0}, Lcom/everyplay/Everyplay/view/l;->k()V

    return-void
.end method

.method private a(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 1

    new-instance v0, Lcom/everyplay/Everyplay/view/l$3;

    invoke-direct {v0, p0, p1}, Lcom/everyplay/Everyplay/view/l$3;-><init>(Lcom/everyplay/Everyplay/view/l;Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic a(Lcom/everyplay/Everyplay/view/l;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->e:Landroid/view/View;

    return-object v0
.end method

.method private a(FF)Landroid/view/animation/Animation;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/everyplay/Everyplay/view/l;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private a(FFFF)Landroid/view/animation/Animation;
    .locals 10

    const/4 v9, 0x1

    const/4 v1, 0x0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v2, p1

    move v3, v1

    move v4, p2

    move v5, v1

    move v6, p3

    move v7, v1

    move v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-virtual {v1}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v2, v2, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-virtual {v2}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/l;->getWidth()I

    move-result v3

    add-int/lit16 v3, v3, 0x3e8

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/l;->getHeight()I

    move-result v4

    add-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    const/high16 v1, 0x43960000    # 300.0f

    iget-object v2, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v2, v2, Lcom/everyplay/Everyplay/view/j;->e:Lcom/everyplay/Everyplay/view/i;

    iget-object v2, v2, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/everyplay/Everyplay/view/l;->d:F

    sub-float v1, p1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/everyplay/Everyplay/view/l;->d:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    return-object v0
.end method

.method static synthetic b(Lcom/everyplay/Everyplay/view/l;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/everyplay/Everyplay/view/l;->b:Z

    return v0
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/everyplay/Everyplay/view/j;

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/everyplay/Everyplay/view/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    sget-object v1, Lcom/everyplay/Everyplay/view/EveryplayWebView$d;->a:Lcom/everyplay/Everyplay/view/EveryplayWebView$d;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->a(Lcom/everyplay/Everyplay/view/EveryplayWebView$d;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-virtual {v0, p0}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->setListener(Lcom/everyplay/Everyplay/communication/o;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-direct {p0, v1}, Lcom/everyplay/Everyplay/view/l;->a(Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->e:Lcom/everyplay/Everyplay/view/i;

    new-instance v1, Lcom/everyplay/Everyplay/view/l$8;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/view/l$8;-><init>(Lcom/everyplay/Everyplay/view/l;)V

    iput-object v1, v0, Lcom/everyplay/Everyplay/view/i;->e:Lcom/everyplay/Everyplay/view/i$a;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->g:Lcom/everyplay/Everyplay/view/a/a;

    iput-object p0, v0, Lcom/everyplay/Everyplay/view/a/a;->c:Lcom/everyplay/Everyplay/view/a/b;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->d:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/everyplay/Everyplay/view/l;->a(Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/j;->d:Landroid/view/View;

    new-instance v2, Lcom/everyplay/Everyplay/view/l$9;

    invoke-direct {v2, p0, v0}, Lcom/everyplay/Everyplay/view/l$9;-><init>(Lcom/everyplay/Everyplay/view/l;Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    new-instance v1, Lcom/everyplay/Everyplay/view/l$10;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/view/l$10;-><init>(Lcom/everyplay/Everyplay/view/l;)V

    iput-object v1, v0, Lcom/everyplay/Everyplay/view/k;->e:Lcom/everyplay/Everyplay/view/k$a;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    sget v1, Lcom/everyplay/Everyplay/R$id;->everyplayNativeOverlaySideMenu:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/l;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->e:Landroid/view/View;

    new-instance v1, Lcom/everyplay/Everyplay/view/l$11;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/view/l$11;-><init>(Lcom/everyplay/Everyplay/view/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/j;->g()V

    :cond_0
    return-void
.end method

.method public final a(D)V
    .locals 3

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    iget-boolean v1, v0, Lcom/everyplay/Everyplay/view/k;->c:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/e/a;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/everyplay/Everyplay/view/k$1;

    invoke-direct {v2, v0, p1, p2}, Lcom/everyplay/Everyplay/view/k$1;-><init>(Lcom/everyplay/Everyplay/view/k;D)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected final a(F)V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->e:Lcom/everyplay/Everyplay/view/i;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->getTranslationX()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-virtual {v0, p1}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->setTranslationX(F)V

    :cond_1
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_2
    return-void
.end method

.method protected final a(IF)V
    .locals 5

    const/4 v4, 0x0

    sub-float v0, p2, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-direct {p0, p2, v4}, Lcom/everyplay/Everyplay/view/l;->a(FF)Landroid/view/animation/Animation;

    move-result-object v0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->getTranslationX()F

    move-result v0

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/j;->e:Lcom/everyplay/Everyplay/view/i;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/everyplay/Everyplay/view/l;->a(FF)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-virtual {v1, v4}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->setTranslationX(F)V

    :cond_0
    new-instance v1, Lcom/everyplay/Everyplay/view/l$4;

    invoke-direct {v1, p0, p1}, Lcom/everyplay/Everyplay/view/l$4;-><init>(Lcom/everyplay/Everyplay/view/l;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-direct {p0, p2, v4}, Lcom/everyplay/Everyplay/view/l;->a(FF)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Lcom/everyplay/Everyplay/view/l$5;

    invoke-direct {v2, p0}, Lcom/everyplay/Everyplay/view/l$5;-><init>(Lcom/everyplay/Everyplay/view/l;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v2, v2, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    iget-object v2, v2, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    iget-object v3, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v3, v3, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    iget-object v3, v3, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-direct {p0, p2, v4, v2, v3}, Lcom/everyplay/Everyplay/view/l;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v2

    new-instance v3, Lcom/everyplay/Everyplay/view/l$6;

    invoke-direct {v3, p0}, Lcom/everyplay/Everyplay/view/l$6;-><init>(Lcom/everyplay/Everyplay/view/l;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v3, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v3, v3, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-virtual {v3, v0}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/everyplay/Everyplay/c/a;Lcom/everyplay/Everyplay/view/b$a;)V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    invoke-virtual {v0, p1, p2}, Lcom/everyplay/Everyplay/view/j;->a(Lcom/everyplay/Everyplay/c/a;Lcom/everyplay/Everyplay/view/b$a;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/everyplay/Everyplay/c/n;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not update topbar: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    invoke-virtual {v0, p1}, Lcom/everyplay/Everyplay/view/k;->a(Lcom/everyplay/Everyplay/c/n;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-virtual {v0, p1, p2}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/everyplay/Everyplay/c/k;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->e:Lcom/everyplay/Everyplay/view/i;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v4, v0, Lcom/everyplay/Everyplay/view/j;->e:Lcom/everyplay/Everyplay/view/i;

    iput-object v3, v4, Lcom/everyplay/Everyplay/view/i;->f:Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/c/k;

    iget-object v1, v4, Lcom/everyplay/Everyplay/view/i;->g:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, v4, Lcom/everyplay/Everyplay/view/i;->g:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/everyplay/Everyplay/c/k;->a:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v4, Lcom/everyplay/Everyplay/view/i;->g:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/everyplay/Everyplay/c/k;->a:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/everyplay/Everyplay/view/h;

    :goto_1
    if-eqz v1, :cond_4

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/everyplay/Everyplay/view/h;->a(Lcom/everyplay/Everyplay/c/k;)V

    move-object v0, v1

    :goto_2
    iget-object v1, v4, Lcom/everyplay/Everyplay/view/i;->g:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v4, Lcom/everyplay/Everyplay/view/i;->g:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/everyplay/Everyplay/view/h;->k:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_3
    invoke-virtual {v5, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v1, v3

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Item was NULL while updating existing button with id: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/everyplay/Everyplay/view/h;->k:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->a(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v0, v3

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    new-instance v1, Lcom/everyplay/Everyplay/view/h;

    iget-object v6, v4, Lcom/everyplay/Everyplay/view/i;->a:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/everyplay/Everyplay/view/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/everyplay/Everyplay/view/h;->a(Lcom/everyplay/Everyplay/c/k;)V

    iput-object v4, v1, Lcom/everyplay/Everyplay/view/h;->l:Lcom/everyplay/Everyplay/view/h$a;

    move-object v0, v1

    goto :goto_3

    :cond_5
    const-string v0, "Current item is NULL"

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->b(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_3

    :cond_6
    iget-object v0, v4, Lcom/everyplay/Everyplay/view/i;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    iget-object v0, v4, Lcom/everyplay/Everyplay/view/i;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {v4, v5}, Lcom/everyplay/Everyplay/view/i;->a(Ljava/util/ArrayList;)V

    :cond_8
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/l;->j()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/l;->i()V

    goto :goto_0
.end method

.method public final b(D)V
    .locals 3

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    iget-boolean v1, v0, Lcom/everyplay/Everyplay/view/k;->c:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/everyplay/Everyplay/e/a;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/everyplay/Everyplay/view/k$8;

    invoke-direct {v2, v0, p1, p2}, Lcom/everyplay/Everyplay/view/k$8;-><init>(Lcom/everyplay/Everyplay/view/k;D)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Page load failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    invoke-virtual {v0, p1}, Lcom/everyplay/Everyplay/view/j;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/everyplay/Everyplay/e/a;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/everyplay/Everyplay/view/l$7;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/view/l$7;-><init>(Lcom/everyplay/Everyplay/view/l;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    invoke-virtual {v0, p1}, Lcom/everyplay/Everyplay/view/j;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/l;->c()V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    const-string v1, "native_overlay_hide"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    const/4 v2, -0x1

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/l;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->c:Ljava/lang/String;

    const-string v1, "epkey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->c:Ljava/lang/String;

    const-string v1, "ep_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->c:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/l;->c:Ljava/lang/String;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "epkey=html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/l;->c:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/everyplay/Everyplay/view/l;->k()V

    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/l;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->loadUrl(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/everyplay/Everyplay/view/l;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/k;->a()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/k;->b()V

    :cond_0
    return-void
.end method

.method protected final g()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/n;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/j;->i()V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v1, v1, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-static {v1}, Lcom/everyplay/Everyplay/view/n;->a(Landroid/view/View;)V

    new-instance v1, Lcom/everyplay/Everyplay/view/l$a;

    iget-object v2, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v2, v2, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    invoke-direct {v1, p0, v2}, Lcom/everyplay/Everyplay/view/l$a;-><init>(Lcom/everyplay/Everyplay/view/l;Lcom/everyplay/Everyplay/view/EveryplayWebView;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    invoke-static {v0}, Lcom/everyplay/Everyplay/communication/upload/c;->b(Lcom/everyplay/Everyplay/communication/upload/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->g:Lcom/everyplay/Everyplay/view/a/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->g:Lcom/everyplay/Everyplay/view/a/a;

    iput-object v4, v0, Lcom/everyplay/Everyplay/view/a/a;->c:Lcom/everyplay/Everyplay/view/a/b;

    :cond_2
    iput-object v4, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    :cond_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/j;->i()V

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    sget v1, Lcom/everyplay/Everyplay/view/j$b;->c:I

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/j;->c(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->c:Lcom/everyplay/Everyplay/view/EveryplayWebView;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/EveryplayWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final i()V
    .locals 2

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/l;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/everyplay/Everyplay/view/l$14;

    invoke-direct {v0, p0}, Lcom/everyplay/Everyplay/view/l$14;-><init>(Lcom/everyplay/Everyplay/view/l;)V

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/l;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final j()V
    .locals 2

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/l;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/everyplay/Everyplay/view/l$2;

    invoke-direct {v0, p0}, Lcom/everyplay/Everyplay/view/l$2;-><init>(Lcom/everyplay/Everyplay/view/l;)V

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/l;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/l;->a(F)V

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/everyplay/Everyplay/view/d;->b()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LANDSCAPE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/everyplay/Everyplay/view/d;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/everyplay/Everyplay/e/a;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/everyplay/Everyplay/view/l$12;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/view/l$12;-><init>(Lcom/everyplay/Everyplay/view/l;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v2}, Lcom/everyplay/Everyplay/view/l;->setDisableMenuSwipe(Z)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/l;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/everyplay/Everyplay/view/EveryplaySharingModalActivity;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/everyplay/Everyplay/view/l;->setDisableMenuSwipe(Z)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/k;->d()V

    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/l;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/everyplay/Everyplay/view/EveryplaySharingModalActivity;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/j;->h:Lcom/everyplay/Everyplay/view/k;

    iput-boolean v2, v0, Lcom/everyplay/Everyplay/view/k;->h:Z

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/everyplay/Everyplay/view/k$12;

    invoke-direct {v2, v0}, Lcom/everyplay/Everyplay/view/k$12;-><init>(Lcom/everyplay/Everyplay/view/k;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :cond_4
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_5

    invoke-static {}, Lcom/everyplay/Everyplay/view/d;->b()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/everyplay/Everyplay/e/a;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/everyplay/Everyplay/view/l$13;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/view/l$13;-><init>(Lcom/everyplay/Everyplay/view/l;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/l;->setDisableMenuSwipe(Z)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/everyplay/Everyplay/view/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l;->a:Lcom/everyplay/Everyplay/view/j;

    sget v1, Lcom/everyplay/Everyplay/view/j$a;->a:I

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/j;->b(I)V

    goto :goto_0
.end method

.method public final setDisableMenuSwipe(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/everyplay/Everyplay/view/l;->b:Z

    return-void
.end method

.method public final setFullscreen(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/l;->j()V

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/l;->e()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/l;->setDisableMenuSwipe(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/everyplay/Everyplay/view/l;->f()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/l;->setDisableMenuSwipe(Z)V

    goto :goto_0
.end method
