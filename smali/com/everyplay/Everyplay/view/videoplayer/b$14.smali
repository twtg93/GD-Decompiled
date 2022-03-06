.class final Lcom/everyplay/Everyplay/view/videoplayer/b$14;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/videoplayer/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/everyplay/Everyplay/view/videoplayer/b$a;Lcom/everyplay/Everyplay/view/videoplayer/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/videoplayer/b$a;

.field final synthetic b:Lcom/everyplay/Everyplay/view/videoplayer/b;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/videoplayer/b;Lcom/everyplay/Everyplay/view/videoplayer/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$14;->b:Lcom/everyplay/Everyplay/view/videoplayer/b;

    iput-object p2, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$14;->a:Lcom/everyplay/Everyplay/view/videoplayer/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/videoplayer/b$14;->a:Lcom/everyplay/Everyplay/view/videoplayer/b$a;

    invoke-interface {v0}, Lcom/everyplay/Everyplay/view/videoplayer/b$a;->a()V

    return-void
.end method
