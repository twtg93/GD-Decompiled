.class Lsun/security/util/MemoryCache$SoftCacheEntry;
.super Ljava/lang/ref/SoftReference;
.source "Cache.java"

# interfaces
.implements Lsun/security/util/MemoryCache$CacheEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/MemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoftCacheEntry"
.end annotation


# instance fields
.field private expirationTime:J

.field private key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "expirationTime"    # J
    .param p5, "queue"    # Ljava/lang/ref/ReferenceQueue;

    .prologue
    .line 438
    invoke-direct {p0, p2, p5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 439
    iput-object p1, p0, Lsun/security/util/MemoryCache$SoftCacheEntry;->key:Ljava/lang/Object;

    .line 440
    iput-wide p3, p0, Lsun/security/util/MemoryCache$SoftCacheEntry;->expirationTime:J

    .line 441
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lsun/security/util/MemoryCache$SoftCacheEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 448
    invoke-virtual {p0}, Lsun/security/util/MemoryCache$SoftCacheEntry;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 460
    invoke-virtual {p0}, Lsun/security/util/MemoryCache$SoftCacheEntry;->clear()V

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/util/MemoryCache$SoftCacheEntry;->key:Ljava/lang/Object;

    .line 462
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lsun/security/util/MemoryCache$SoftCacheEntry;->expirationTime:J

    .line 463
    return-void
.end method

.method public isValid(J)Z
    .locals 5
    .param p1, "currentTime"    # J

    .prologue
    .line 452
    iget-wide v2, p0, Lsun/security/util/MemoryCache$SoftCacheEntry;->expirationTime:J

    cmp-long v1, p1, v2

    if-gtz v1, :cond_1

    invoke-virtual {p0}, Lsun/security/util/MemoryCache$SoftCacheEntry;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 453
    .local v0, "valid":Z
    :goto_0
    if-nez v0, :cond_0

    .line 454
    invoke-virtual {p0}, Lsun/security/util/MemoryCache$SoftCacheEntry;->invalidate()V

    .line 456
    :cond_0
    return v0

    .line 452
    .end local v0    # "valid":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
