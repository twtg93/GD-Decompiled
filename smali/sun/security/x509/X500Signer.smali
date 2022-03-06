.class public final Lsun/security/x509/X500Signer;
.super Ljava/security/Signer;
.source "X500Signer.java"


# static fields
.field private static final serialVersionUID:J = -0x777ccd992d0259a2L


# instance fields
.field private agent:Lsun/security/x509/X500Name;

.field private algid:Lsun/security/x509/AlgorithmId;

.field private sig:Ljava/security/Signature;


# direct methods
.method public constructor <init>(Ljava/security/Signature;Lsun/security/x509/X500Name;)V
    .locals 4
    .param p1, "sig"    # Ljava/security/Signature;
    .param p2, "agent"    # Lsun/security/x509/X500Name;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/security/Signer;-><init>()V

    .line 98
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 99
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "null parameter"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_1
    iput-object p1, p0, Lsun/security/x509/X500Signer;->sig:Ljava/security/Signature;

    .line 102
    iput-object p2, p0, Lsun/security/x509/X500Signer;->agent:Lsun/security/x509/X500Name;

    .line 105
    :try_start_0
    invoke-virtual {p1}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/security/x509/AlgorithmId;->getAlgorithmId(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/X500Signer;->algid:Lsun/security/x509/AlgorithmId;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "internal error! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getAlgorithmId()Lsun/security/x509/AlgorithmId;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lsun/security/x509/X500Signer;->algid:Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public getSigner()Lsun/security/x509/X500Name;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lsun/security/x509/X500Signer;->agent:Lsun/security/x509/X500Name;

    return-object v0
.end method

.method public sign()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lsun/security/x509/X500Signer;->sig:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    return-object v0
.end method

.method public update([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lsun/security/x509/X500Signer;->sig:Ljava/security/Signature;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/Signature;->update([BII)V

    .line 67
    return-void
.end method
