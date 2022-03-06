.class Lcom/customRobTop/BaseRobTopActivity$5;
.super Ljava/lang/Object;
.source "BaseRobTopActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/customRobTop/BaseRobTopActivity;->tryShowRateDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$appName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/customRobTop/BaseRobTopActivity$5;->val$appName:Ljava/lang/String;

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 337
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    iget-object v1, p0, Lcom/customRobTop/BaseRobTopActivity$5;->val$appName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/customRobTop/AppRater;->tryShowRateDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 338
    return-void
.end method
