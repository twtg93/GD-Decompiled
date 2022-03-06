.class Lsun/security/util/MemoryCache$HardCacheEntry;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lsun/security/util/MemoryCache$CacheEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/MemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HardCacheEntry"
.end annotation


# instance fields
.field private expirationTime:J

.field private key:Ljava/lang/Object;

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "expirationTime"    # J

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput-object p1, p0, Lsun/security/util/MemoryCache$HardCacheEntry;->key:Ljava/lang/Object;

    .line 403
    iput-object p2, p0, Lsun/security/util/MemoryCache$HardCacheEntry;->value:Ljava/lang/Object;

    .line 404
    iput-wide p3, p0, Lsun/security/util/MemoryCache$HardCacheEntry;->expirationTime:J

    .line 405
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lsun/security/util/MemoryCache$HardCacheEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lsun/security/util/MemoryCache$HardCacheEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 424
    iput-object v0, p0, Lsun/security/util/MemoryCache$HardCacheEntry;->key:Ljava/lang/Object;

    .line 425
    iput-object v0, p0, Lsun/security/util/MemoryCache$HardCacheEntry;->value:Ljava/lang/Object;

    .line 426
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lsun/security/util/MemoryCache$HardCacheEntry;->expirationTime:J

    .line 427
    return-void
.end method

.method public isValid(J)Z
    .locals 5
    .param p1, "currentTime"    # J

    .prologue
    .line 416
    iget-wide v2, p0, Lsun/security/util/MemoryCache$HardCacheEntry;->expirationTime:J

    cmp-long v1, p1, v2

    if-gtz v1, :cond_1

    const/4 v0, 0x1

    .line 417
    .local v0, "valid":Z
    :goto_0
    if-nez v0, :cond_0

    .line 418
    invoke-virtual {p0}, Lsun/security/util/MemoryCache$HardCacheEntry;->invalidate()V

    .line 420
    :cond_0
    return v0

    .line 416
    .end local v0    # "valid":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
