.class public final Lcom/everyplay/Everyplay/view/videoplayer/a/h;
.super Lcom/everyplay/Everyplay/view/videoplayer/d;

# interfaces
.implements Lcom/everyplay/Everyplay/c/r;
.implements Lcom/everyplay/Everyplay/view/videoplayer/e$a;
.implements Lcom/everyplay/Everyplay/view/videoplayer/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everyplay/Everyplay/view/videoplayer/a/h$a;
    }
.end annotation


# instance fields
.field c:Lcom/everyplay/Everyplay/c/q;

.field public h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, -0x1

    invoke-direct {p0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/d;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->o:I

    sget-object v0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;->a:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->b(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView$a;)V

    const/16 v0, 0xfa3

    invoke-static {v0}, Lcom/everyplay/Everyplay/e/a;->b(I)I

    move-result v0

    iput v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->o:I

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->j:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->j:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/everyplay/Everyplay/view/n;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->j:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->o:I

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/everyplay/Everyplay/R$layout;->everyplay_video_button_bar:I

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->j:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->i:Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->j:Landroid/widget/RelativeLayout;

    sget v1, Lcom/everyplay/Everyplay/R$id;->everyplayButtonBarButton:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->j:Landroid/widget/RelativeLayout;

    sget v1, Lcom/everyplay/Everyplay/R$id;->commentButtonBarButton:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->l:Landroid/view/View;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->j:Landroid/widget/RelativeLayout;

    sget v1, Lcom/everyplay/Everyplay/R$id;->likeButtonBarButton:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->j:Landroid/widget/RelativeLayout;

    sget v1, Lcom/everyplay/Everyplay/R$id;->shareButtonBarButton:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->n:Landroid/view/View;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->j:Landroid/widget/RelativeLayout;

    sget v1, Lcom/everyplay/Everyplay/R$id;->videoQualityButtonBarButton:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->k:Landroid/view/View;

    sget-object v1, Lcom/everyplay/Everyplay/view/videoplayer/a/h$a;->a:Lcom/everyplay/Everyplay/view/videoplayer/a/h$a;

    invoke-direct {p0, v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->a(Landroid/view/View;Lcom/everyplay/Everyplay/view/videoplayer/a/h$a;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->l:Landroid/view/View;

    sget-object v1, Lcom/everyplay/Everyplay/view/videoplayer/a/h$a;->c:Lcom/everyplay/Everyplay/view/videoplayer/a/h$a;

    invoke-direct {p0, v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->a(Landroid/view/View;Lcom/everyplay/Everyplay/view/videoplayer/a/h$a;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->m:Landroid/view/View;

    sget-object v1, Lcom/everyplay/Everyplay/view/videoplayer/a/h$a;->b:Lcom/everyplay/Everyplay/view/videoplayer/a/h$a;

    invoke-direct {p0, v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->a(Landroid/view/View;Lcom/everyplay/Everyplay/view/videoplayer/a/h$a;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->n:Landroid/view/View;

    sget-object v1, Lcom/everyplay/Everyplay/view/videoplayer/a/h$a;->d:Lcom/everyplay/Everyplay/view/videoplayer/a/h$a;

    invoke-direct {p0, v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->a(Landroid/view/View;Lcom/everyplay/Everyplay/view/videoplayer/a/h$a;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->h:Landroid/view/View;

    sget-object v1, Lcom/everyplay/Everyplay/view/videoplayer/a/h$a;->e:Lcom/everyplay/Everyplay/view/videoplayer/a/h$a;

    invoke-direct {p0, v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->a(Landroid/view/View;Lcom/everyplay/Everyplay/view/videoplayer/a/h$a;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->k:Landroid/view/View;

    sget v1, Lcom/everyplay/Everyplay/R$drawable;->everyplay_video_icon_everyplay:I

    invoke-direct {p0, v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->l:Landroid/view/View;

    sget v1, Lcom/everyplay/Everyplay/R$drawable;->everyplay_video_icon_comment:I

    invoke-direct {p0, v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->m:Landroid/view/View;

    sget v1, Lcom/everyplay/Everyplay/R$drawable;->everyplay_video_icon_like:I

    invoke-direct {p0, v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->n:Landroid/view/View;

    sget v1, Lcom/everyplay/Everyplay/R$drawable;->everyplay_video_icon_share_small:I

    invoke-direct {p0, v0, v1}, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->c:Lcom/everyplay/Everyplay/c/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->c:Lcom/everyplay/Everyplay/c/q;

    iget v0, v0, Lcom/everyplay/Everyplay/c/q;->a:I

    invoke-direct {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->d(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->c:Lcom/everyplay/Everyplay/c/q;

    iget v0, v0, Lcom/everyplay/Everyplay/c/q;->b:I

    invoke-direct {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->c(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->c:Lcom/everyplay/Everyplay/c/q;

    iget-boolean v0, v0, Lcom/everyplay/Everyplay/c/q;->c:Z

    invoke-direct {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->a(Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/everyplay/Everyplay/view/videoplayer/a/h;)Lcom/everyplay/Everyplay/c/q;
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->c:Lcom/everyplay/Everyplay/c/q;

    return-object v0
.end method

.method private a(Landroid/view/View;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->o:I

    iget v2, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->o:I

    invoke-virtual {v1, v4, v4, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1, v1, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    check-cast p1, Landroid/widget/ImageButton;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lcom/everyplay/Everyplay/view/videoplayer/a/h$a;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/everyplay/Everyplay/view/videoplayer/a/h$1;

    invoke-direct {v0, p0, p2}, Lcom/everyplay/Everyplay/view/videoplayer/a/h$1;-><init>(Lcom/everyplay/Everyplay/view/videoplayer/a/h;Lcom/everyplay/Everyplay/view/videoplayer/a/h$a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->m:Landroid/view/View;

    if-eqz p1, :cond_0

    sget v0, Lcom/everyplay/Everyplay/R$drawable;->everyplay_video_icon_like_active:I

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->a(Landroid/view/View;I)V

    return-void

    :cond_0
    sget v0, Lcom/everyplay/Everyplay/R$drawable;->everyplay_video_icon_like:I

    goto :goto_0
.end method

.method private c(I)V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->m:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->m:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private d(I)V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->l:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->l:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/everyplay/Everyplay/c/e;[Ljava/lang/String;)V
    .locals 4

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->c:Lcom/everyplay/Everyplay/c/q;

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->j:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "likes_count"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->c:Lcom/everyplay/Everyplay/c/q;

    iget v0, v0, Lcom/everyplay/Everyplay/c/q;->b:I

    invoke-direct {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->c(I)V

    :cond_2
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "user_liked"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v2, :cond_0

    const-string v0, "Video user_liked %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->c:Lcom/everyplay/Everyplay/c/q;

    iget-boolean v3, v3, Lcom/everyplay/Everyplay/c/q;->c:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->c:Lcom/everyplay/Everyplay/c/q;

    iget-boolean v0, v0, Lcom/everyplay/Everyplay/c/q;->c:Z

    invoke-direct {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->a(Z)V

    goto :goto_0
.end method

.method public final a(Lcom/everyplay/Everyplay/c/q$c;)V
    .locals 2

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->h:Landroid/view/View;

    sget-object v0, Lcom/everyplay/Everyplay/view/videoplayer/e;->o:Lcom/everyplay/Everyplay/c/q$c;

    if-ne p1, v0, :cond_0

    sget v0, Lcom/everyplay/Everyplay/R$drawable;->everyplay_video_icon_hd_on:I

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->a(Landroid/view/View;I)V

    return-void

    :cond_0
    sget v0, Lcom/everyplay/Everyplay/R$drawable;->everyplay_video_icon_hd_off:I

    goto :goto_0
.end method

.method public final a(Lcom/everyplay/Everyplay/c/q;)V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->c:Lcom/everyplay/Everyplay/c/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->c:Lcom/everyplay/Everyplay/c/q;

    invoke-virtual {v0, p0}, Lcom/everyplay/Everyplay/c/q;->b(Lcom/everyplay/Everyplay/c/r;)V

    :cond_0
    invoke-virtual {p1, p0}, Lcom/everyplay/Everyplay/c/q;->a(Lcom/everyplay/Everyplay/c/r;)V

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->c:Lcom/everyplay/Everyplay/c/q;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->c:Lcom/everyplay/Everyplay/c/q;

    iget v0, v0, Lcom/everyplay/Everyplay/c/q;->a:I

    invoke-direct {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->d(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->c:Lcom/everyplay/Everyplay/c/q;

    iget v0, v0, Lcom/everyplay/Everyplay/c/q;->b:I

    invoke-direct {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->c(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->c:Lcom/everyplay/Everyplay/c/q;

    iget-boolean v0, v0, Lcom/everyplay/Everyplay/c/q;->c:Z

    invoke-direct {p0, v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->a(Z)V

    return-void
.end method

.method public final a(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;)V
    .locals 3

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->h:Landroid/view/View;

    move-object v0, p1

    check-cast v0, Lcom/everyplay/Everyplay/view/videoplayer/e;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/view/videoplayer/e;->getQuality()Lcom/everyplay/Everyplay/c/q$c;

    move-result-object v0

    sget-object v2, Lcom/everyplay/Everyplay/view/videoplayer/e;->o:Lcom/everyplay/Everyplay/c/q$c;

    if-ne v0, v2, :cond_0

    sget v0, Lcom/everyplay/Everyplay/R$drawable;->everyplay_video_icon_hd_on:I

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->a(Landroid/view/View;I)V

    invoke-super {p0, p1}, Lcom/everyplay/Everyplay/view/videoplayer/d;->a(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;)V

    return-void

    :cond_0
    sget v0, Lcom/everyplay/Everyplay/R$drawable;->everyplay_video_icon_hd_off:I

    goto :goto_0
.end method

.method public final a(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayGenericVideoPlayerView;Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/h;->j:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "bottombar"

    return-object v0
.end method
