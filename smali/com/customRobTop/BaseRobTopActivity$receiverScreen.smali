.class public Lcom/customRobTop/BaseRobTopActivity$receiverScreen;
.super Landroid/content/BroadcastReceiver;
.source "BaseRobTopActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/customRobTop/BaseRobTopActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "receiverScreen"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/customRobTop/BaseRobTopActivity;


# direct methods
.method public constructor <init>(Lcom/customRobTop/BaseRobTopActivity;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/customRobTop/BaseRobTopActivity$receiverScreen;->this$0:Lcom/customRobTop/BaseRobTopActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 380
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 381
    const-string v2, "TAG"

    const-string v3, "ACTION_SCREEN_ON"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v2, p0, Lcom/customRobTop/BaseRobTopActivity$receiverScreen;->this$0:Lcom/customRobTop/BaseRobTopActivity;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Lcom/customRobTop/BaseRobTopActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 384
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    .line 385
    .local v1, "locked":Z
    if-nez v1, :cond_0

    .line 386
    sput-boolean v4, Lcom/customRobTop/BaseRobTopActivity;->shouldResumeSound_:Z

    .line 388
    :cond_0
    sget-boolean v2, Lcom/customRobTop/BaseRobTopActivity;->isPaused_:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/customRobTop/BaseRobTopActivity;->shouldResumeSound_:Z

    if-eqz v2, :cond_1

    .line 390
    invoke-static {}, Lcom/customRobTop/JniToCpp;->resumeSound()V

    .line 394
    .end local v0    # "km":Landroid/app/KeyguardManager;
    .end local v1    # "locked":Z
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 396
    const/4 v2, 0x0

    sput-boolean v2, Lcom/customRobTop/BaseRobTopActivity;->shouldResumeSound_:Z

    .line 398
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 400
    sput-boolean v4, Lcom/customRobTop/BaseRobTopActivity;->shouldResumeSound_:Z

    .line 402
    sget-boolean v2, Lcom/customRobTop/BaseRobTopActivity;->isPaused_:Z

    if-nez v2, :cond_3

    .line 404
    invoke-static {}, Lcom/customRobTop/JniToCpp;->resumeSound()V

    .line 407
    :cond_3
    return-void
.end method
