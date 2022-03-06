.class Lcom/customRobTop/BaseRobTopActivity$7;
.super Ljava/lang/Object;
.source "BaseRobTopActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/customRobTop/BaseRobTopActivity;->sendMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$body:Ljava/lang/String;

.field private final synthetic val$subject:Ljava/lang/String;

.field private final synthetic val$to:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/customRobTop/BaseRobTopActivity$7;->val$to:Ljava/lang/String;

    iput-object p2, p0, Lcom/customRobTop/BaseRobTopActivity$7;->val$subject:Ljava/lang/String;

    iput-object p3, p0, Lcom/customRobTop/BaseRobTopActivity$7;->val$body:Ljava/lang/String;

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 362
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "message/rfc822"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v2, "android.intent.extra.EMAIL"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/customRobTop/BaseRobTopActivity$7;->val$to:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const-string v2, "android.intent.extra.SUBJECT"

    iget-object v3, p0, Lcom/customRobTop/BaseRobTopActivity$7;->val$subject:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lcom/customRobTop/BaseRobTopActivity$7;->val$body:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    :try_start_0
    sget-object v2, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    const-string v3, "Send mail..."

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/customRobTop/BaseRobTopActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_0
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    const-string v3, "There are no email clients installed."

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
