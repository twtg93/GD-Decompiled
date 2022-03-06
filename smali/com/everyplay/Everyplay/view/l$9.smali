.class final Lcom/everyplay/Everyplay/view/l$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/l;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View$OnTouchListener;

.field final synthetic b:Lcom/everyplay/Everyplay/view/l;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/l;Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/l$9;->b:Lcom/everyplay/Everyplay/view/l;

    iput-object p2, p0, Lcom/everyplay/Everyplay/view/l$9;->a:Landroid/view/View$OnTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/l$9;->a:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method
