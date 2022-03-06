.class final Lcom/everyplay/Everyplay/view/browser/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/browser/a;->b(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/everyplay/Everyplay/view/browser/a;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/browser/a;F)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/browser/a$2;->b:Lcom/everyplay/Everyplay/view/browser/a;

    iput p2, p0, Lcom/everyplay/Everyplay/view/browser/a$2;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/browser/a$2;->b:Lcom/everyplay/Everyplay/view/browser/a;

    iget-object v0, v0, Lcom/everyplay/Everyplay/view/browser/a;->d:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/everyplay/Everyplay/view/browser/a$2;->a:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    return-void
.end method
