.class final Lcom/everyplay/Everyplay/communication/c/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/communication/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/InputStream;

.field final synthetic b:Lcom/everyplay/Everyplay/communication/c/a;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/communication/c/a;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/communication/c/a$3;->b:Lcom/everyplay/Everyplay/communication/c/a;

    iput-object p2, p0, Lcom/everyplay/Everyplay/communication/c/a$3;->a:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lcom/everyplay/Everyplay/communication/c/a$a;

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/c/a$3;->b:Lcom/everyplay/Everyplay/communication/c/a;

    iget-object v2, p0, Lcom/everyplay/Everyplay/communication/c/a$3;->a:Ljava/io/InputStream;

    invoke-direct {v0, v1, v2}, Lcom/everyplay/Everyplay/communication/c/a$a;-><init>(Lcom/everyplay/Everyplay/communication/c/a;Ljava/io/InputStream;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/communication/c/a$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
