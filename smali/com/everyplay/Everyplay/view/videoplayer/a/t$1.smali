.class final Lcom/everyplay/Everyplay/view/videoplayer/a/t$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/view/videoplayer/a/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/everyplay/Everyplay/view/videoplayer/a/t;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/videoplayer/a/t;II)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/t$1;->c:Lcom/everyplay/Everyplay/view/videoplayer/a/t;

    iput p2, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/t$1;->a:I

    iput p3, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/t$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/t$1;->c:Lcom/everyplay/Everyplay/view/videoplayer/a/t;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/t;->a(Lcom/everyplay/Everyplay/view/videoplayer/a/t;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/t$1;->a:I

    div-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0x3c

    iget v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/t$1;->a:I

    div-int/lit16 v1, v1, 0x3e8

    rem-int/lit8 v1, v1, 0x3c

    const-string v2, "%02d:%02d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/t$1;->c:Lcom/everyplay/Everyplay/view/videoplayer/a/t;

    invoke-static {v1}, Lcom/everyplay/Everyplay/view/videoplayer/a/t;->a(Lcom/everyplay/Everyplay/view/videoplayer/a/t;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/t$1;->c:Lcom/everyplay/Everyplay/view/videoplayer/a/t;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/videoplayer/a/t;->b(Lcom/everyplay/Everyplay/view/videoplayer/a/t;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/t$1;->b:I

    iget v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/t$1;->a:I

    sub-int/2addr v0, v1

    div-int/lit16 v1, v0, 0x3e8

    div-int/lit8 v1, v1, 0x3c

    div-int/lit16 v0, v0, 0x3e8

    rem-int/lit8 v0, v0, 0x3c

    const-string v2, "-%02d:%02d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/a/t$1;->c:Lcom/everyplay/Everyplay/view/videoplayer/a/t;

    invoke-static {v1}, Lcom/everyplay/Everyplay/view/videoplayer/a/t;->b(Lcom/everyplay/Everyplay/view/videoplayer/a/t;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method