.class final Lcom/everyplay/Everyplay/view/browser/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/view/browser/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/browser/b;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/browser/b;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/browser/b$3;->a:Lcom/everyplay/Everyplay/view/browser/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/browser/b$3;->a:Lcom/everyplay/Everyplay/view/browser/b;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/browser/b;->f:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
