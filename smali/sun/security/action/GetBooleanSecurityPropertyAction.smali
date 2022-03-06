.class public Lsun/security/action/GetBooleanSecurityPropertyAction;
.super Ljava/lang/Object;
.source "GetBooleanSecurityPropertyAction.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private theProp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "theProp"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lsun/security/action/GetBooleanSecurityPropertyAction;->theProp:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, "b":Z
    :try_start_0
    iget-object v2, p0, Lsun/security/action/GetBooleanSecurityPropertyAction;->theProp:Ljava/lang/String;

    invoke-static {v2}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 72
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 70
    .restart local v1    # "value":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 71
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lsun/security/action/GetBooleanSecurityPropertyAction;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
