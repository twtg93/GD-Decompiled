.class public final Lcom/everyplay/Everyplay/view/a/a;
.super Lcom/everyplay/Everyplay/view/m;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everyplay/Everyplay/view/a/a$a;
    }
.end annotation


# instance fields
.field public c:Lcom/everyplay/Everyplay/view/a/b;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/Button;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/everyplay/Everyplay/view/m;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/everyplay/Everyplay/view/a/a;->d:Landroid/widget/Button;

    iput-object v1, p0, Lcom/everyplay/Everyplay/view/a/a;->e:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/everyplay/Everyplay/view/a/a;->f:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/everyplay/Everyplay/view/a/a;->g:Landroid/widget/Button;

    const/4 v0, 0x0

    iput v0, p0, Lcom/everyplay/Everyplay/view/a/a;->h:I

    iput-object v1, p0, Lcom/everyplay/Everyplay/view/a/a;->c:Lcom/everyplay/Everyplay/view/a/b;

    sget v0, Lcom/everyplay/Everyplay/R$layout;->everyplay_splashscreen:I

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/a/a;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/a/a;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/a/a;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/a/a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/everyplay/Everyplay/view/m;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    sget v1, Lcom/everyplay/Everyplay/R$id;->splashScreenCloseButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/a/a;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    sget v1, Lcom/everyplay/Everyplay/R$id;->splashScreenProgressBar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/a/a;->e:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    sget v1, Lcom/everyplay/Everyplay/R$id;->splashScreenStatusText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/a/a;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/m;->m:Landroid/view/View;

    sget v1, Lcom/everyplay/Everyplay/R$id;->splashScreenRetryButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/a/a;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/a/a;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/a/a;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/everyplay/Everyplay/view/a/a$a;->a:I

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/a/a;->b(I)V

    return-void
.end method

.method public final b(I)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    iput p1, p0, Lcom/everyplay/Everyplay/view/a/a;->h:I

    sget-object v0, Lcom/everyplay/Everyplay/view/a/a$1;->a:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/a/a;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/a/a;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/a/a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/a/a;->g:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    sget v0, Lcom/everyplay/Everyplay/R$string;->everyplay_loading_text:I

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/everyplay/Everyplay/view/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/a/a;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/a/a;->d:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/a/a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/a/a;->g:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    sget v0, Lcom/everyplay/Everyplay/R$string;->everyplay_connection_success:I

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/everyplay/Everyplay/view/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/a/a;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/a/a;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/a/a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/a/a;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    sget v0, Lcom/everyplay/Everyplay/view/a/a$a;->c:I

    if-ne p1, v0, :cond_0

    sget v0, Lcom/everyplay/Everyplay/R$string;->everyplay_connection_failed:I

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/everyplay/Everyplay/view/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/everyplay/Everyplay/R$string;->everyplay_connection_timeout:I

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/view/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/everyplay/Everyplay/view/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/a/a;->d:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/everyplay/Everyplay/Everyplay;->hideEveryplay()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/a/a;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/a/a;->c:Lcom/everyplay/Everyplay/view/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/a/a;->c:Lcom/everyplay/Everyplay/view/a/b;

    invoke-interface {v0}, Lcom/everyplay/Everyplay/view/a/b;->h()V

    goto :goto_0
.end method
