.class final Lcom/everyplay/Everyplay/d/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/d/b;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/d/b;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/d/b$2;->a:Lcom/everyplay/Everyplay/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    sget v0, Lcom/everyplay/Everyplay/communication/c$a;->f:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/c;->a(I[Ljava/lang/Object;)V

    return-void
.end method
