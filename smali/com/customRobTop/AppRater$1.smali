.class Lcom/customRobTop/AppRater$1;
.super Ljava/lang/Object;
.source "AppRater.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/customRobTop/AppRater;->showRateDialog(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$editor:Landroid/content/SharedPreferences$Editor;

.field private final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences$Editor;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/customRobTop/AppRater$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    iput-object p2, p0, Lcom/customRobTop/AppRater$1;->val$mContext:Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/customRobTop/AppRater$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/customRobTop/AppRater$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "dontshowagain"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 67
    iget-object v0, p0, Lcom/customRobTop/AppRater$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/customRobTop/AppRater$1;->val$mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/customRobTop/AppRater;->openRate(Landroid/content/Context;)V

    .line 72
    return-void
.end method
