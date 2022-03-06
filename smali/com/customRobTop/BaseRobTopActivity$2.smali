.class Lcom/customRobTop/BaseRobTopActivity$2;
.super Ljava/lang/Object;
.source "BaseRobTopActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/customRobTop/BaseRobTopActivity;->setupEveryplay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 235
    new-instance v0, Lcom/customRobTop/EPManager;

    invoke-direct {v0}, Lcom/customRobTop/EPManager;-><init>()V

    sput-object v0, Lcom/customRobTop/BaseRobTopActivity;->_EPM:Lcom/customRobTop/EPManager;

    .line 236
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->_EPM:Lcom/customRobTop/EPManager;

    sget-object v1, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    const-string v2, "834aba85abcb05e40d008511621061def6c71259"

    const-string v3, "d9dc0520b3b1b65904708e3175e4e0de9850f1cb"

    invoke-virtual {v0, v1, v2, v3}, Lcom/customRobTop/EPManager;->setup(Lcom/customRobTop/BaseRobTopActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method
