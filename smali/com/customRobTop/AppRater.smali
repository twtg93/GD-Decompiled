.class public Lcom/customRobTop/AppRater;
.super Ljava/lang/Object;
.source "AppRater.java"


# static fields
.field private static final DAYS_UNTIL_PROMPT:I = 0x2

.field private static final LAUNCHES_AT_REMIND:I = 0x2

.field private static final LAUNCHES_UNTIL_PROMPT:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static app_launched(Landroid/content/Context;)V
    .locals 12
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const-wide/16 v10, 0x0

    .line 16
    const-string v5, "apprater"

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 17
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "dontshowagain"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 33
    :goto_0
    return-void

    .line 19
    :cond_0
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 22
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "launch_count"

    invoke-interface {v4, v5, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long v2, v6, v8

    .line 23
    .local v2, "launch_count":J
    const-string v5, "launch_count"

    invoke-interface {v1, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 26
    const-string v5, "date_firstlaunch"

    invoke-interface {v4, v5, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 27
    .local v0, "date_firstLaunch":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v5, v6, v10

    if-nez v5, :cond_1

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 29
    const-string v5, "date_firstlaunch"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v1, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 32
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static dontShowAgain(Landroid/content/Context;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 99
    const-string v2, "apprater"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 100
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 102
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "dontshowagain"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    return-void
.end method

.method public static openRate(Landroid/content/Context;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 108
    invoke-static {}, Lcom/customRobTop/JniToCpp;->userDidAttemptToRateApp()V

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "market://details?id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 110
    return-void
.end method

.method public static showRateDialog(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "appName"    # Ljava/lang/String;

    .prologue
    .line 59
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Thanks for playing!"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Please take some time to rate "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on Google Play. We would love to hear what think! :)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 62
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Rate "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/customRobTop/AppRater$1;

    invoke-direct {v4, p1, p0}, Lcom/customRobTop/AppRater$1;-><init>(Landroid/content/SharedPreferences$Editor;Landroid/content/Context;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 74
    const-string v3, "No Thanks"

    new-instance v4, Lcom/customRobTop/AppRater$2;

    invoke-direct {v4, p1}, Lcom/customRobTop/AppRater$2;-><init>(Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 83
    const-string v3, "Remind me later"

    new-instance v4, Lcom/customRobTop/AppRater$3;

    invoke-direct {v4, p1}, Lcom/customRobTop/AppRater$3;-><init>(Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 93
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 94
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 95
    return-void
.end method

.method public static tryShowRateDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 37
    const-string v5, "apprater"

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 38
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "dontshowagain"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 43
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "launch_count"

    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 46
    .local v2, "launch_count":J
    const-string v5, "date_firstlaunch"

    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 49
    .local v0, "date_firstLaunch":Ljava/lang/Long;
    const-wide/16 v6, 0x5

    cmp-long v5, v2, v6

    if-ltz v5, :cond_0

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 51
    const-wide/32 v10, 0xa4cb800

    add-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-ltz v5, :cond_0

    .line 52
    invoke-static {p0, v1, p1}, Lcom/customRobTop/AppRater;->showRateDialog(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    goto :goto_0
.end method
