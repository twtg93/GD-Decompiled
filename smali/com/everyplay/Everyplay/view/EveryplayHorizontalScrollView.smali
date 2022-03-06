.class public Lcom/everyplay/Everyplay/view/EveryplayHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everyplay/Everyplay/view/EveryplayHorizontalScrollView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/everyplay/Everyplay/view/EveryplayHorizontalScrollView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getScrollListener()Lcom/everyplay/Everyplay/view/EveryplayHorizontalScrollView$a;
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/EveryplayHorizontalScrollView;->a:Lcom/everyplay/Everyplay/view/EveryplayHorizontalScrollView$a;

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    return-void
.end method

.method public setScrollListener(Lcom/everyplay/Everyplay/view/EveryplayHorizontalScrollView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/EveryplayHorizontalScrollView;->a:Lcom/everyplay/Everyplay/view/EveryplayHorizontalScrollView$a;

    return-void
.end method
