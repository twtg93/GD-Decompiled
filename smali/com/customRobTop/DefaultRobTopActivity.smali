.class public Lcom/customRobTop/DefaultRobTopActivity;
.super Landroid/app/Activity;
.source "DefaultRobTopActivity.java"


# static fields
.field private static me:Lcom/customRobTop/DefaultRobTopActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/customRobTop/DefaultRobTopActivity;->me:Lcom/customRobTop/DefaultRobTopActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static isBillingSupported()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public static purchaseItem(Ljava/lang/String;)V
    .locals 3
    .param p0, "itemID"    # Ljava/lang/String;

    .prologue
    .line 24
    const-string v0, "IAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IAP Purchase item: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void
.end method

.method public static restorePurchases()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method


# virtual methods
.method public doRestoreCheck()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, ""

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    sput-object p0, Lcom/customRobTop/DefaultRobTopActivity;->me:Lcom/customRobTop/DefaultRobTopActivity;

    .line 16
    return-void
.end method

.method public updateOwnedItems()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method
