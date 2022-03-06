.class Lsun/security/util/NullCache;
.super Lsun/security/util/Cache;
.source "Cache.java"


# static fields
.field static final INSTANCE:Lsun/security/util/Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lsun/security/util/NullCache;

    invoke-direct {v0}, Lsun/security/util/NullCache;-><init>()V

    sput-object v0, Lsun/security/util/NullCache;->INSTANCE:Lsun/security/util/Cache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Lsun/security/util/Cache;-><init>()V

    .line 193
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 205
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 213
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method
