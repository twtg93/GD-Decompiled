.class public Lsun/security/util/PendingException;
.super Ljava/lang/RuntimeException;
.source "PendingException.java"


# static fields
.field private static final serialVersionUID:J = -0x4830a36a9e30e6a0L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method
