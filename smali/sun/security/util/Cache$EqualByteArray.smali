.class public Lsun/security/util/Cache$EqualByteArray;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EqualByteArray"
.end annotation


# instance fields
.field private final b:[B

.field private volatile hash:I


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "b"    # [B

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    .line 159
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 174
    if-ne p0, p1, :cond_0

    .line 175
    const/4 v1, 0x1

    .line 181
    :goto_0
    return v1

    .line 177
    :cond_0
    instance-of v1, p1, Lsun/security/util/Cache$EqualByteArray;

    if-nez v1, :cond_1

    .line 178
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 180
    check-cast v0, Lsun/security/util/Cache$EqualByteArray;

    .line 181
    .local v0, "other":Lsun/security/util/Cache$EqualByteArray;
    iget-object v1, p0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    iget-object v2, v0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 162
    iget v0, p0, Lsun/security/util/Cache$EqualByteArray;->hash:I

    .line 163
    .local v0, "h":I
    if-nez v0, :cond_1

    .line 164
    iget-object v2, p0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    array-length v2, v2

    add-int/lit8 v0, v2, 0x1

    .line 165
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 166
    iget-object v2, p0, Lsun/security/util/Cache$EqualByteArray;->b:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x25

    add-int/2addr v0, v2

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_0
    iput v0, p0, Lsun/security/util/Cache$EqualByteArray;->hash:I

    .line 170
    .end local v1    # "i":I
    :cond_1
    return v0
.end method
