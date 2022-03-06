.class Lcom/customRobTop/BaseRobTopActivity$4;
.super Ljava/lang/Object;
.source "BaseRobTopActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/customRobTop/BaseRobTopActivity;->openAppPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 325
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    invoke-static {v0}, Lcom/customRobTop/AppRater;->dontShowAgain(Landroid/content/Context;)V

    .line 326
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    invoke-static {v0}, Lcom/customRobTop/AppRater;->openRate(Landroid/content/Context;)V

    .line 327
    return-void
.end method
