.class public Lsun/security/pkcs/EncodingException;
.super Ljava/lang/Exception;
.source "EncodingException.java"


# static fields
.field private static final serialVersionUID:J = 0x3858b8e8d63bcaa5L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method
