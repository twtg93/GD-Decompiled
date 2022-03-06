.class final Lcom/everyplay/Everyplay/view/videoplayer/EveryplayRangeSlider$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/videoplayer/EveryplayRangeSlider;->a(Landroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:I

.field final synthetic c:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayRangeSlider;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/videoplayer/EveryplayRangeSlider;Landroid/widget/ImageView;I)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayRangeSlider$4;->c:Lcom/everyplay/Everyplay/view/videoplayer/EveryplayRangeSlider;

    iput-object p2, p0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayRangeSlider$4;->a:Landroid/widget/ImageView;

    iput p3, p0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayRangeSlider$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayRangeSlider$4;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayRangeSlider$4;->b:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/videoplayer/EveryplayRangeSlider$4;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
