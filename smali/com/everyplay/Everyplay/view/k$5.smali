.class final Lcom/everyplay/Everyplay/view/k$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/k;->onUploadFailed(Lcom/everyplay/Everyplay/communication/upload/b;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/k;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/k;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/k$5;->a:Lcom/everyplay/Everyplay/view/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/k$5;->a:Lcom/everyplay/Everyplay/view/k;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/k;->d(Lcom/everyplay/Everyplay/view/k;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/k$5;->a:Lcom/everyplay/Everyplay/view/k;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/k;->d(Lcom/everyplay/Everyplay/view/k;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/everyplay/Everyplay/R$string;->everyplay_upload_failed_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/k$5;->a:Lcom/everyplay/Everyplay/view/k;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/k;->m(Lcom/everyplay/Everyplay/view/k;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/k$5;->a:Lcom/everyplay/Everyplay/view/k;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/k;->g(Lcom/everyplay/Everyplay/view/k;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/k$5;->a:Lcom/everyplay/Everyplay/view/k;

    invoke-static {v0}, Lcom/everyplay/Everyplay/view/k;->n(Lcom/everyplay/Everyplay/view/k;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
