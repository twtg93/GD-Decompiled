.class Lsun/security/util/MemoryCache;
.super Lsun/security/util/Cache;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/util/MemoryCache$SoftCacheEntry;,
        Lsun/security/util/MemoryCache$HardCacheEntry;,
        Lsun/security/util/MemoryCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOAD_FACTOR:F = 0.75f


# instance fields
.field private final cacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lsun/security/util/MemoryCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final lifetime:I

.field private final maxSize:I

.field private final queue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "soft"    # Z
    .param p2, "maxSize"    # I

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsun/security/util/MemoryCache;-><init>(ZII)V

    .line 231
    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 4
    .param p1, "soft"    # Z
    .param p2, "maxSize"    # I
    .param p3, "lifetime"    # I

    .prologue
    const/high16 v3, 0x3f400000    # 0.75f

    .line 233
    invoke-direct {p0}, Lsun/security/util/Cache;-><init>()V

    .line 234
    iput p2, p0, Lsun/security/util/MemoryCache;->maxSize:I

    .line 235
    mul-int/lit16 v1, p3, 0x3e8

    iput v1, p0, Lsun/security/util/MemoryCache;->lifetime:I

    .line 236
    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :goto_0
    iput-object v1, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 237
    int-to-float v1, p2

    div-float/2addr v1, v3

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0x1

    .line 238
    .local v0, "buckets":I
    new-instance v1, Ljava/util/LinkedHashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v3, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    .line 240
    return-void

    .line 236
    .end local v0    # "buckets":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private emptyQueue()V
    .locals 5

    .prologue
    .line 250
    iget-object v4, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    if-nez v4, :cond_1

    .line 278
    :cond_0
    return-void

    .line 253
    :cond_1
    iget-object v4, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v3

    .line 255
    .local v3, "startSize":I
    :cond_2
    :goto_0
    iget-object v4, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v4}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lsun/security/util/MemoryCache$CacheEntry;

    .line 256
    .local v1, "entry":Lsun/security/util/MemoryCache$CacheEntry;
    if-eqz v1, :cond_0

    .line 259
    invoke-interface {v1}, Lsun/security/util/MemoryCache$CacheEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 260
    .local v2, "key":Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 264
    iget-object v4, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/MemoryCache$CacheEntry;

    .line 267
    .local v0, "currentEntry":Lsun/security/util/MemoryCache$CacheEntry;
    if-eqz v0, :cond_2

    if-eq v1, v0, :cond_2

    .line 268
    iget-object v4, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private expungeExpiredEntries()V
    .locals 6

    .prologue
    .line 284
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->emptyQueue()V

    .line 285
    iget v3, p0, Lsun/security/util/MemoryCache;->lifetime:I

    if-nez v3, :cond_1

    .line 304
    :cond_0
    return-void

    .line 288
    :cond_1
    const/4 v0, 0x0

    .line 289
    .local v0, "cnt":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 290
    .local v4, "time":J
    iget-object v3, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 291
    .local v2, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/MemoryCache$CacheEntry;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/util/MemoryCache$CacheEntry;

    .line 293
    .local v1, "entry":Lsun/security/util/MemoryCache$CacheEntry;
    invoke-interface {v1, v4, v5}, Lsun/security/util/MemoryCache$CacheEntry;->isValid(J)Z

    move-result v3

    if-nez v3, :cond_2

    .line 294
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 3

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    if-eqz v1, :cond_1

    .line 315
    iget-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/MemoryCache$CacheEntry;

    .line 316
    .local v0, "entry":Lsun/security/util/MemoryCache$CacheEntry;
    invoke-interface {v0}, Lsun/security/util/MemoryCache$CacheEntry;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 312
    .end local v0    # "entry":Lsun/security/util/MemoryCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 318
    :cond_0
    :try_start_1
    iget-object v1, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-nez v1, :cond_0

    .line 322
    :cond_1
    iget-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 351
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->emptyQueue()V

    .line 352
    iget-object v4, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/MemoryCache$CacheEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    .local v0, "entry":Lsun/security/util/MemoryCache$CacheEntry;
    if-nez v0, :cond_0

    .line 364
    :goto_0
    monitor-exit p0

    return-object v1

    .line 356
    :cond_0
    :try_start_1
    iget v4, p0, Lsun/security/util/MemoryCache;->lifetime:I

    if-nez v4, :cond_1

    const-wide/16 v2, 0x0

    .line 357
    .local v2, "time":J
    :goto_1
    invoke-interface {v0, v2, v3}, Lsun/security/util/MemoryCache$CacheEntry;->isValid(J)Z

    move-result v4

    if-nez v4, :cond_2

    .line 361
    iget-object v4, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 351
    .end local v0    # "entry":Lsun/security/util/MemoryCache$CacheEntry;
    .end local v2    # "time":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 356
    .restart local v0    # "entry":Lsun/security/util/MemoryCache$CacheEntry;
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_1

    .line 364
    .restart local v2    # "time":J
    :cond_2
    invoke-interface {v0}, Lsun/security/util/MemoryCache$CacheEntry;->getValue()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0
.end method

.method protected newEntry(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;)Lsun/security/util/MemoryCache$CacheEntry;
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "expirationTime"    # J
    .param p5, "queue"    # Ljava/lang/ref/ReferenceQueue;

    .prologue
    .line 377
    if-eqz p5, :cond_0

    .line 378
    new-instance v1, Lsun/security/util/MemoryCache$SoftCacheEntry;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lsun/security/util/MemoryCache$SoftCacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;)V

    .line 380
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lsun/security/util/MemoryCache$HardCacheEntry;

    invoke-direct {v1, p1, p2, p3, p4}, Lsun/security/util/MemoryCache$HardCacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto :goto_0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->emptyQueue()V

    .line 327
    iget v1, p0, Lsun/security/util/MemoryCache;->lifetime:I

    if-nez v1, :cond_1

    const-wide/16 v4, 0x0

    .line 329
    .local v4, "expirationTime":J
    :goto_0
    iget-object v6, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lsun/security/util/MemoryCache;->newEntry(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;)Lsun/security/util/MemoryCache$CacheEntry;

    move-result-object v7

    .line 330
    .local v7, "newEntry":Lsun/security/util/MemoryCache$CacheEntry;
    iget-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v1, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsun/security/util/MemoryCache$CacheEntry;

    .line 331
    .local v8, "oldEntry":Lsun/security/util/MemoryCache$CacheEntry;
    if-eqz v8, :cond_2

    .line 332
    invoke-interface {v8}, Lsun/security/util/MemoryCache$CacheEntry;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 328
    .end local v4    # "expirationTime":J
    .end local v7    # "newEntry":Lsun/security/util/MemoryCache$CacheEntry;
    .end local v8    # "oldEntry":Lsun/security/util/MemoryCache$CacheEntry;
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v1, p0, Lsun/security/util/MemoryCache;->lifetime:I

    int-to-long v10, v1

    add-long v4, v2, v10

    goto :goto_0

    .line 335
    .restart local v4    # "expirationTime":J
    .restart local v7    # "newEntry":Lsun/security/util/MemoryCache$CacheEntry;
    .restart local v8    # "oldEntry":Lsun/security/util/MemoryCache$CacheEntry;
    :cond_2
    iget-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, p0, Lsun/security/util/MemoryCache;->maxSize:I

    if-le v1, v2, :cond_0

    .line 336
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->expungeExpiredEntries()V

    .line 337
    iget-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, p0, Lsun/security/util/MemoryCache;->maxSize:I

    if-le v1, v2, :cond_0

    .line 338
    iget-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 339
    .local v9, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/MemoryCache$CacheEntry;>;"
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/MemoryCache$CacheEntry;

    .line 344
    .local v0, "lruEntry":Lsun/security/util/MemoryCache$CacheEntry;
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 345
    invoke-interface {v0}, Lsun/security/util/MemoryCache$CacheEntry;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 326
    .end local v0    # "lruEntry":Lsun/security/util/MemoryCache$CacheEntry;
    .end local v4    # "expirationTime":J
    .end local v7    # "newEntry":Lsun/security/util/MemoryCache$CacheEntry;
    .end local v8    # "oldEntry":Lsun/security/util/MemoryCache$CacheEntry;
    .end local v9    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/MemoryCache$CacheEntry;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 368
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->emptyQueue()V

    .line 369
    iget-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/MemoryCache$CacheEntry;

    .line 370
    .local v0, "entry":Lsun/security/util/MemoryCache$CacheEntry;
    if-eqz v0, :cond_0

    .line 371
    invoke-interface {v0}, Lsun/security/util/MemoryCache$CacheEntry;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :cond_0
    monitor-exit p0

    return-void

    .line 368
    .end local v0    # "entry":Lsun/security/util/MemoryCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->expungeExpiredEntries()V

    .line 308
    iget-object v0, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
