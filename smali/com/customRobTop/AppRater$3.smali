.class Lcom/customRobTop/AppRater$3;
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


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/customRobTop/AppRater$3;->val$editor:Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/customRobTop/AppRater$3;->val$editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/customRobTop/AppRater$3;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "launch_count"

    const-wide/16 v2, 0x2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 87
    iget-object v0, p0, Lcom/customRobTop/AppRater$3;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 90
    return-void
.end method
