.class public Lsys/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyOf([BI)[B
    .locals 3
    .param p0, "original"    # [B
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 33
    new-array v0, p1, [B

    .line 34
    .local v0, "copy":[B
    array-length v1, p0

    .line 35
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 34
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    return-object v0
.end method
