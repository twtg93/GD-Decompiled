.class public Lsun/security/x509/X509CRLImpl;
.super Ljava/security/cert/X509CRL;
.source "X509CRLImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    }
.end annotation


# static fields
.field private static final YR_2050:J = 0x24bd0146400L

.field private static final isExplicit:Z = true


# instance fields
.field private extensions:Lsun/security/x509/CRLExtensions;

.field private infoSigAlgId:Lsun/security/x509/AlgorithmId;

.field private issuer:Lsun/security/x509/X500Name;

.field private issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

.field private nextUpdate:Ljava/util/Date;

.field private readOnly:Z

.field private revokedCerts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun/security/x509/X509CRLImpl$X509IssuerSerial;",
            "Ljava/security/cert/X509CRLEntry;",
            ">;"
        }
    .end annotation
.end field

.field private sigAlgId:Lsun/security/x509/AlgorithmId;

.field private signature:[B

.field private signedCRL:[B

.field private tbsCertList:[B

.field private thisUpdate:Ljava/util/Date;

.field private verifiedProvider:Ljava/lang/String;

.field private verifiedPublicKey:Ljava/security/PublicKey;

.field private version:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 105
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 106
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    .line 107
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    .line 108
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 113
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    .line 114
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 115
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    .line 116
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    .line 117
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->revokedCerts:Ljava/util/Map;

    .line 118
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "inStrm"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 184
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 105
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 106
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    .line 107
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    .line 108
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 113
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    .line 114
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 115
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    .line 116
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    .line 117
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedCerts:Ljava/util/Map;

    .line 118
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 122
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    .line 186
    :try_start_0
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v1}, Lsun/security/x509/X509CRLImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/io/IOException;
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 189
    new-instance v1, Ljava/security/cert/CRLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parsing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 4
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 105
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 106
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    .line 107
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    .line 108
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 113
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    .line 114
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 115
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    .line 116
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    .line 117
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedCerts:Ljava/util/Map;

    .line 118
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 122
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    .line 170
    :try_start_0
    invoke-direct {p0, p1}, Lsun/security/x509/X509CRLImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/io/IOException;
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 173
    new-instance v1, Ljava/security/cert/CRLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parsing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lsun/security/x509/X500Name;Ljava/util/Date;Ljava/util/Date;)V
    .locals 2
    .param p1, "issuer"    # Lsun/security/x509/X500Name;
    .param p2, "thisDate"    # Ljava/util/Date;
    .param p3, "nextDate"    # Ljava/util/Date;

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 105
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 106
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    .line 107
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    .line 108
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 113
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    .line 114
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 115
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    .line 116
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    .line 117
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->revokedCerts:Ljava/util/Map;

    .line 118
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    .line 201
    iput-object p1, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    .line 202
    iput-object p2, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    .line 203
    iput-object p3, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    .line 204
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/X500Name;Ljava/util/Date;Ljava/util/Date;[Ljava/security/cert/X509CRLEntry;)V
    .locals 8
    .param p1, "issuer"    # Lsun/security/x509/X500Name;
    .param p2, "thisDate"    # Ljava/util/Date;
    .param p3, "nextDate"    # Ljava/util/Date;
    .param p4, "badCerts"    # [Ljava/security/cert/X509CRLEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 219
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 105
    iput-object v7, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 106
    iput-object v7, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    .line 107
    iput-object v7, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    .line 108
    iput-object v7, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 113
    iput-object v7, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    .line 114
    iput-object v7, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 115
    iput-object v7, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    .line 116
    iput-object v7, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    .line 117
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, p0, Lsun/security/x509/X509CRLImpl;->revokedCerts:Ljava/util/Map;

    .line 118
    iput-object v7, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 122
    const/4 v6, 0x0

    iput-boolean v6, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    .line 220
    iput-object p1, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    .line 221
    iput-object p2, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    .line 222
    iput-object p3, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    .line 223
    if-eqz p4, :cond_1

    .line 224
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 225
    .local v2, "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    move-object v1, v2

    .line 226
    .local v1, "badCertIssuer":Ljavax/security/auth/x500/X500Principal;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, p4

    if-ge v3, v6, :cond_1

    .line 227
    aget-object v0, p4, v3

    check-cast v0, Lsun/security/x509/X509CRLEntryImpl;

    .line 229
    .local v0, "badCert":Lsun/security/x509/X509CRLEntryImpl;
    :try_start_0
    invoke-direct {p0, v0, v1}, Lsun/security/x509/X509CRLImpl;->getCertIssuer(Lsun/security/x509/X509CRLEntryImpl;Ljavax/security/auth/x500/X500Principal;)Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 233
    invoke-virtual {v0, v2, v1}, Lsun/security/x509/X509CRLEntryImpl;->setCertificateIssuer(Ljavax/security/auth/x500/X500Principal;Ljavax/security/auth/x500/X500Principal;)V

    .line 234
    new-instance v5, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    .line 235
    invoke-virtual {v0}, Lsun/security/x509/X509CRLEntryImpl;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V

    .line 236
    .local v5, "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->revokedCerts:Ljava/util/Map;

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-virtual {v0}, Lsun/security/x509/X509CRLEntryImpl;->hasExtensions()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 238
    const/4 v6, 0x1

    iput v6, p0, Lsun/security/x509/X509CRLImpl;->version:I

    .line 226
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 230
    .end local v5    # "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    :catch_0
    move-exception v4

    .line 231
    .local v4, "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/security/cert/CRLException;

    invoke-direct {v6, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 242
    .end local v0    # "badCert":Lsun/security/x509/X509CRLEntryImpl;
    .end local v1    # "badCertIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v2    # "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v3    # "i":I
    .end local v4    # "ioe":Ljava/io/IOException;
    :cond_1
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/X500Name;Ljava/util/Date;Ljava/util/Date;[Ljava/security/cert/X509CRLEntry;Lsun/security/x509/CRLExtensions;)V
    .locals 1
    .param p1, "issuer"    # Lsun/security/x509/X500Name;
    .param p2, "thisDate"    # Ljava/util/Date;
    .param p3, "nextDate"    # Ljava/util/Date;
    .param p4, "badCerts"    # [Ljava/security/cert/X509CRLEntry;
    .param p5, "crlExts"    # Lsun/security/x509/CRLExtensions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-direct {p0, p1, p2, p3, p4}, Lsun/security/x509/X509CRLImpl;-><init>(Lsun/security/x509/X500Name;Ljava/util/Date;Ljava/util/Date;[Ljava/security/cert/X509CRLEntry;)V

    .line 260
    if-eqz p5, :cond_0

    .line 261
    iput-object p5, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 262
    const/4 v0, 0x1

    iput v0, p0, Lsun/security/x509/X509CRLImpl;->version:I

    .line 264
    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "crlData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 105
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 106
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    .line 107
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    .line 108
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 113
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    .line 114
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 115
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    .line 116
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    .line 117
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedCerts:Ljava/util/Map;

    .line 118
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 122
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    .line 155
    :try_start_0
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-direct {p0, v1}, Lsun/security/x509/X509CRLImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/io/IOException;
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 158
    new-instance v1, Ljava/security/cert/CRLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parsing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getCertIssuer(Lsun/security/x509/X509CRLEntryImpl;Ljavax/security/auth/x500/X500Principal;)Ljavax/security/auth/x500/X500Principal;
    .locals 4
    .param p1, "entry"    # Lsun/security/x509/X509CRLEntryImpl;
    .param p2, "prevCertIssuer"    # Ljavax/security/auth/x500/X500Principal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1217
    .line 1218
    invoke-virtual {p1}, Lsun/security/x509/X509CRLEntryImpl;->getCertificateIssuerExtension()Lsun/security/x509/CertificateIssuerExtension;

    move-result-object v0

    .line 1219
    .local v0, "ciExt":Lsun/security/x509/CertificateIssuerExtension;
    if-eqz v0, :cond_0

    .line 1220
    const-string/jumbo v3, "issuer"

    .line 1221
    invoke-virtual {v0, v3}, Lsun/security/x509/CertificateIssuerExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/GeneralNames;

    .line 1222
    .local v2, "names":Lsun/security/x509/GeneralNames;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lsun/security/x509/GeneralNames;->get(I)Lsun/security/x509/GeneralName;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v1

    check-cast v1, Lsun/security/x509/X500Name;

    .line 1223
    .local v1, "issuerDN":Lsun/security/x509/X500Name;
    invoke-virtual {v1}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p2

    .line 1225
    .end local v1    # "issuerDN":Lsun/security/x509/X500Name;
    .end local v2    # "names":Lsun/security/x509/GeneralNames;
    .end local p2    # "prevCertIssuer":Ljavax/security/auth/x500/X500Principal;
    :cond_0
    return-object p2
.end method

.method public static getEncodedInternal(Ljava/security/cert/X509CRL;)[B
    .locals 1
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 1158
    instance-of v0, p0, Lsun/security/x509/X509CRLImpl;

    if-eqz v0, :cond_0

    .line 1159
    check-cast p0, Lsun/security/x509/X509CRLImpl;

    .end local p0    # "crl":Ljava/security/cert/X509CRL;
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal()[B

    move-result-object v0

    .line 1161
    .restart local p0    # "crl":Ljava/security/cert/X509CRL;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static getIssuerX500Principal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;
    .locals 10
    .param p0, "crl"    # Ljava/security/cert/X509CRL;

    .prologue
    .line 1130
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v2

    .line 1131
    .local v2, "encoded":[B
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-direct {v0, v2}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 1132
    .local v0, "derIn":Lsun/security/util/DerInputStream;
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v5, v8, v9

    .line 1133
    .local v5, "tbsCert":Lsun/security/util/DerValue;
    iget-object v6, v5, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 1137
    .local v6, "tbsIn":Lsun/security/util/DerInputStream;
    invoke-virtual {v6}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v8

    int-to-byte v3, v8

    .line 1138
    .local v3, "nextByte":B
    const/4 v8, 0x2

    if-ne v3, v8, :cond_0

    .line 1139
    invoke-virtual {v6}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    .line 1142
    :cond_0
    invoke-virtual {v6}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v7

    .line 1143
    .local v7, "tmp":Lsun/security/util/DerValue;
    invoke-virtual {v6}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v7

    .line 1144
    invoke-virtual {v7}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v4

    .line 1145
    .local v4, "principalBytes":[B
    new-instance v8, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v8, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    .line 1146
    .end local v0    # "derIn":Lsun/security/util/DerInputStream;
    .end local v2    # "encoded":[B
    .end local v3    # "nextByte":B
    .end local v4    # "principalBytes":[B
    .end local v5    # "tbsCert":Lsun/security/util/DerValue;
    .end local v6    # "tbsIn":Lsun/security/util/DerInputStream;
    .end local v7    # "tmp":Lsun/security/util/DerValue;
    :catch_0
    move-exception v1

    .line 1147
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Could not parse issuer"

    invoke-direct {v8, v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method public static declared-synchronized intern(Ljava/security/cert/X509CRL;)Lsun/security/x509/X509CRLImpl;
    .locals 6
    .param p0, "c"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 1185
    const-class v5, Lsun/security/x509/X509CRLImpl;

    monitor-enter v5

    if-nez p0, :cond_0

    .line 1186
    const/4 v3, 0x0

    .line 1202
    :goto_0
    monitor-exit v5

    return-object v3

    .line 1188
    :cond_0
    :try_start_0
    instance-of v2, p0, Lsun/security/x509/X509CRLImpl;

    .line 1190
    .local v2, "isImpl":Z
    if-eqz v2, :cond_1

    .line 1191
    move-object v0, p0

    check-cast v0, Lsun/security/x509/X509CRLImpl;

    move-object v4, v0

    invoke-virtual {v4}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal()[B

    move-result-object v1

    .line 1196
    .local v1, "encoding":[B
    :goto_1
    if-eqz v2, :cond_2

    .line 1197
    move-object v0, p0

    check-cast v0, Lsun/security/x509/X509CRLImpl;

    move-object v3, v0

    .local v3, "newC":Lsun/security/x509/X509CRLImpl;
    goto :goto_0

    .line 1193
    .end local v1    # "encoding":[B
    .end local v3    # "newC":Lsun/security/x509/X509CRLImpl;
    :cond_1
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v1

    .restart local v1    # "encoding":[B
    goto :goto_1

    .line 1199
    :cond_2
    new-instance v3, Lsun/security/x509/X509CRLImpl;

    invoke-direct {v3, v1}, Lsun/security/x509/X509CRLImpl;-><init>([B)V

    .line 1200
    .restart local v3    # "newC":Lsun/security/x509/X509CRLImpl;
    invoke-virtual {v3}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 1185
    .end local v1    # "encoding":[B
    .end local v2    # "isImpl":Z
    .end local v3    # "newC":Lsun/security/x509/X509CRLImpl;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private parse(Lsun/security/util/DerValue;)V
    .locals 14
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1005
    iget-boolean v11, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    if-eqz v11, :cond_0

    .line 1006
    new-instance v11, Ljava/security/cert/CRLException;

    const-string/jumbo v12, "cannot over-write existing CRL"

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1008
    :cond_0
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-byte v11, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v12, 0x30

    if-eq v11, v12, :cond_2

    .line 1009
    :cond_1
    new-instance v11, Ljava/security/cert/CRLException;

    const-string/jumbo v12, "Invalid DER-encoded CRL data"

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1011
    :cond_2
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v11

    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 1012
    const/4 v11, 0x3

    new-array v8, v11, [Lsun/security/util/DerValue;

    .line 1014
    .local v8, "seq":[Lsun/security/util/DerValue;
    const/4 v11, 0x0

    iget-object v12, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v12}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v12

    aput-object v12, v8, v11

    .line 1015
    const/4 v11, 0x1

    iget-object v12, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v12}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v12

    aput-object v12, v8, v11

    .line 1016
    const/4 v11, 0x2

    iget-object v12, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v12}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v12

    aput-object v12, v8, v11

    .line 1018
    iget-object v11, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v11}, Lsun/security/util/DerInputStream;->available()I

    move-result v11

    if-eqz v11, :cond_3

    .line 1019
    new-instance v11, Ljava/security/cert/CRLException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "signed overrun, bytes = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 1020
    invoke-virtual {v13}, Lsun/security/util/DerInputStream;->available()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1022
    :cond_3
    const/4 v11, 0x0

    aget-object v11, v8, v11

    iget-byte v11, v11, Lsun/security/util/DerValue;->tag:B

    const/16 v12, 0x30

    if-eq v11, v12, :cond_4

    .line 1023
    new-instance v11, Ljava/security/cert/CRLException;

    const-string/jumbo v12, "signed CRL fields invalid"

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1025
    :cond_4
    const/4 v11, 0x1

    aget-object v11, v8, v11

    invoke-static {v11}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v11

    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 1026
    const/4 v11, 0x2

    aget-object v11, v8, v11

    invoke-virtual {v11}, Lsun/security/util/DerValue;->getBitString()[B

    move-result-object v11

    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    .line 1028
    const/4 v11, 0x1

    aget-object v11, v8, v11

    iget-object v11, v11, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v11}, Lsun/security/util/DerInputStream;->available()I

    move-result v11

    if-eqz v11, :cond_5

    .line 1029
    new-instance v11, Ljava/security/cert/CRLException;

    const-string/jumbo v12, "AlgorithmId field overrun"

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1031
    :cond_5
    const/4 v11, 0x2

    aget-object v11, v8, v11

    iget-object v11, v11, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v11}, Lsun/security/util/DerInputStream;->available()I

    move-result v11

    if-eqz v11, :cond_6

    .line 1032
    new-instance v11, Ljava/security/cert/CRLException;

    const-string/jumbo v12, "Signature field overrun"

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1035
    :cond_6
    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-virtual {v11}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v11

    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    .line 1038
    const/4 v11, 0x0

    aget-object v11, v8, v11

    iget-object v3, v11, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 1043
    .local v3, "derStrm":Lsun/security/util/DerInputStream;
    const/4 v11, 0x0

    iput v11, p0, Lsun/security/x509/X509CRLImpl;->version:I

    .line 1044
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v11

    int-to-byte v7, v11

    .line 1045
    .local v7, "nextByte":B
    const/4 v11, 0x2

    if-ne v7, v11, :cond_7

    .line 1046
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getInteger()I

    move-result v11

    iput v11, p0, Lsun/security/x509/X509CRLImpl;->version:I

    .line 1047
    iget v11, p0, Lsun/security/x509/X509CRLImpl;->version:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_7

    .line 1048
    new-instance v11, Ljava/security/cert/CRLException;

    const-string/jumbo v12, "Invalid version"

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1050
    :cond_7
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v9

    .line 1053
    .local v9, "tmp":Lsun/security/util/DerValue;
    invoke-static {v9}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v10

    .line 1056
    .local v10, "tmpId":Lsun/security/x509/AlgorithmId;
    iget-object v11, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v10, v11}, Lsun/security/x509/AlgorithmId;->equals(Lsun/security/x509/AlgorithmId;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1057
    new-instance v11, Ljava/security/cert/CRLException;

    const-string/jumbo v12, "Signature algorithm mismatch"

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1058
    :cond_8
    iput-object v10, p0, Lsun/security/x509/X509CRLImpl;->infoSigAlgId:Lsun/security/x509/AlgorithmId;

    .line 1061
    new-instance v11, Lsun/security/x509/X500Name;

    invoke-direct {v11, v3}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    .line 1062
    iget-object v11, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v11}, Lsun/security/x509/X500Name;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1063
    new-instance v11, Ljava/security/cert/CRLException;

    const-string/jumbo v12, "Empty issuer DN not allowed in X509CRLs"

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1069
    :cond_9
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v11

    int-to-byte v7, v11

    .line 1070
    const/16 v11, 0x17

    if-ne v7, v11, :cond_b

    .line 1071
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    move-result-object v11

    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    .line 1079
    :goto_0
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    move-result v11

    if-nez v11, :cond_d

    .line 1120
    :cond_a
    :goto_1
    return-void

    .line 1072
    :cond_b
    const/16 v11, 0x18

    if-ne v7, v11, :cond_c

    .line 1073
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v11

    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    goto :goto_0

    .line 1075
    :cond_c
    new-instance v11, Ljava/security/cert/CRLException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Invalid encoding for thisUpdate (tag="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1083
    :cond_d
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v11

    int-to-byte v7, v11

    .line 1084
    const/16 v11, 0x17

    if-ne v7, v11, :cond_f

    .line 1085
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    move-result-object v11

    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    .line 1090
    :cond_e
    :goto_2
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    move-result v11

    if-eqz v11, :cond_a

    .line 1094
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v11

    int-to-byte v7, v11

    .line 1095
    const/16 v11, 0x30

    if-ne v7, v11, :cond_10

    and-int/lit16 v11, v7, 0xc0

    const/16 v12, 0x80

    if-eq v11, v12, :cond_10

    .line 1097
    const/4 v11, 0x4

    invoke-virtual {v3, v11}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v1

    .line 1099
    .local v1, "badCerts":[Lsun/security/util/DerValue;
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 1100
    .local v2, "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    move-object v0, v2

    .line 1101
    .local v0, "badCertIssuer":Ljavax/security/auth/x500/X500Principal;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    array-length v11, v1

    if-ge v5, v11, :cond_10

    .line 1102
    new-instance v4, Lsun/security/x509/X509CRLEntryImpl;

    aget-object v11, v1, v5

    invoke-direct {v4, v11}, Lsun/security/x509/X509CRLEntryImpl;-><init>(Lsun/security/util/DerValue;)V

    .line 1103
    .local v4, "entry":Lsun/security/x509/X509CRLEntryImpl;
    invoke-direct {p0, v4, v0}, Lsun/security/x509/X509CRLImpl;->getCertIssuer(Lsun/security/x509/X509CRLEntryImpl;Ljavax/security/auth/x500/X500Principal;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 1104
    invoke-virtual {v4, v2, v0}, Lsun/security/x509/X509CRLEntryImpl;->setCertificateIssuer(Ljavax/security/auth/x500/X500Principal;Ljavax/security/auth/x500/X500Principal;)V

    .line 1105
    new-instance v6, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    .line 1106
    invoke-virtual {v4}, Lsun/security/x509/X509CRLEntryImpl;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct {v6, v0, v11}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V

    .line 1107
    .local v6, "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    iget-object v11, p0, Lsun/security/x509/X509CRLImpl;->revokedCerts:Ljava/util/Map;

    invoke-interface {v11, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1086
    .end local v0    # "badCertIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v1    # "badCerts":[Lsun/security/util/DerValue;
    .end local v2    # "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v4    # "entry":Lsun/security/x509/X509CRLEntryImpl;
    .end local v5    # "i":I
    .end local v6    # "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    :cond_f
    const/16 v11, 0x18

    if-ne v7, v11, :cond_e

    .line 1087
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v11

    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    goto :goto_2

    .line 1111
    :cond_10
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    move-result v11

    if-eqz v11, :cond_a

    .line 1115
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v9

    .line 1116
    invoke-virtual {v9}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v11

    if-eqz v11, :cond_11

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 1117
    new-instance v11, Lsun/security/x509/CRLExtensions;

    iget-object v12, v9, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-direct {v11, v12}, Lsun/security/x509/CRLExtensions;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 1119
    :cond_11
    const/4 v11, 0x1

    iput-boolean v11, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    goto/16 :goto_1
.end method

.method public static toImpl(Ljava/security/cert/X509CRL;)Lsun/security/x509/X509CRLImpl;
    .locals 1
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 1172
    instance-of v0, p0, Lsun/security/x509/X509CRLImpl;

    if-eqz v0, :cond_0

    .line 1173
    check-cast p0, Lsun/security/x509/X509CRLImpl;

    .line 1175
    .end local p0    # "crl":Ljava/security/cert/X509CRL;
    :goto_0
    return-object p0

    .restart local p0    # "crl":Ljava/security/cert/X509CRL;
    :cond_0
    invoke-static {p0}, Lsun/security/x509/X509CRLImpl;->intern(Ljava/security/cert/X509CRL;)Lsun/security/x509/X509CRLImpl;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public encodeInfo(Ljava/io/OutputStream;)V
    .locals 10
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const-wide v8, 0x24bd0146400L

    .line 295
    :try_start_0
    new-instance v4, Lsun/security/util/DerOutputStream;

    invoke-direct {v4}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 296
    .local v4, "tmp":Lsun/security/util/DerOutputStream;
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 297
    .local v2, "rCerts":Lsun/security/util/DerOutputStream;
    new-instance v3, Lsun/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 299
    .local v3, "seq":Lsun/security/util/DerOutputStream;
    iget v5, p0, Lsun/security/x509/X509CRLImpl;->version:I

    if-eqz v5, :cond_0

    .line 300
    iget v5, p0, Lsun/security/x509/X509CRLImpl;->version:I

    invoke-virtual {v4, v5}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    .line 301
    :cond_0
    iget-object v5, p0, Lsun/security/x509/X509CRLImpl;->infoSigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v5, v4}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 302
    iget v5, p0, Lsun/security/x509/X509CRLImpl;->version:I

    if-nez v5, :cond_1

    iget-object v5, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v5}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 303
    new-instance v5, Ljava/security/cert/CRLException;

    const-string/jumbo v6, "Null Issuer DN not allowed in v1 CRL"

    invoke-direct {v5, v6}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v2    # "rCerts":Lsun/security/util/DerOutputStream;
    .end local v3    # "seq":Lsun/security/util/DerOutputStream;
    .end local v4    # "tmp":Lsun/security/util/DerOutputStream;
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/security/cert/CRLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Encoding error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 304
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "rCerts":Lsun/security/util/DerOutputStream;
    .restart local v3    # "seq":Lsun/security/util/DerOutputStream;
    .restart local v4    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v5, v4}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    .line 306
    iget-object v5, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-gez v5, :cond_3

    .line 307
    iget-object v5, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v4, v5}, Lsun/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    .line 311
    :goto_0
    iget-object v5, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    if-eqz v5, :cond_2

    .line 312
    iget-object v5, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-gez v5, :cond_4

    .line 313
    iget-object v5, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v4, v5}, Lsun/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    .line 318
    :cond_2
    :goto_1
    iget-object v5, p0, Lsun/security/x509/X509CRLImpl;->revokedCerts:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 319
    iget-object v5, p0, Lsun/security/x509/X509CRLImpl;->revokedCerts:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CRLEntry;

    .line 320
    .local v1, "entry":Ljava/security/cert/X509CRLEntry;
    check-cast v1, Lsun/security/x509/X509CRLEntryImpl;

    .end local v1    # "entry":Ljava/security/cert/X509CRLEntry;
    invoke-virtual {v1, v2}, Lsun/security/x509/X509CRLEntryImpl;->encode(Lsun/security/util/DerOutputStream;)V

    goto :goto_2

    .line 309
    :cond_3
    iget-object v5, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v4, v5}, Lsun/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V

    goto :goto_0

    .line 315
    :cond_4
    iget-object v5, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v4, v5}, Lsun/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V

    goto :goto_1

    .line 322
    :cond_5
    const/16 v5, 0x30

    invoke-virtual {v4, v5, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 325
    :cond_6
    iget-object v5, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-eqz v5, :cond_7

    .line 326
    iget-object v5, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Lsun/security/x509/CRLExtensions;->encode(Ljava/io/OutputStream;Z)V

    .line 328
    :cond_7
    const/16 v5, 0x30

    invoke-virtual {v3, v5, v4}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 330
    invoke-virtual {v3}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    .line 331
    iget-object v5, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 335
    return-void
.end method

.method public getAuthKeyId()Lsun/security/x509/KeyIdentifier;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 784
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getAuthKeyIdExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v0

    .line 785
    .local v0, "aki":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    if-eqz v0, :cond_0

    .line 786
    const-string/jumbo v2, "key_id"

    invoke-virtual {v0, v2}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/KeyIdentifier;

    .line 789
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAuthKeyIdExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 801
    sget-object v1, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v1}, Lsun/security/x509/X509CRLImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v0

    .line 802
    .local v0, "obj":Ljava/lang/Object;
    check-cast v0, Lsun/security/x509/AuthorityKeyIdentifierExtension;

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public getBaseCRLNumber()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 852
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getDeltaCRLIndicatorExtension()Lsun/security/x509/DeltaCRLIndicatorExtension;

    move-result-object v0

    .line 853
    .local v0, "dciExt":Lsun/security/x509/DeltaCRLIndicatorExtension;
    if-eqz v0, :cond_0

    .line 854
    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2}, Lsun/security/x509/DeltaCRLIndicatorExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    .line 857
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCRLNumber()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 823
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getCRLNumberExtension()Lsun/security/x509/CRLNumberExtension;

    move-result-object v1

    .line 824
    .local v1, "numExt":Lsun/security/x509/CRLNumberExtension;
    if-eqz v1, :cond_0

    .line 825
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2}, Lsun/security/x509/CRLNumberExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 828
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCRLNumberExtension()Lsun/security/x509/CRLNumberExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 812
    sget-object v1, Lsun/security/x509/PKIXExtensions;->CRLNumber_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v1}, Lsun/security/x509/X509CRLImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v0

    .line 813
    .local v0, "obj":Ljava/lang/Object;
    check-cast v0, Lsun/security/x509/CRLNumberExtension;

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 906
    iget-object v2, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v2, :cond_1

    .line 907
    const/4 v1, 0x0

    .line 915
    :cond_0
    return-object v1

    .line 909
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 910
    .local v1, "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v2}, Lsun/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/Extension;

    .line 911
    .local v0, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v0}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 912
    invoke-virtual {v0}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getDeltaCRLIndicatorExtension()Lsun/security/x509/DeltaCRLIndicatorExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 841
    sget-object v1, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v1}, Lsun/security/x509/X509CRLImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v0

    .line 842
    .local v0, "obj":Ljava/lang/Object;
    check-cast v0, Lsun/security/x509/DeltaCRLIndicatorExtension;

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getEncodedInternal()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Ljava/security/cert/CRLException;

    const-string/jumbo v1, "Null CRL to encode"

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    return-object v0
.end method

.method public getExtension(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;
    .locals 2
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    .line 993
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v0, :cond_0

    .line 994
    const/4 v0, 0x0

    .line 997
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-static {p1}, Lsun/security/x509/OIDMap;->getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/x509/CRLExtensions;->get(Ljava/lang/String;)Lsun/security/x509/Extension;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 11
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 951
    iget-object v10, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v10, :cond_1

    .line 981
    :cond_0
    :goto_0
    return-object v9

    .line 954
    :cond_1
    :try_start_0
    new-instance v10, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v10, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lsun/security/x509/OIDMap;->getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;

    move-result-object v4

    .line 955
    .local v4, "extAlias":Ljava/lang/String;
    const/4 v0, 0x0

    .line 957
    .local v0, "crlExt":Lsun/security/x509/Extension;
    if-nez v4, :cond_4

    .line 958
    new-instance v6, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v6, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 959
    .local v6, "findOID":Lsun/security/util/ObjectIdentifier;
    const/4 v3, 0x0

    .line 961
    .local v3, "ex":Lsun/security/x509/Extension;
    iget-object v10, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v10}, Lsun/security/x509/CRLExtensions;->getElements()Ljava/util/Enumeration;

    move-result-object v2

    .line 962
    .local v2, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lsun/security/x509/Extension;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 963
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ex":Lsun/security/x509/Extension;
    check-cast v3, Lsun/security/x509/Extension;

    .line 964
    .restart local v3    # "ex":Lsun/security/x509/Extension;
    invoke-virtual {v3}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v7

    .line 965
    .local v7, "inCertOID":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v7, v6}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 966
    move-object v0, v3

    .line 972
    .end local v2    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lsun/security/x509/Extension;>;"
    .end local v3    # "ex":Lsun/security/x509/Extension;
    .end local v6    # "findOID":Lsun/security/util/ObjectIdentifier;
    .end local v7    # "inCertOID":Lsun/security/util/ObjectIdentifier;
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 974
    invoke-virtual {v0}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v5

    .line 975
    .local v5, "extData":[B
    if-eqz v5, :cond_0

    .line 977
    new-instance v8, Lsun/security/util/DerOutputStream;

    invoke-direct {v8}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 978
    .local v8, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {v8, v5}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 979
    invoke-virtual {v8}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v9

    goto :goto_0

    .line 971
    .end local v5    # "extData":[B
    .end local v8    # "out":Lsun/security/util/DerOutputStream;
    :cond_4
    iget-object v10, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v10, v4}, Lsun/security/x509/CRLExtensions;->get(Ljava/lang/String;)Lsun/security/x509/Extension;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 980
    .end local v0    # "crlExt":Lsun/security/x509/Extension;
    .end local v4    # "extAlias":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 981
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getIssuerAltNameExtension()Lsun/security/x509/IssuerAlternativeNameExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 869
    sget-object v1, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v1}, Lsun/security/x509/X509CRLImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v0

    .line 870
    .local v0, "obj":Ljava/lang/Object;
    check-cast v0, Lsun/security/x509/IssuerAlternativeNameExtension;

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_0

    .line 616
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 618
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getIssuingDistributionPointExtension()Lsun/security/x509/IssuingDistributionPointExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 883
    sget-object v1, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v1}, Lsun/security/x509/X509CRLImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v0

    .line 884
    .local v0, "obj":Ljava/lang/Object;
    check-cast v0, Lsun/security/x509/IssuingDistributionPointExtension;

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public getNextUpdate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 638
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 639
    const/4 v0, 0x0

    .line 640
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 927
    iget-object v2, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v2, :cond_1

    .line 928
    const/4 v1, 0x0

    .line 936
    :cond_0
    return-object v1

    .line 930
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 931
    .local v1, "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v2}, Lsun/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/Extension;

    .line 932
    .local v0, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v0}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v3

    if-nez v3, :cond_2

    .line 933
    invoke-virtual {v0}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
    .locals 2
    .param p1, "serialNumber"    # Ljava/math/BigInteger;

    .prologue
    .line 651
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedCerts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 652
    const/4 v1, 0x0

    .line 657
    :goto_0
    return-object v1

    .line 655
    :cond_0
    new-instance v0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    .line 656
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V

    .line 657
    .local v0, "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedCerts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CRLEntry;

    goto :goto_0
.end method

.method public getRevokedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRLEntry;
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 664
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedCerts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    const/4 v1, 0x0

    .line 668
    :goto_0
    return-object v1

    .line 667
    :cond_0
    new-instance v0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    invoke-direct {v0, p1}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 668
    .local v0, "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedCerts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CRLEntry;

    goto :goto_0
.end method

.method public getRevokedCertificates()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509CRLEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 680
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->revokedCerts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    const/4 v0, 0x0

    .line 683
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedCerts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    if-nez v0, :cond_0

    .line 733
    const/4 v0, 0x0

    .line 734
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 751
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    if-nez v1, :cond_0

    .line 752
    const/4 v1, 0x0

    .line 754
    :goto_0
    return-object v1

    .line 753
    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 754
    .local v0, "oid":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSigAlgParams()[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 767
    iget-object v2, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    if-nez v2, :cond_0

    .line 772
    :goto_0
    return-object v1

    .line 770
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->getEncodedParams()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public getSignature()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 709
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    if-nez v1, :cond_0

    .line 710
    const/4 v0, 0x0

    .line 713
    :goto_0
    return-object v0

    .line 711
    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 712
    .local v0, "dup":[B
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getTBSCertList()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 696
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    if-nez v1, :cond_0

    .line 697
    new-instance v1, Ljava/security/cert/CRLException;

    const-string/jumbo v2, "Uninitialized CRL"

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 698
    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 699
    .local v0, "dup":[B
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 700
    return-object v0
.end method

.method public getThisUpdate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 628
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 575
    iget v0, p0, Lsun/security/x509/X509CRLImpl;->version:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v0, :cond_0

    .line 893
    const/4 v0, 0x0

    .line 894
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v0}, Lsun/security/x509/CRLExtensions;->hasUnsupportedCriticalExtension()Z

    move-result v0

    goto :goto_0
.end method

.method public isRevoked(Ljava/security/cert/Certificate;)Z
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    .line 556
    iget-object v2, p0, Lsun/security/x509/X509CRLImpl;->revokedCerts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    instance-of v2, p1, Ljava/security/cert/X509Certificate;

    if-nez v2, :cond_1

    .line 557
    :cond_0
    const/4 v2, 0x0

    .line 561
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .line 559
    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 560
    .local v1, "xcert":Ljava/security/cert/X509Certificate;
    new-instance v0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    invoke-direct {v0, v1}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 561
    .local v0, "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    iget-object v2, p0, Lsun/security/x509/X509CRLImpl;->revokedCerts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public sign(Ljava/security/PrivateKey;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 426
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lsun/security/x509/X509CRLImpl;->sign(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public sign(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 447
    :try_start_0
    iget-boolean v4, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    if-eqz v4, :cond_0

    .line 448
    new-instance v4, Ljava/security/cert/CRLException;

    const-string/jumbo v5, "cannot over-write existing CRL"

    invoke-direct {v4, v5}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/security/cert/CRLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error while encoding data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 482
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 449
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x0

    .line 450
    .local v2, "sigEngine":Ljava/security/Signature;
    if-eqz p3, :cond_1

    :try_start_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 451
    :cond_1
    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 455
    :goto_0
    invoke-virtual {v2, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 458
    invoke-virtual {v2}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lsun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;

    move-result-object v4

    iput-object v4, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 459
    iget-object v4, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    iput-object v4, p0, Lsun/security/x509/X509CRLImpl;->infoSigAlgId:Lsun/security/x509/AlgorithmId;

    .line 461
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 462
    .local v1, "out":Lsun/security/util/DerOutputStream;
    new-instance v3, Lsun/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 465
    .local v3, "tmp":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0, v3}, Lsun/security/x509/X509CRLImpl;->encodeInfo(Ljava/io/OutputStream;)V

    .line 468
    iget-object v4, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v4, v3}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 471
    iget-object v4, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    array-length v6, v6

    invoke-virtual {v2, v4, v5, v6}, Ljava/security/Signature;->update([BII)V

    .line 472
    invoke-virtual {v2}, Ljava/security/Signature;->sign()[B

    move-result-object v4

    iput-object v4, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    .line 473
    iget-object v4, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    invoke-virtual {v3, v4}, Lsun/security/util/DerOutputStream;->putBitString([B)V

    .line 476
    const/16 v4, 0x30

    invoke-virtual {v1, v4, v3}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 477
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 478
    const/4 v4, 0x1

    iput-boolean v4, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    .line 484
    return-void

    .line 453
    .end local v1    # "out":Lsun/security/util/DerOutputStream;
    .end local v3    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_2
    invoke-static {p2, p3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .prologue
    .line 492
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 493
    .local v10, "sb":Ljava/lang/StringBuffer;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "X.509 CRL v"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lsun/security/x509/X509CRLImpl;->version:I

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 494
    iget-object v11, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    if-eqz v11, :cond_0

    .line 495
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Signature Algorithm: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v12}, Lsun/security/x509/AlgorithmId;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", OID="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 496
    invoke-virtual {v12}, Lsun/security/x509/AlgorithmId;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v12

    invoke-virtual {v12}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 495
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 497
    :cond_0
    iget-object v11, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    if-eqz v11, :cond_1

    .line 498
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Issuer: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v12}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 499
    :cond_1
    iget-object v11, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    if-eqz v11, :cond_2

    .line 500
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\nThis Update: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v12}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 501
    :cond_2
    iget-object v11, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    if-eqz v11, :cond_3

    .line 502
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Next Update: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v12}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 503
    :cond_3
    iget-object v11, p0, Lsun/security/x509/X509CRLImpl;->revokedCerts:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 504
    const-string/jumbo v11, "\nNO certificates have been revoked\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 512
    :cond_4
    iget-object v11, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-eqz v11, :cond_8

    .line 513
    iget-object v11, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v11}, Lsun/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v0

    .line 514
    .local v0, "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v8

    .line 515
    .local v8, "objs":[Ljava/lang/Object;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\nCRL Extensions: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 516
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v11, v8

    if-ge v6, v11, :cond_8

    .line 517
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\n["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 518
    aget-object v4, v8, v6

    check-cast v4, Lsun/security/x509/Extension;

    .line 520
    .local v4, "ext":Lsun/security/x509/Extension;
    :try_start_0
    invoke-virtual {v4}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v11

    invoke-static {v11}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v11

    if-nez v11, :cond_7

    .line 521
    invoke-virtual {v4}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 522
    invoke-virtual {v4}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v5

    .line 523
    .local v5, "extValue":[B
    if-eqz v5, :cond_5

    .line 524
    new-instance v9, Lsun/security/util/DerOutputStream;

    invoke-direct {v9}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 525
    .local v9, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {v9, v5}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 526
    invoke-virtual {v9}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v5

    .line 527
    new-instance v2, Lsun/misc/HexDumpEncoder;

    invoke-direct {v2}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 528
    .local v2, "enc":Lsun/misc/HexDumpEncoder;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Extension unknown: DER encoded OCTET string =\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 530
    invoke-virtual {v2, v5}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 528
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    .end local v2    # "enc":Lsun/misc/HexDumpEncoder;
    .end local v5    # "extValue":[B
    .end local v9    # "out":Lsun/security/util/DerOutputStream;
    :cond_5
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 506
    .end local v0    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .end local v4    # "ext":Lsun/security/x509/Extension;
    .end local v6    # "i":I
    .end local v8    # "objs":[Ljava/lang/Object;
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\nRevoked Certificates: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lsun/security/x509/X509CRLImpl;->revokedCerts:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 507
    const/4 v6, 0x1

    .line 508
    .restart local v6    # "i":I
    iget-object v11, p0, Lsun/security/x509/X509CRLImpl;->revokedCerts:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 509
    .local v7, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/X509CRLEntry;>;"
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 510
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\n["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "] "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509CRLEntry;

    invoke-virtual {v11}, Ljava/security/cert/X509CRLEntry;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 509
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 533
    .end local v7    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/X509CRLEntry;>;"
    .restart local v0    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .restart local v4    # "ext":Lsun/security/x509/Extension;
    .restart local v8    # "objs":[Ljava/lang/Object;
    :cond_7
    :try_start_1
    invoke-virtual {v4}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 534
    :catch_0
    move-exception v1

    .line 535
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v11, ", Error parsing this extension"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 539
    .end local v0    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "ext":Lsun/security/x509/Extension;
    .end local v6    # "i":I
    .end local v8    # "objs":[Ljava/lang/Object;
    :cond_8
    iget-object v11, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    if-eqz v11, :cond_9

    .line 540
    new-instance v3, Lsun/misc/HexDumpEncoder;

    invoke-direct {v3}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 541
    .local v3, "encoder":Lsun/misc/HexDumpEncoder;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\nSignature:\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    invoke-virtual {v3, v12}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 545
    .end local v3    # "encoder":Lsun/misc/HexDumpEncoder;
    :goto_3
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 544
    :cond_9
    const-string/jumbo v11, "NOT signed yet\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 353
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Lsun/security/x509/X509CRLImpl;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public declared-synchronized verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 376
    monitor-enter p0

    if-nez p2, :cond_0

    .line 377
    :try_start_0
    const-string/jumbo p2, ""

    .line 379
    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 382
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->verifiedProvider:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    :goto_0
    monitor-exit p0

    return-void

    .line 386
    :cond_1
    :try_start_1
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    if-nez v1, :cond_2

    .line 387
    new-instance v1, Ljava/security/cert/CRLException;

    const-string/jumbo v2, "Uninitialized CRL"

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 389
    :cond_2
    const/4 v0, 0x0

    .line 390
    .local v0, "sigVerf":Ljava/security/Signature;
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 391
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 395
    :goto_1
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 397
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    if-nez v1, :cond_4

    .line 398
    new-instance v1, Ljava/security/cert/CRLException;

    const-string/jumbo v2, "Uninitialized CRL"

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    :cond_3
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    goto :goto_1

    .line 401
    :cond_4
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/Signature;->update([BII)V

    .line 403
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-nez v1, :cond_5

    .line 404
    new-instance v1, Ljava/security/SignatureException;

    const-string/jumbo v2, "Signature does not match."

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 406
    :cond_5
    iput-object p1, p0, Lsun/security/x509/X509CRLImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    .line 407
    iput-object p2, p0, Lsun/security/x509/X509CRLImpl;->verifiedProvider:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
