.class final Lcom/everyplay/Everyplay/communication/e$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/communication/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/communication/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/c/j;

.field final synthetic b:Lcom/everyplay/Everyplay/communication/m;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/c/j;Lcom/everyplay/Everyplay/communication/m;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/communication/e$2;->a:Lcom/everyplay/Everyplay/c/j;

    iput-object p2, p0, Lcom/everyplay/Everyplay/communication/e$2;->b:Lcom/everyplay/Everyplay/communication/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/content/Intent;Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/everyplay/Everyplay/communication/c;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/everyplay/Everyplay/communication/e$2;->a:Lcom/everyplay/Everyplay/c/j;

    invoke-static {v1, v0, v2}, Lcom/everyplay/Everyplay/communication/e;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/everyplay/Everyplay/c/j;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/everyplay/Everyplay/communication/e$2;->b:Lcom/everyplay/Everyplay/communication/m;

    invoke-interface {v1, v0}, Lcom/everyplay/Everyplay/communication/m;->a([B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/e$2;->b:Lcom/everyplay/Everyplay/communication/m;

    invoke-interface {v0}, Lcom/everyplay/Everyplay/communication/m;->a()V

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/everyplay/Everyplay/communication/e$2;->b:Lcom/everyplay/Everyplay/communication/m;

    invoke-interface {v0}, Lcom/everyplay/Everyplay/communication/m;->a()V

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1
.end method
