.class Lsun/security/x509/AVAComparator;
.super Ljava/lang/Object;
.source "RDN.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lsun/security/x509/AVA;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lsun/security/x509/AVA;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 484
    new-instance v0, Lsun/security/x509/AVAComparator;

    invoke-direct {v0}, Lsun/security/x509/AVAComparator;-><init>()V

    sput-object v0, Lsun/security/x509/AVAComparator;->INSTANCE:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    return-void
.end method

.method static getInstance()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lsun/security/x509/AVA;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    sget-object v0, Lsun/security/x509/AVAComparator;->INSTANCE:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 482
    check-cast p1, Lsun/security/x509/AVA;

    check-cast p2, Lsun/security/x509/AVA;

    invoke-virtual {p0, p1, p2}, Lsun/security/x509/AVAComparator;->compare(Lsun/security/x509/AVA;Lsun/security/x509/AVA;)I

    move-result v0

    return v0
.end method

.method public compare(Lsun/security/x509/AVA;Lsun/security/x509/AVA;)I
    .locals 4
    .param p1, "a1"    # Lsun/security/x509/AVA;
    .param p2, "a2"    # Lsun/security/x509/AVA;

    .prologue
    .line 499
    invoke-virtual {p1}, Lsun/security/x509/AVA;->hasRFC2253Keyword()Z

    move-result v0

    .line 500
    .local v0, "a1Has2253":Z
    invoke-virtual {p2}, Lsun/security/x509/AVA;->hasRFC2253Keyword()Z

    move-result v1

    .line 502
    .local v1, "a2Has2253":Z
    if-ne v0, v1, :cond_0

    .line 503
    invoke-virtual {p1}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v2

    .line 504
    invoke-virtual {p2}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 509
    :goto_0
    return v2

    .line 506
    :cond_0
    if-eqz v0, :cond_1

    .line 507
    const/4 v2, -0x1

    goto :goto_0

    .line 509
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
