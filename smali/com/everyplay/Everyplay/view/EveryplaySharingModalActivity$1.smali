.class final Lcom/everyplay/Everyplay/view/EveryplaySharingModalActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/EveryplaySharingModalActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/EveryplaySharingModalActivity;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/EveryplaySharingModalActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/EveryplaySharingModalActivity$1;->a:Lcom/everyplay/Everyplay/view/EveryplaySharingModalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/EveryplaySharingModalActivity$1;->a:Lcom/everyplay/Everyplay/view/EveryplaySharingModalActivity;

    const/4 v1, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/everyplay/Everyplay/view/EveryplaySharingModalActivity;->b(ILandroid/os/Bundle;)V

    return-void
.end method
