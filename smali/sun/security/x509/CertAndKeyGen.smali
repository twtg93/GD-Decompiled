.class public final Lsun/security/x509/CertAndKeyGen;
.super Ljava/lang/Object;
.source "CertAndKeyGen.java"


# instance fields
.field private keyGen:Ljava/security/KeyPairGenerator;

.field private privateKey:Ljava/security/PrivateKey;

.field private prng:Ljava/security/SecureRandom;

.field private publicKey:Ljava/security/PublicKey;

.field private sigAlg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "sigAlg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {p1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/CertAndKeyGen;->keyGen:Ljava/security/KeyPairGenerator;

    .line 85
    iput-object p2, p0, Lsun/security/x509/CertAndKeyGen;->sigAlg:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "sigAlg"    # Ljava/lang/String;
    .param p3, "providerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    if-nez p3, :cond_0

    .line 103
    invoke-static {p1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/CertAndKeyGen;->keyGen:Ljava/security/KeyPairGenerator;

    .line 112
    :goto_0
    iput-object p2, p0, Lsun/security/x509/CertAndKeyGen;->sigAlg:Ljava/lang/String;

    .line 113
    return-void

    .line 106
    :cond_0
    :try_start_0
    invoke-static {p1, p3}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/CertAndKeyGen;->keyGen:Ljava/security/KeyPairGenerator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/CertAndKeyGen;->keyGen:Ljava/security/KeyPairGenerator;

    goto :goto_0
.end method

.method private getSigner(Lsun/security/x509/X500Name;)Lsun/security/x509/X500Signer;
    .locals 2
    .param p1, "me"    # Lsun/security/x509/X500Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 353
    iget-object v1, p0, Lsun/security/x509/CertAndKeyGen;->sigAlg:Ljava/lang/String;

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 358
    .local v0, "signature":Ljava/security/Signature;
    iget-object v1, p0, Lsun/security/x509/CertAndKeyGen;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 359
    new-instance v1, Lsun/security/x509/X500Signer;

    invoke-direct {v1, v0, p1}, Lsun/security/x509/X500Signer;-><init>(Ljava/security/Signature;Lsun/security/x509/X500Name;)V

    return-object v1
.end method


# virtual methods
.method public generate(I)V
    .locals 4
    .param p1, "keyBits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 153
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/CertAndKeyGen;->prng:Ljava/security/SecureRandom;

    if-nez v2, :cond_0

    .line 154
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iput-object v2, p0, Lsun/security/x509/CertAndKeyGen;->prng:Ljava/security/SecureRandom;

    .line 156
    :cond_0
    iget-object v2, p0, Lsun/security/x509/CertAndKeyGen;->keyGen:Ljava/security/KeyPairGenerator;

    iget-object v3, p0, Lsun/security/x509/CertAndKeyGen;->prng:Ljava/security/SecureRandom;

    invoke-virtual {v2, p1, v3}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 157
    iget-object v2, p0, Lsun/security/x509/CertAndKeyGen;->keyGen:Ljava/security/KeyPairGenerator;

    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 163
    .local v1, "pair":Ljava/security/KeyPair;
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/CertAndKeyGen;->publicKey:Ljava/security/PublicKey;

    .line 164
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/CertAndKeyGen;->privateKey:Ljava/security/PrivateKey;

    .line 165
    return-void

    .line 159
    .end local v1    # "pair":Ljava/security/KeyPair;
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getCertRequest(Lsun/security/x509/X500Name;)Lsun/security/pkcs/PKCS10;
    .locals 5
    .param p1, "myname"    # Lsun/security/x509/X500Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 332
    new-instance v1, Lsun/security/pkcs/PKCS10;

    iget-object v2, p0, Lsun/security/x509/CertAndKeyGen;->publicKey:Ljava/security/PublicKey;

    invoke-direct {v1, v2}, Lsun/security/pkcs/PKCS10;-><init>(Ljava/security/PublicKey;)V

    .line 335
    .local v1, "req":Lsun/security/pkcs/PKCS10;
    :try_start_0
    invoke-direct {p0, p1}, Lsun/security/x509/CertAndKeyGen;->getSigner(Lsun/security/x509/X500Name;)Lsun/security/x509/X500Signer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/pkcs/PKCS10;->encodeAndSign(Lsun/security/x509/X500Signer;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2

    .line 347
    return-object v1

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/security/SignatureException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lsun/security/x509/CertAndKeyGen;->sigAlg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " CertificateException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 340
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v0

    .line 341
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/SignatureException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lsun/security/x509/CertAndKeyGen;->sigAlg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " IOException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 343
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 345
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/SignatureException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lsun/security/x509/CertAndKeyGen;->sigAlg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " unavailable?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lsun/security/x509/CertAndKeyGen;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getPublicKey()Lsun/security/x509/X509Key;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lsun/security/x509/CertAndKeyGen;->publicKey:Ljava/security/PublicKey;

    instance-of v0, v0, Lsun/security/x509/X509Key;

    if-nez v0, :cond_0

    .line 181
    const/4 v0, 0x0

    .line 183
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/security/x509/CertAndKeyGen;->publicKey:Ljava/security/PublicKey;

    check-cast v0, Lsun/security/x509/X509Key;

    goto :goto_0
.end method

.method public getSelfCert(Lsun/security/x509/X500Name;J)Lsun/security/x509/X509Cert;
    .locals 4
    .param p1, "myname"    # Lsun/security/x509/X500Name;
    .param p2, "validity"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 224
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lsun/security/x509/CertAndKeyGen;->getSelfCertificate(Lsun/security/x509/X500Name;J)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 225
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    new-instance v2, Lsun/security/x509/X509Cert;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/x509/X509Cert;-><init>([B)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v2

    .line 226
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/security/SignatureException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 228
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v1

    .line 229
    .local v1, "e":Ljava/security/NoSuchProviderException;
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 230
    .end local v1    # "e":Ljava/security/NoSuchProviderException;
    :catch_2
    move-exception v1

    .line 231
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/SignatureException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getSelfCertificate(Lsun/security/x509/X500Name;J)Ljava/security/cert/X509Certificate;
    .locals 2
    .param p1, "myname"    # Lsun/security/x509/X500Name;
    .param p2, "validity"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 312
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1, v0, p2, p3}, Lsun/security/x509/CertAndKeyGen;->getSelfCertificate(Lsun/security/x509/X500Name;Ljava/util/Date;J)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getSelfCertificate(Lsun/security/x509/X500Name;Ljava/util/Date;J)Ljava/security/cert/X509Certificate;
    .locals 17
    .param p1, "myname"    # Lsun/security/x509/X500Name;
    .param p2, "firstDate"    # Ljava/util/Date;
    .param p3, "validity"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 265
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lsun/security/x509/CertAndKeyGen;->getSigner(Lsun/security/x509/X500Name;)Lsun/security/x509/X500Signer;

    move-result-object v8

    .line 267
    .local v8, "issuer":Lsun/security/x509/X500Signer;
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 268
    .local v9, "lastDate":Ljava/util/Date;
    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long v12, v12, p3

    add-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/util/Date;->setTime(J)V

    .line 270
    new-instance v7, Lsun/security/x509/CertificateValidity;

    move-object/from16 v0, p2

    invoke-direct {v7, v0, v9}, Lsun/security/x509/CertificateValidity;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    .line 273
    .local v7, "interval":Lsun/security/x509/CertificateValidity;
    new-instance v6, Lsun/security/x509/X509CertInfo;

    invoke-direct {v6}, Lsun/security/x509/X509CertInfo;-><init>()V

    .line 275
    .local v6, "info":Lsun/security/x509/X509CertInfo;
    const-string/jumbo v10, "version"

    new-instance v11, Lsun/security/x509/CertificateVersion;

    const/4 v12, 0x2

    invoke-direct {v11, v12}, Lsun/security/x509/CertificateVersion;-><init>(I)V

    invoke-virtual {v6, v10, v11}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    const-string/jumbo v10, "serialNumber"

    new-instance v11, Lsun/security/x509/CertificateSerialNumber;

    .line 278
    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    long-to-int v12, v12

    invoke-direct {v11, v12}, Lsun/security/x509/CertificateSerialNumber;-><init>(I)V

    .line 277
    invoke-virtual {v6, v10, v11}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    invoke-virtual {v8}, Lsun/security/x509/X500Signer;->getAlgorithmId()Lsun/security/x509/AlgorithmId;

    move-result-object v2

    .line 280
    .local v2, "algID":Lsun/security/x509/AlgorithmId;
    const-string/jumbo v10, "algorithmID"

    new-instance v11, Lsun/security/x509/CertificateAlgorithmId;

    invoke-direct {v11, v2}, Lsun/security/x509/CertificateAlgorithmId;-><init>(Lsun/security/x509/AlgorithmId;)V

    invoke-virtual {v6, v10, v11}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    const-string/jumbo v10, "subject"

    new-instance v11, Lsun/security/x509/CertificateSubjectName;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lsun/security/x509/CertificateSubjectName;-><init>(Lsun/security/x509/X500Name;)V

    invoke-virtual {v6, v10, v11}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    const-string/jumbo v10, "key"

    new-instance v11, Lsun/security/x509/CertificateX509Key;

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/x509/CertAndKeyGen;->publicKey:Ljava/security/PublicKey;

    invoke-direct {v11, v12}, Lsun/security/x509/CertificateX509Key;-><init>(Ljava/security/PublicKey;)V

    invoke-virtual {v6, v10, v11}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    const-string/jumbo v10, "validity"

    invoke-virtual {v6, v10, v7}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    const-string/jumbo v10, "issuer"

    new-instance v11, Lsun/security/x509/CertificateIssuerName;

    .line 286
    invoke-virtual {v8}, Lsun/security/x509/X500Signer;->getSigner()Lsun/security/x509/X500Name;

    move-result-object v12

    invoke-direct {v11, v12}, Lsun/security/x509/CertificateIssuerName;-><init>(Lsun/security/x509/X500Name;)V

    .line 285
    invoke-virtual {v6, v10, v11}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 288
    const-string/jumbo v10, "sun.security.internal.keytool.skid"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 289
    new-instance v5, Lsun/security/x509/CertificateExtensions;

    invoke-direct {v5}, Lsun/security/x509/CertificateExtensions;-><init>()V

    .line 290
    .local v5, "ext":Lsun/security/x509/CertificateExtensions;
    const-string/jumbo v10, "SubjectKeyIdentifier"

    new-instance v11, Lsun/security/x509/SubjectKeyIdentifierExtension;

    new-instance v12, Lsun/security/x509/KeyIdentifier;

    move-object/from16 v0, p0

    iget-object v13, v0, Lsun/security/x509/CertAndKeyGen;->publicKey:Ljava/security/PublicKey;

    invoke-direct {v12, v13}, Lsun/security/x509/KeyIdentifier;-><init>(Ljava/security/PublicKey;)V

    .line 292
    invoke-virtual {v12}, Lsun/security/x509/KeyIdentifier;->getIdentifier()[B

    move-result-object v12

    invoke-direct {v11, v12}, Lsun/security/x509/SubjectKeyIdentifierExtension;-><init>([B)V

    .line 290
    invoke-virtual {v5, v10, v11}, Lsun/security/x509/CertificateExtensions;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    const-string/jumbo v10, "extensions"

    invoke-virtual {v6, v10, v5}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    .end local v5    # "ext":Lsun/security/x509/CertificateExtensions;
    :cond_0
    new-instance v3, Lsun/security/x509/X509CertImpl;

    invoke-direct {v3, v6}, Lsun/security/x509/X509CertImpl;-><init>(Lsun/security/x509/X509CertInfo;)V

    .line 297
    .local v3, "cert":Lsun/security/x509/X509CertImpl;
    move-object/from16 v0, p0

    iget-object v10, v0, Lsun/security/x509/CertAndKeyGen;->privateKey:Ljava/security/PrivateKey;

    move-object/from16 v0, p0

    iget-object v11, v0, Lsun/security/x509/CertAndKeyGen;->sigAlg:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Lsun/security/x509/X509CertImpl;->sign(Ljava/security/PrivateKey;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    return-object v3

    .line 301
    .end local v2    # "algID":Lsun/security/x509/AlgorithmId;
    .end local v3    # "cert":Lsun/security/x509/X509CertImpl;
    .end local v6    # "info":Lsun/security/x509/X509CertInfo;
    .end local v7    # "interval":Lsun/security/x509/CertificateValidity;
    .end local v8    # "issuer":Lsun/security/x509/X500Signer;
    .end local v9    # "lastDate":Ljava/util/Date;
    :catch_0
    move-exception v4

    .line 302
    .local v4, "e":Ljava/io/IOException;
    new-instance v10, Ljava/security/cert/CertificateEncodingException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getSelfCert: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 303
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public setRandom(Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "generator"    # Ljava/security/SecureRandom;

    .prologue
    .line 125
    iput-object p1, p0, Lsun/security/x509/CertAndKeyGen;->prng:Ljava/security/SecureRandom;

    .line 126
    return-void
.end method
