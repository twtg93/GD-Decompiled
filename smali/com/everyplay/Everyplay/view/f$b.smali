.class Lcom/everyplay/Everyplay/view/f$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/view/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field protected a:Lcom/everyplay/Everyplay/view/f$c;

.field protected b:Lcom/everyplay/Everyplay/communication/k;


# direct methods
.method public constructor <init>(Lcom/everyplay/Everyplay/view/f$c;Lcom/everyplay/Everyplay/communication/k;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/f$b;->a:Lcom/everyplay/Everyplay/view/f$c;

    iput-object v0, p0, Lcom/everyplay/Everyplay/view/f$b;->b:Lcom/everyplay/Everyplay/communication/k;

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/f$b;->a:Lcom/everyplay/Everyplay/view/f$c;

    iput-object p2, p0, Lcom/everyplay/Everyplay/view/f$b;->b:Lcom/everyplay/Everyplay/communication/k;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method
