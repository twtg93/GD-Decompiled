.class public Lcom/everyplay/Everyplay/device/EveryplayDevice$PermissionActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/Everyplay/device/EveryplayDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionActivity"
.end annotation


# static fields
.field private static e:Lcom/everyplay/Everyplay/device/e;


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private f:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/everyplay/Everyplay/device/EveryplayDevice$PermissionActivity;->a:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/everyplay/Everyplay/device/EveryplayDevice$PermissionActivity;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/everyplay/Everyplay/device/EveryplayDevice$PermissionActivity;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/everyplay/Everyplay/device/EveryplayDevice$PermissionActivity;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/everyplay/Everyplay/device/e;)V
    .locals 0

    sput-object p0, Lcom/everyplay/Everyplay/device/EveryplayDevice$PermissionActivity;->e:Lcom/everyplay/Everyplay/device/e;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPostResume()V
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    iget-object v0, p0, Lcom/everyplay/Everyplay/device/EveryplayDevice$PermissionActivity;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/everyplay/Everyplay/device/EveryplayDevice$PermissionActivity;->a:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/device/EveryplayDevice$PermissionActivity;->getIntent()Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/device/EveryplayDevice$PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "permissions"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/everyplay/Everyplay/device/EveryplayDevice$PermissionActivity;->f:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/device/EveryplayDevice$PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "callingFunction"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/everyplay/Everyplay/device/EveryplayDevice$PermissionActivity;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/device/EveryplayDevice$PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "broadcastReceiver"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/everyplay/Everyplay/device/EveryplayDevice$PermissionActivity;->d:Ljava/lang/String;

    invoke-static {}, Lcom/everyplay/Everyplay/communication/c;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/everyplay/Everyplay/device/EveryplayDevice$PermissionActivity;->f:[Ljava/lang/String;

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    invoke-static {}, Lcom/everyplay/Everyplay/communication/c;->b()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    invoke-static {}, Lcom/everyplay/Everyplay/communication/c;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/everyplay/Everyplay/device/EveryplayDevice$PermissionActivity;->f:[Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/everyplay/Everyplay/device/EveryplayDevice$PermissionActivity;->finish()V

    goto :goto_2
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/everyplay/Everyplay/device/EveryplayDevice$PermissionActivity;->e:Lcom/everyplay/Everyplay/device/e;

    iget-object v1, p0, Lcom/everyplay/Everyplay/device/EveryplayDevice$PermissionActivity;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p3}, Lcom/everyplay/Everyplay/device/e;->a(Ljava/lang/String;[Ljava/lang/String;[I)V

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/device/EveryplayDevice$PermissionActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
