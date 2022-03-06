.class final Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->onEveryplayThumbnailReadyAtTextureId(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    iput p1, p0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge$2;->a:I

    iput p2, p0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    sget v0, Lcom/everyplay/Everyplay/communication/c$a;->l:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge$2;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge$2;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/c;->a(I[Ljava/lang/Object;)V

    return-void
.end method
