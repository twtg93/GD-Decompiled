.class public Lsun/security/x509/X509CertImpl;
.super Ljava/security/cert/X509Certificate;
.source "X509CertImpl.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# static fields
.field public static final ALG_ID:Ljava/lang/String; = "algorithm"

.field private static final AUTH_INFO_ACCESS_OID:Ljava/lang/String; = "1.3.6.1.5.5.7.1.1"

.field private static final BASIC_CONSTRAINT_OID:Ljava/lang/String; = "2.5.29.19"

.field public static final BEGIN_CERT:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----"

.field private static final DOT:Ljava/lang/String; = "."

.field public static final END_CERT:Ljava/lang/String; = "-----END CERTIFICATE-----"

.field private static final EXTENDED_KEY_USAGE_OID:Ljava/lang/String; = "2.5.29.37"

.field public static final INFO:Ljava/lang/String; = "info"

.field private static final ISSUER_ALT_NAME_OID:Ljava/lang/String; = "2.5.29.18"

.field public static final ISSUER_DN:Ljava/lang/String; = "x509.info.issuer.dname"

.field private static final KEY_USAGE_OID:Ljava/lang/String; = "2.5.29.15"

.field public static final NAME:Ljava/lang/String; = "x509"

.field private static final NUM_STANDARD_KEY_USAGE:I = 0x9

.field public static final PUBLIC_KEY:Ljava/lang/String; = "x509.info.key.value"

.field public static final SERIAL_ID:Ljava/lang/String; = "x509.info.serialNumber.number"

.field public static final SIG:Ljava/lang/String; = "x509.signature"

.field public static final SIGNATURE:Ljava/lang/String; = "signature"

.field public static final SIGNED_CERT:Ljava/lang/String; = "signed_cert"

.field public static final SIG_ALG:Ljava/lang/String; = "x509.algorithm"

.field private static final SUBJECT_ALT_NAME_OID:Ljava/lang/String; = "2.5.29.17"

.field public static final SUBJECT_DN:Ljava/lang/String; = "x509.info.subject.dname"

.field public static final VERSION:Ljava/lang/String; = "x509.info.version.number"

.field private static final serialVersionUID:J = -0x2ffbe8ab06f69c16L


# instance fields
.field protected algId:Lsun/security/x509/AlgorithmId;

.field private authInfoAccess:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lsun/security/x509/AccessDescription;",
            ">;"
        }
    .end annotation
.end field

.field private extKeyUsage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected info:Lsun/security/x509/X509CertInfo;

.field private issuerAlternativeNames:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation
.end field

.field private readOnly:Z

.field protected signature:[B

.field private signedCert:[B

.field private subjectAlternativeNames:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation
.end field

.field private verificationResult:Z

.field private verifiedProvider:Ljava/lang/String;

.field private verifiedPublicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 207
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    .line 157
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 158
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 159
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    .line 160
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    .line 207
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 244
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 154
    const/4 v5, 0x0

    iput-boolean v5, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    .line 157
    iput-object v6, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 158
    iput-object v6, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 159
    iput-object v6, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    .line 160
    iput-object v6, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    .line 246
    const/4 v1, 0x0

    .line 248
    .local v1, "der":Lsun/security/util/DerValue;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 253
    .local v2, "inBuffered":Ljava/io/BufferedInputStream;
    const v5, 0x7fffffff

    :try_start_0
    invoke-virtual {v2, v5}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 254
    invoke-direct {p0, v2}, Lsun/security/x509/X509CertImpl;->readRFC1421Cert(Ljava/io/InputStream;)Lsun/security/util/DerValue;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 272
    :goto_0
    :try_start_1
    invoke-direct {p0, v1}, Lsun/security/x509/X509CertImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 281
    return-void

    .line 255
    :catch_0
    move-exception v3

    .line 258
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->reset()V

    .line 259
    new-instance v1, Lsun/security/util/DerValue;

    .end local v1    # "der":Lsun/security/util/DerValue;
    invoke-direct {v1, v2}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v1    # "der":Lsun/security/util/DerValue;
    goto :goto_0

    .line 260
    .end local v1    # "der":Lsun/security/util/DerValue;
    :catch_1
    move-exception v4

    .line 261
    .local v4, "ioe1":Ljava/io/IOException;
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Input stream must be either DER-encoded bytes or RFC1421 hex-encoded DER-encoded bytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 266
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, "ce":Ljava/security/cert/CertificateException;
    invoke-virtual {v0, v4}, Ljava/security/cert/CertificateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 268
    throw v0

    .line 273
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "ioe1":Ljava/io/IOException;
    .restart local v1    # "der":Lsun/security/util/DerValue;
    :catch_2
    move-exception v3

    .line 274
    .restart local v3    # "ioe":Ljava/io/IOException;
    iput-object v6, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 275
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to parse DER value of certificate, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 278
    .restart local v0    # "ce":Ljava/security/cert/CertificateException;
    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 279
    throw v0
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 4
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 347
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 154
    const/4 v2, 0x0

    iput-boolean v2, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    .line 157
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 158
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 159
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    .line 160
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    .line 349
    :try_start_0
    invoke-direct {p0, p1}, Lsun/security/x509/X509CertImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    return-void

    .line 350
    :catch_0
    move-exception v1

    .line 351
    .local v1, "e":Ljava/io/IOException;
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 352
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to initialize, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, "ce":Ljava/security/cert/CertificateException;
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 355
    throw v0
.end method

.method public constructor <init>(Lsun/security/x509/X509CertInfo;)V
    .locals 2
    .param p1, "certInfo"    # Lsun/security/x509/X509CertInfo;

    .prologue
    const/4 v1, 0x0

    .line 335
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    .line 157
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 158
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 159
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    .line 160
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    .line 336
    iput-object p1, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 337
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "certData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 221
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 154
    const/4 v2, 0x0

    iput-boolean v2, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    .line 157
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 158
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 159
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    .line 160
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    .line 223
    :try_start_0
    new-instance v2, Lsun/security/util/DerValue;

    invoke-direct {v2, p1}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-direct {p0, v2}, Lsun/security/x509/X509CertImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    return-void

    .line 224
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Ljava/io/IOException;
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 226
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to initialize, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, "ce":Ljava/security/cert/CertificateException;
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 229
    throw v0
.end method

.method private static cloneAltNames(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .local p0, "altNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v7, 0x1

    .line 1565
    const/4 v0, 0x0

    .line 1566
    .local v0, "mustClone":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1567
    .local v1, "nameEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, [B

    if-eqz v6, :cond_0

    .line 1569
    const/4 v0, 0x1

    goto :goto_0

    .line 1572
    .end local v1    # "nameEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_1
    if-eqz v0, :cond_4

    .line 1573
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1574
    .local v4, "namesCopy":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/List<*>;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1575
    .restart local v1    # "nameEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1576
    .local v3, "nameObject":Ljava/lang/Object;
    instance-of v6, v3, [B

    if-eqz v6, :cond_2

    .line 1577
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1579
    .local v2, "nameEntryCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    check-cast v3, [B

    .end local v3    # "nameObject":Ljava/lang/Object;
    check-cast v3, [B

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v7, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1580
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1582
    .end local v2    # "nameEntryCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v3    # "nameObject":Ljava/lang/Object;
    :cond_2
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1585
    .end local v1    # "nameEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v3    # "nameObject":Ljava/lang/Object;
    :cond_3
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    .line 1587
    .end local v4    # "namesCopy":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/List<*>;>;"
    .end local p0    # "altNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    :cond_4
    return-object p0
.end method

.method public static getEncodedInternal(Ljava/security/cert/Certificate;)[B
    .locals 1
    .param p0, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 1848
    instance-of v0, p0, Lsun/security/x509/X509CertImpl;

    if-eqz v0, :cond_0

    .line 1849
    check-cast p0, Lsun/security/x509/X509CertImpl;

    .end local p0    # "cert":Ljava/security/cert/Certificate;
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B

    move-result-object v0

    .line 1851
    .restart local p0    # "cert":Ljava/security/cert/Certificate;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static getExtendedKeyUsage(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .locals 7
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 1456
    :try_start_0
    const-string/jumbo v6, "2.5.29.37"

    invoke-virtual {p0, v6}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v3

    .line 1457
    .local v3, "ext":[B
    if-nez v3, :cond_0

    .line 1458
    const/4 v6, 0x0

    .line 1464
    :goto_0
    return-object v6

    .line 1459
    :cond_0
    new-instance v5, Lsun/security/util/DerValue;

    invoke-direct {v5, v3}, Lsun/security/util/DerValue;-><init>([B)V

    .line 1460
    .local v5, "val":Lsun/security/util/DerValue;
    invoke-virtual {v5}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v1

    .line 1462
    .local v1, "data":[B
    new-instance v2, Lsun/security/x509/ExtendedKeyUsageExtension;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, v6, v1}, Lsun/security/x509/ExtendedKeyUsageExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    .line 1464
    .local v2, "ekuExt":Lsun/security/x509/ExtendedKeyUsageExtension;
    invoke-virtual {v2}, Lsun/security/x509/ExtendedKeyUsageExtension;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 1465
    .end local v1    # "data":[B
    .end local v2    # "ekuExt":Lsun/security/x509/ExtendedKeyUsageExtension;
    .end local v3    # "ext":[B
    .end local v5    # "val":Lsun/security/util/DerValue;
    :catch_0
    move-exception v4

    .line 1466
    .local v4, "ioe":Ljava/io/IOException;
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v0}, Ljava/security/cert/CertificateParsingException;-><init>()V

    .line 1468
    .local v0, "cpe":Ljava/security/cert/CertificateParsingException;
    invoke-virtual {v0, v4}, Ljava/security/cert/CertificateParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1469
    throw v0
.end method

.method public static getIssuerAlternativeNames(Ljava/security/cert/X509Certificate;)Ljava/util/Collection;
    .locals 8
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 1695
    :try_start_0
    const-string/jumbo v7, "2.5.29.18"

    invoke-virtual {p0, v7}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    .line 1696
    .local v2, "ext":[B
    if-nez v2, :cond_0

    .line 1697
    const/4 v7, 0x0

    .line 1714
    :goto_0
    return-object v7

    .line 1700
    :cond_0
    new-instance v6, Lsun/security/util/DerValue;

    invoke-direct {v6, v2}, Lsun/security/util/DerValue;-><init>([B)V

    .line 1701
    .local v6, "val":Lsun/security/util/DerValue;
    invoke-virtual {v6}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v1

    .line 1703
    .local v1, "data":[B
    new-instance v4, Lsun/security/x509/IssuerAlternativeNameExtension;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v7, v1}, Lsun/security/x509/IssuerAlternativeNameExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1708
    .local v4, "issuerAltNameExt":Lsun/security/x509/IssuerAlternativeNameExtension;
    :try_start_1
    const-string/jumbo v7, "issuer_name"

    .line 1709
    invoke-virtual {v4, v7}, Lsun/security/x509/IssuerAlternativeNameExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/security/x509/GeneralNames;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1714
    .local v5, "names":Lsun/security/x509/GeneralNames;
    :try_start_2
    invoke-static {v5}, Lsun/security/x509/X509CertImpl;->makeAltNames(Lsun/security/x509/GeneralNames;)Ljava/util/Collection;

    move-result-object v7

    goto :goto_0

    .line 1710
    .end local v5    # "names":Lsun/security/x509/GeneralNames;
    :catch_0
    move-exception v3

    .line 1712
    .local v3, "ioe":Ljava/io/IOException;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    goto :goto_0

    .line 1715
    .end local v1    # "data":[B
    .end local v2    # "ext":[B
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "issuerAltNameExt":Lsun/security/x509/IssuerAlternativeNameExtension;
    .end local v6    # "val":Lsun/security/util/DerValue;
    :catch_1
    move-exception v3

    .line 1716
    .restart local v3    # "ioe":Ljava/io/IOException;
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v0}, Ljava/security/cert/CertificateParsingException;-><init>()V

    .line 1718
    .local v0, "cpe":Ljava/security/cert/CertificateParsingException;
    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1719
    throw v0
.end method

.method public static getIssuerX500Principal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;
    .locals 3
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 1834
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1}, Lsun/security/x509/X509CertImpl;->getX500Principal(Ljava/security/cert/X509Certificate;Z)Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1835
    :catch_0
    move-exception v0

    .line 1836
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Could not parse issuer"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getSubjectAlternativeNames(Ljava/security/cert/X509Certificate;)Ljava/util/Collection;
    .locals 8
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 1629
    :try_start_0
    const-string/jumbo v7, "2.5.29.17"

    invoke-virtual {p0, v7}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    .line 1630
    .local v2, "ext":[B
    if-nez v2, :cond_0

    .line 1631
    const/4 v7, 0x0

    .line 1648
    :goto_0
    return-object v7

    .line 1633
    :cond_0
    new-instance v6, Lsun/security/util/DerValue;

    invoke-direct {v6, v2}, Lsun/security/util/DerValue;-><init>([B)V

    .line 1634
    .local v6, "val":Lsun/security/util/DerValue;
    invoke-virtual {v6}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v1

    .line 1636
    .local v1, "data":[B
    new-instance v5, Lsun/security/x509/SubjectAlternativeNameExtension;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v7, v1}, Lsun/security/x509/SubjectAlternativeNameExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1642
    .local v5, "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    :try_start_1
    const-string/jumbo v7, "subject_name"

    .line 1643
    invoke-virtual {v5, v7}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/GeneralNames;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1648
    .local v4, "names":Lsun/security/x509/GeneralNames;
    :try_start_2
    invoke-static {v4}, Lsun/security/x509/X509CertImpl;->makeAltNames(Lsun/security/x509/GeneralNames;)Ljava/util/Collection;

    move-result-object v7

    goto :goto_0

    .line 1644
    .end local v4    # "names":Lsun/security/x509/GeneralNames;
    :catch_0
    move-exception v3

    .line 1646
    .local v3, "ioe":Ljava/io/IOException;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    goto :goto_0

    .line 1649
    .end local v1    # "data":[B
    .end local v2    # "ext":[B
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v5    # "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    .end local v6    # "val":Lsun/security/util/DerValue;
    :catch_1
    move-exception v3

    .line 1650
    .restart local v3    # "ioe":Ljava/io/IOException;
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v0}, Ljava/security/cert/CertificateParsingException;-><init>()V

    .line 1652
    .local v0, "cpe":Ljava/security/cert/CertificateParsingException;
    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1653
    throw v0
.end method

.method public static getSubjectX500Principal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;
    .locals 3
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 1822
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lsun/security/x509/X509CertImpl;->getX500Principal(Ljava/security/cert/X509Certificate;Z)Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1823
    :catch_0
    move-exception v0

    .line 1824
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Could not parse subject"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getX500Principal(Ljava/security/cert/X509Certificate;Z)Ljavax/security/auth/x500/X500Principal;
    .locals 8
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "getIssuer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1795
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    .line 1796
    .local v1, "encoded":[B
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-direct {v0, v1}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 1797
    .local v0, "derIn":Lsun/security/util/DerInputStream;
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v6

    aget-object v3, v6, v7

    .line 1798
    .local v3, "tbsCert":Lsun/security/util/DerValue;
    iget-object v4, v3, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 1800
    .local v4, "tbsIn":Lsun/security/util/DerInputStream;
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v5

    .line 1802
    .local v5, "tmp":Lsun/security/util/DerValue;
    invoke-virtual {v5, v7}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1803
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v5

    .line 1806
    :cond_0
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v5

    .line 1807
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v5

    .line 1808
    if-nez p1, :cond_1

    .line 1809
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v5

    .line 1810
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v5

    .line 1812
    :cond_1
    invoke-virtual {v5}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v2

    .line 1813
    .local v2, "principalBytes":[B
    new-instance v6, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v6, v2}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    return-object v6
.end method

.method public static declared-synchronized intern(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    .locals 6
    .param p0, "c"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1884
    const-class v5, Lsun/security/x509/X509CertImpl;

    monitor-enter v5

    if-nez p0, :cond_0

    .line 1885
    const/4 v3, 0x0

    .line 1901
    :goto_0
    monitor-exit v5

    return-object v3

    .line 1887
    :cond_0
    :try_start_0
    instance-of v2, p0, Lsun/security/x509/X509CertImpl;

    .line 1889
    .local v2, "isImpl":Z
    if-eqz v2, :cond_1

    .line 1890
    move-object v0, p0

    check-cast v0, Lsun/security/x509/X509CertImpl;

    move-object v4, v0

    invoke-virtual {v4}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B

    move-result-object v1

    .line 1895
    .local v1, "encoding":[B
    :goto_1
    if-eqz v2, :cond_2

    .line 1896
    move-object v0, p0

    check-cast v0, Lsun/security/x509/X509CertImpl;

    move-object v3, v0

    .local v3, "newC":Lsun/security/x509/X509CertImpl;
    goto :goto_0

    .line 1892
    .end local v1    # "encoding":[B
    .end local v3    # "newC":Lsun/security/x509/X509CertImpl;
    :cond_1
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    .restart local v1    # "encoding":[B
    goto :goto_1

    .line 1898
    :cond_2
    new-instance v3, Lsun/security/x509/X509CertImpl;

    invoke-direct {v3, v1}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    .line 1899
    .restart local v3    # "newC":Lsun/security/x509/X509CertImpl;
    invoke-virtual {v3}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 1884
    .end local v1    # "encoding":[B
    .end local v2    # "isImpl":Z
    .end local v3    # "newC":Lsun/security/x509/X509CertImpl;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static isSelfIssued(Ljava/security/cert/X509Certificate;)Z
    .locals 3
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 1910
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 1911
    .local v1, "subject":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 1912
    .local v0, "issuer":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v1, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isSelfSigned(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 1
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "sigProvider"    # Ljava/lang/String;

    .prologue
    .line 1923
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1925
    if-nez p1, :cond_0

    .line 1926
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 1930
    :goto_0
    const/4 v0, 0x1

    .line 1935
    :goto_1
    return v0

    .line 1928
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1931
    :catch_0
    move-exception v0

    .line 1935
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static makeAltNames(Lsun/security/x509/GeneralNames;)Ljava/util/Collection;
    .locals 8
    .param p0, "names"    # Lsun/security/x509/GeneralNames;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/x509/GeneralNames;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 1509
    invoke-virtual {p0}, Lsun/security/x509/GeneralNames;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1510
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v6

    .line 1557
    :goto_0
    return-object v6

    .line 1512
    :cond_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1513
    .local v5, "newNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/List<*>;>;"
    invoke-virtual {p0}, Lsun/security/x509/GeneralNames;->names()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/GeneralName;

    .line 1514
    .local v1, "gname":Lsun/security/x509/GeneralName;
    invoke-virtual {v1}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v3

    .line 1515
    .local v3, "name":Lsun/security/x509/GeneralNameInterface;
    new-instance v4, Ljava/util/ArrayList;

    const/4 v7, 0x2

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1516
    .local v4, "nameEntry":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v3}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1517
    invoke-interface {v3}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1544
    :pswitch_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 1546
    .local v0, "derOut":Lsun/security/util/DerOutputStream;
    :try_start_0
    invoke-interface {v3, v0}, Lsun/security/x509/GeneralNameInterface;->encode(Lsun/security/util/DerOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1552
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1555
    .end local v0    # "derOut":Lsun/security/util/DerOutputStream;
    .end local v3    # "name":Lsun/security/x509/GeneralNameInterface;
    :goto_2
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1519
    .restart local v3    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_1
    check-cast v3, Lsun/security/x509/RFC822Name;

    .end local v3    # "name":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v3}, Lsun/security/x509/RFC822Name;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1522
    .restart local v3    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_2
    check-cast v3, Lsun/security/x509/DNSName;

    .end local v3    # "name":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v3}, Lsun/security/x509/DNSName;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1525
    .restart local v3    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_3
    check-cast v3, Lsun/security/x509/X500Name;

    .end local v3    # "name":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v3}, Lsun/security/x509/X500Name;->getRFC2253Name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1528
    .restart local v3    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_4
    check-cast v3, Lsun/security/x509/URIName;

    .end local v3    # "name":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v3}, Lsun/security/x509/URIName;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1532
    .restart local v3    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_5
    :try_start_1
    check-cast v3, Lsun/security/x509/IPAddressName;

    .end local v3    # "name":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v3}, Lsun/security/x509/IPAddressName;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1533
    :catch_0
    move-exception v2

    .line 1535
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "IPAddress cannot be parsed"

    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1540
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v3    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_6
    check-cast v3, Lsun/security/x509/OIDName;

    .end local v3    # "name":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v3}, Lsun/security/x509/OIDName;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1547
    .restart local v0    # "derOut":Lsun/security/util/DerOutputStream;
    .restart local v3    # "name":Lsun/security/x509/GeneralNameInterface;
    :catch_1
    move-exception v2

    .line 1550
    .restart local v2    # "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "name cannot be encoded"

    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1557
    .end local v0    # "derOut":Lsun/security/util/DerOutputStream;
    .end local v1    # "gname":Lsun/security/x509/GeneralName;
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v3    # "name":Lsun/security/x509/GeneralNameInterface;
    .end local v4    # "nameEntry":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    goto/16 :goto_0

    .line 1517
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private parse(Lsun/security/util/DerValue;)V
    .locals 7
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x30

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1743
    iget-boolean v2, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    if-eqz v2, :cond_0

    .line 1744
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v3, "cannot over-write existing certificate"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1747
    :cond_0
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-eqz v2, :cond_1

    iget-byte v2, p1, Lsun/security/util/DerValue;->tag:B

    if-eq v2, v6, :cond_2

    .line 1748
    :cond_1
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v3, "invalid DER-encoded certificate data"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1751
    :cond_2
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 1752
    const/4 v2, 0x3

    new-array v1, v2, [Lsun/security/util/DerValue;

    .line 1754
    .local v1, "seq":[Lsun/security/util/DerValue;
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1755
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1756
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    aput-object v2, v1, v5

    .line 1758
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1759
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "signed overrun, bytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 1760
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->available()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1762
    :cond_3
    aget-object v2, v1, v3

    iget-byte v2, v2, Lsun/security/util/DerValue;->tag:B

    if-eq v2, v6, :cond_4

    .line 1763
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v3, "signed fields invalid"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1766
    :cond_4
    aget-object v2, v1, v4

    invoke-static {v2}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    .line 1767
    aget-object v2, v1, v5

    invoke-virtual {v2}, Lsun/security/util/DerValue;->getBitString()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    .line 1769
    aget-object v2, v1, v4

    iget-object v2, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_5

    .line 1770
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v3, "algid field overrun"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1772
    :cond_5
    aget-object v2, v1, v5

    iget-object v2, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_6

    .line 1773
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v3, "signed fields overrun"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1776
    :cond_6
    new-instance v2, Lsun/security/x509/X509CertInfo;

    aget-object v3, v1, v3

    invoke-direct {v2, v3}, Lsun/security/x509/X509CertInfo;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 1779
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v3, "algorithmID.algorithm"

    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/AlgorithmId;

    .line 1783
    .local v0, "infoSigAlg":Lsun/security/x509/AlgorithmId;
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2, v0}, Lsun/security/x509/AlgorithmId;->equals(Lsun/security/x509/AlgorithmId;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1784
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string/jumbo v3, "Signature algorithm mismatch"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1785
    :cond_7
    iput-boolean v4, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    .line 1786
    return-void
.end method

.method private readRFC1421Cert(Ljava/io/InputStream;)Lsun/security/util/DerValue;
    .locals 10
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    const/4 v3, 0x0

    .line 293
    .local v3, "der":Lsun/security/util/DerValue;
    const/4 v6, 0x0

    .line 294
    .local v6, "line":Ljava/lang/String;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string/jumbo v8, "ASCII"

    invoke-direct {v7, p1, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 297
    .local v0, "certBufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 303
    const-string/jumbo v7, "-----BEGIN CERTIFICATE-----"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 305
    new-instance v1, Lsun/misc/BASE64Decoder;

    invoke-direct {v1}, Lsun/misc/BASE64Decoder;-><init>()V

    .line 306
    .local v1, "decoder":Lsun/misc/BASE64Decoder;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 308
    .local v2, "decstream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 309
    const-string/jumbo v7, "-----END CERTIFICATE-----"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 310
    new-instance v3, Lsun/security/util/DerValue;

    .end local v3    # "der":Lsun/security/util/DerValue;
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v3, v7}, Lsun/security/util/DerValue;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 325
    .restart local v3    # "der":Lsun/security/util/DerValue;
    :cond_0
    return-object v3

    .line 298
    .end local v1    # "decoder":Lsun/misc/BASE64Decoder;
    .end local v2    # "decstream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v4

    .line 299
    .local v4, "ioe1":Ljava/io/IOException;
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to read InputStream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 300
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 313
    .end local v4    # "ioe1":Ljava/io/IOException;
    .restart local v1    # "decoder":Lsun/misc/BASE64Decoder;
    .restart local v2    # "decstream":Ljava/io/ByteArrayOutputStream;
    :cond_1
    :try_start_2
    invoke-virtual {v1, v6}, Lsun/misc/BASE64Decoder;->decodeBuffer(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 316
    .end local v3    # "der":Lsun/security/util/DerValue;
    :catch_1
    move-exception v5

    .line 317
    .local v5, "ioe2":Ljava/io/IOException;
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to read InputStream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 318
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 321
    .end local v1    # "decoder":Lsun/misc/BASE64Decoder;
    .end local v2    # "decstream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "ioe2":Ljava/io/IOException;
    .restart local v3    # "der":Lsun/security/util/DerValue;
    :cond_2
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "InputStream is not RFC1421 hex-encoded DER bytes"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    .locals 1
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1862
    instance-of v0, p0, Lsun/security/x509/X509CertImpl;

    if-eqz v0, :cond_0

    .line 1863
    check-cast p0, Lsun/security/x509/X509CertImpl;

    .line 1865
    .end local p0    # "cert":Ljava/security/cert/X509Certificate;
    :goto_0
    return-object p0

    .restart local p0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_0
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->intern(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public checkValidity()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 588
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 589
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->checkValidity(Ljava/util/Date;)V

    .line 590
    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 608
    const/4 v1, 0x0

    .line 610
    .local v1, "interval":Lsun/security/x509/CertificateValidity;
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v3, "validity"

    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "interval":Lsun/security/x509/CertificateValidity;
    check-cast v1, Lsun/security/x509/CertificateValidity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    .restart local v1    # "interval":Lsun/security/x509/CertificateValidity;
    if-nez v1, :cond_0

    .line 615
    new-instance v2, Ljava/security/cert/CertificateNotYetValidException;

    const-string/jumbo v3, "Null validity period"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 611
    .end local v1    # "interval":Lsun/security/x509/CertificateValidity;
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/cert/CertificateNotYetValidException;

    const-string/jumbo v3, "Incorrect validity period"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 616
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "interval":Lsun/security/x509/CertificateValidity;
    :cond_0
    invoke-virtual {v1, p1}, Lsun/security/x509/CertificateValidity;->valid(Ljava/util/Date;)V

    .line 617
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 726
    iget-boolean v3, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    if-eqz v3, :cond_0

    .line 727
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string/jumbo v4, "cannot over-write existing certificate"

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 730
    :cond_0
    new-instance v0, Lsun/security/x509/X509AttributeName;

    invoke-direct {v0, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 731
    .local v0, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 732
    .local v2, "id":Ljava/lang/String;
    const-string/jumbo v3, "x509"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 733
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid root of attribute name, expected [x509], received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 737
    :cond_1
    new-instance v1, Lsun/security/x509/X509AttributeName;

    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 738
    .end local v0    # "attr":Lsun/security/x509/X509AttributeName;
    .local v1, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 740
    const-string/jumbo v3, "info"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 741
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 742
    iput-object v4, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 756
    :goto_0
    return-void

    .line 744
    :cond_2
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/x509/X509CertInfo;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 746
    :cond_3
    const-string/jumbo v3, "algorithm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 747
    iput-object v4, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    goto :goto_0

    .line 748
    :cond_4
    const-string/jumbo v3, "signature"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 749
    iput-object v4, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    goto :goto_0

    .line 750
    :cond_5
    const-string/jumbo v3, "signed_cert"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 751
    iput-object v4, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    goto :goto_0

    .line 753
    :cond_6
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Attribute name not recognized or delete() not allowed for the same: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public derEncode(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Null certificate to encode"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 389
    return-void
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 367
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    if-nez v1, :cond_0

    .line 368
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    const-string/jumbo v2, "Null certificate to encode"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 371
    :cond_0
    :try_start_0
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 631
    new-instance v0, Lsun/security/x509/X509AttributeName;

    invoke-direct {v0, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 632
    .local v0, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    .line 633
    .local v3, "id":Ljava/lang/String;
    const-string/jumbo v5, "x509"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 634
    new-instance v4, Ljava/security/cert/CertificateParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid root of attribute name, expected [x509], received ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 638
    :cond_0
    new-instance v1, Lsun/security/x509/X509AttributeName;

    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 639
    .end local v0    # "attr":Lsun/security/x509/X509AttributeName;
    .local v1, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    .line 641
    const-string/jumbo v5, "info"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 642
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v5, :cond_2

    .line 667
    :cond_1
    :goto_0
    return-object v4

    .line 645
    :cond_2
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 647
    :try_start_0
    iget-object v4, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    goto :goto_0

    .line 648
    :catch_0
    move-exception v2

    .line 649
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 650
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 651
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v4, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 654
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    :cond_3
    iget-object v4, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    goto :goto_0

    .line 656
    :cond_4
    const-string/jumbo v5, "algorithm"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 657
    iget-object v4, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    goto :goto_0

    .line 658
    :cond_5
    const-string/jumbo v5, "signature"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 659
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    if-eqz v5, :cond_1

    .line 660
    iget-object v4, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 663
    :cond_6
    const-string/jumbo v5, "signed_cert"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 664
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    if-eqz v5, :cond_1

    .line 665
    iget-object v4, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 669
    :cond_7
    new-instance v4, Ljava/security/cert/CertificateParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Attribute name not recognized or get() not allowed for the same: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getAuthorityInfoAccessExtension()Lsun/security/x509/AuthorityInfoAccessExtension;
    .locals 1

    .prologue
    .line 1724
    sget-object v0, Lsun/security/x509/PKIXExtensions;->AuthInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

    .line 1725
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/AuthorityInfoAccessExtension;

    .line 1724
    return-object v0
.end method

.method public getAuthorityKeyIdentifierExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .locals 1

    .prologue
    .line 1097
    sget-object v0, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    .line 1098
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/AuthorityKeyIdentifierExtension;

    .line 1097
    return-object v0
.end method

.method public getBasicConstraints()I
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 1480
    :try_start_0
    sget-object v3, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-static {v3}, Lsun/security/x509/OIDMap;->getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;

    move-result-object v2

    .line 1481
    .local v2, "extAlias":Ljava/lang/String;
    if-nez v2, :cond_0

    move v3, v4

    .line 1495
    .end local v2    # "extAlias":Ljava/lang/String;
    :goto_0
    return v3

    .line 1484
    .restart local v2    # "extAlias":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v2}, Lsun/security/x509/X509CertImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/BasicConstraintsExtension;

    .line 1485
    .local v0, "certExt":Lsun/security/x509/BasicConstraintsExtension;
    if-nez v0, :cond_1

    move v3, v4

    .line 1486
    goto :goto_0

    .line 1488
    :cond_1
    const-string/jumbo v3, "is_ca"

    invoke-virtual {v0, v3}, Lsun/security/x509/BasicConstraintsExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 1489
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 1490
    const-string/jumbo v3, "path_len"

    invoke-virtual {v0, v3}, Lsun/security/x509/BasicConstraintsExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1491
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v4

    .line 1493
    goto :goto_0

    .line 1494
    .end local v0    # "certExt":Lsun/security/x509/BasicConstraintsExtension;
    .end local v2    # "extAlias":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move v3, v4

    .line 1495
    goto :goto_0
.end method

.method public getBasicConstraintsExtension()Lsun/security/x509/BasicConstraintsExtension;
    .locals 1

    .prologue
    .line 1107
    sget-object v0, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    .line 1108
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/BasicConstraintsExtension;

    .line 1107
    return-object v0
.end method

.method public getCRLDistributionPointsExtension()Lsun/security/x509/CRLDistributionPointsExtension;
    .locals 1

    .prologue
    .line 1206
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_Id:Lsun/security/util/ObjectIdentifier;

    .line 1207
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/CRLDistributionPointsExtension;

    .line 1206
    return-object v0
.end method

.method public getCertificatePoliciesExtension()Lsun/security/x509/CertificatePoliciesExtension;
    .locals 1

    .prologue
    .line 1117
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    .line 1118
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/CertificatePoliciesExtension;

    .line 1117
    return-object v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 7
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
    const/4 v4, 0x0

    .line 1237
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v5, :cond_1

    move-object v2, v4

    .line 1254
    :cond_0
    :goto_0
    return-object v2

    .line 1241
    :cond_1
    :try_start_0
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v6, "extensions"

    invoke-virtual {v5, v6}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/CertificateExtensions;

    .line 1243
    .local v3, "exts":Lsun/security/x509/CertificateExtensions;
    if-nez v3, :cond_2

    move-object v2, v4

    .line 1244
    goto :goto_0

    .line 1246
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1247
    .local v2, "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v3}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/Extension;

    .line 1248
    .local v1, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v1}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1249
    invoke-virtual {v1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1253
    .end local v1    # "ex":Lsun/security/x509/Extension;
    .end local v2    # "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "exts":Lsun/security/x509/CertificateExtensions;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v2, v4

    .line 1254
    goto :goto_0
.end method

.method public getElements()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 763
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 764
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "x509.info"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 765
    const-string/jumbo v1, "x509.algorithm"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 766
    const-string/jumbo v1, "x509.signature"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 767
    const-string/jumbo v1, "x509.signed_cert"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 769
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 400
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B

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
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string/jumbo v1, "Null certificate to encode"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    return-object v0
.end method

.method public declared-synchronized getExtendedKeyUsage()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 1434
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->extKeyUsage:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1435
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->extKeyUsage:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1443
    :goto_0
    monitor-exit p0

    return-object v1

    .line 1437
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getExtendedKeyUsageExtension()Lsun/security/x509/ExtendedKeyUsageExtension;

    move-result-object v0

    .line 1438
    .local v0, "ext":Lsun/security/x509/ExtendedKeyUsageExtension;
    if-nez v0, :cond_1

    .line 1439
    const/4 v1, 0x0

    goto :goto_0

    .line 1442
    :cond_1
    invoke-virtual {v0}, Lsun/security/x509/ExtendedKeyUsageExtension;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->extKeyUsage:Ljava/util/List;

    .line 1443
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->extKeyUsage:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1434
    .end local v0    # "ext":Lsun/security/x509/ExtendedKeyUsageExtension;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getExtendedKeyUsageExtension()Lsun/security/x509/ExtendedKeyUsageExtension;
    .locals 1

    .prologue
    .line 1127
    sget-object v0, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    .line 1128
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/ExtendedKeyUsageExtension;

    .line 1127
    return-object v0
.end method

.method public getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;
    .locals 7
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    const/4 v4, 0x0

    .line 1297
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v5, :cond_0

    move-object v1, v4

    .line 1320
    :goto_0
    return-object v1

    .line 1303
    :cond_0
    :try_start_0
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v6, "extensions"

    invoke-virtual {v5, v6}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/CertificateExtensions;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1307
    .local v2, "extensions":Lsun/security/x509/CertificateExtensions;
    if-nez v2, :cond_1

    move-object v1, v4

    .line 1308
    goto :goto_0

    .line 1304
    .end local v2    # "extensions":Lsun/security/x509/CertificateExtensions;
    :catch_0
    move-exception v0

    .local v0, "ce":Ljava/security/cert/CertificateException;
    move-object v1, v4

    .line 1305
    goto :goto_0

    .line 1310
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    .restart local v2    # "extensions":Lsun/security/x509/CertificateExtensions;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/Extension;

    .line 1311
    .local v1, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6, p1}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .end local v1    # "ex":Lsun/security/x509/Extension;
    :cond_3
    move-object v1, v4

    .line 1317
    goto :goto_0

    .line 1319
    .end local v2    # "extensions":Lsun/security/x509/CertificateExtensions;
    :catch_1
    move-exception v3

    .local v3, "ioe":Ljava/io/IOException;
    move-object v1, v4

    .line 1320
    goto :goto_0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 13
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 1353
    :try_start_0
    new-instance v7, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v7, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 1354
    .local v7, "findOID":Lsun/security/util/ObjectIdentifier;
    invoke-static {v7}, Lsun/security/x509/OIDMap;->getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;

    move-result-object v4

    .line 1355
    .local v4, "extAlias":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1356
    .local v1, "certExt":Lsun/security/x509/Extension;
    iget-object v10, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v12, "extensions"

    invoke-virtual {v10, v12}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/security/x509/CertificateExtensions;

    .line 1359
    .local v6, "exts":Lsun/security/x509/CertificateExtensions;
    if-nez v4, :cond_4

    .line 1361
    if-nez v6, :cond_0

    move-object v10, v11

    .line 1395
    .end local v1    # "certExt":Lsun/security/x509/Extension;
    .end local v4    # "extAlias":Ljava/lang/String;
    .end local v6    # "exts":Lsun/security/x509/CertificateExtensions;
    .end local v7    # "findOID":Lsun/security/util/ObjectIdentifier;
    :goto_0
    return-object v10

    .line 1365
    .restart local v1    # "certExt":Lsun/security/x509/Extension;
    .restart local v4    # "extAlias":Ljava/lang/String;
    .restart local v6    # "exts":Lsun/security/x509/CertificateExtensions;
    .restart local v7    # "findOID":Lsun/security/util/ObjectIdentifier;
    :cond_0
    invoke-virtual {v6}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/Extension;

    .line 1366
    .local v3, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v3}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v8

    .line 1367
    .local v8, "inCertOID":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v8, v7}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1368
    move-object v1, v3

    .line 1379
    .end local v3    # "ex":Lsun/security/x509/Extension;
    .end local v8    # "inCertOID":Lsun/security/util/ObjectIdentifier;
    :cond_2
    :goto_1
    if-nez v1, :cond_5

    .line 1380
    if-eqz v6, :cond_3

    .line 1381
    invoke-virtual {v6}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "certExt":Lsun/security/x509/Extension;
    check-cast v1, Lsun/security/x509/Extension;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1383
    .restart local v1    # "certExt":Lsun/security/x509/Extension;
    :cond_3
    if-nez v1, :cond_5

    move-object v10, v11

    .line 1384
    goto :goto_0

    .line 1374
    :cond_4
    :try_start_1
    invoke-virtual {p0, v4}, Lsun/security/x509/X509CertImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lsun/security/x509/Extension;

    move-object v1, v0
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1387
    :cond_5
    :try_start_2
    invoke-virtual {v1}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v5

    .line 1388
    .local v5, "extData":[B
    if-nez v5, :cond_6

    move-object v10, v11

    .line 1389
    goto :goto_0

    .line 1391
    :cond_6
    new-instance v9, Lsun/security/util/DerOutputStream;

    invoke-direct {v9}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 1392
    .local v9, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {v9, v5}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 1393
    invoke-virtual {v9}, Lsun/security/util/DerOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v10

    goto :goto_0

    .line 1394
    .end local v1    # "certExt":Lsun/security/x509/Extension;
    .end local v4    # "extAlias":Ljava/lang/String;
    .end local v5    # "extData":[B
    .end local v6    # "exts":Lsun/security/x509/CertificateExtensions;
    .end local v7    # "findOID":Lsun/security/util/ObjectIdentifier;
    .end local v9    # "out":Lsun/security/util/DerOutputStream;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move-object v10, v11

    .line 1395
    goto :goto_0

    .line 1375
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "certExt":Lsun/security/x509/Extension;
    .restart local v4    # "extAlias":Ljava/lang/String;
    .restart local v6    # "exts":Lsun/security/x509/CertificateExtensions;
    .restart local v7    # "findOID":Lsun/security/util/ObjectIdentifier;
    :catch_1
    move-exception v10

    goto :goto_1
.end method

.method public getIssuerAlternativeNameExtension()Lsun/security/x509/IssuerAlternativeNameExtension;
    .locals 1

    .prologue
    .line 1137
    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    .line 1138
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/IssuerAlternativeNameExtension;

    .line 1137
    return-object v0
.end method

.method public declared-synchronized getIssuerAlternativeNames()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 1666
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->issuerAlternativeNames:Ljava/util/Collection;

    if-eqz v3, :cond_0

    .line 1667
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->issuerAlternativeNames:Ljava/util/Collection;

    invoke-static {v3}, Lsun/security/x509/X509CertImpl;->cloneAltNames(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1683
    :goto_0
    monitor-exit p0

    return-object v3

    .line 1670
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getIssuerAlternativeNameExtension()Lsun/security/x509/IssuerAlternativeNameExtension;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 1671
    .local v1, "issuerAltNameExt":Lsun/security/x509/IssuerAlternativeNameExtension;
    if-nez v1, :cond_1

    .line 1672
    const/4 v3, 0x0

    goto :goto_0

    .line 1676
    :cond_1
    :try_start_2
    const-string/jumbo v3, "issuer_name"

    .line 1677
    invoke-virtual {v1, v3}, Lsun/security/x509/IssuerAlternativeNameExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/GeneralNames;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1682
    .local v2, "names":Lsun/security/x509/GeneralNames;
    :try_start_3
    invoke-static {v2}, Lsun/security/x509/X509CertImpl;->makeAltNames(Lsun/security/x509/GeneralNames;)Ljava/util/Collection;

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->issuerAlternativeNames:Ljava/util/Collection;

    .line 1683
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->issuerAlternativeNames:Ljava/util/Collection;

    goto :goto_0

    .line 1678
    .end local v2    # "names":Lsun/security/x509/GeneralNames;
    :catch_0
    move-exception v0

    .line 1680
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 1666
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v1    # "issuerAltNameExt":Lsun/security/x509/IssuerAlternativeNameExtension;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 912
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v3, :cond_0

    move-object v1, v2

    .line 920
    :goto_0
    return-object v1

    .line 915
    :cond_0
    :try_start_0
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v4, "issuer.dname"

    invoke-virtual {v3, v4}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    .local v1, "issuer":Ljava/security/Principal;
    goto :goto_0

    .line 919
    .end local v1    # "issuer":Ljava/security/Principal;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v2

    .line 920
    goto :goto_0
.end method

.method public getIssuerUniqueID()[Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1054
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v3, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return-object v2

    .line 1057
    :cond_1
    :try_start_0
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v4, "issuerID.id"

    invoke-virtual {v3, v4}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/UniqueIdentity;

    .line 1060
    .local v1, "id":Lsun/security/x509/UniqueIdentity;
    if-eqz v1, :cond_0

    .line 1063
    invoke-virtual {v1}, Lsun/security/x509/UniqueIdentity;->getId()[Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1064
    .end local v1    # "id":Lsun/security/x509/UniqueIdentity;
    :catch_0
    move-exception v0

    .line 1065
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 930
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v3, :cond_0

    move-object v1, v2

    .line 939
    :goto_0
    return-object v1

    .line 934
    :cond_0
    :try_start_0
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v4, "issuer.x500principal"

    invoke-virtual {v3, v4}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    .local v1, "issuer":Ljavax/security/auth/x500/X500Principal;
    goto :goto_0

    .line 938
    .end local v1    # "issuer":Ljavax/security/auth/x500/X500Principal;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v2

    .line 939
    goto :goto_0
.end method

.method public getKeyUsage()[Z
    .locals 9

    .prologue
    const/16 v7, 0x9

    const/4 v5, 0x0

    .line 1406
    :try_start_0
    sget-object v6, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-static {v6}, Lsun/security/x509/OIDMap;->getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;

    move-result-object v2

    .line 1407
    .local v2, "extAlias":Ljava/lang/String;
    if-nez v2, :cond_1

    move-object v3, v5

    .line 1422
    .end local v2    # "extAlias":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 1410
    .restart local v2    # "extAlias":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v2}, Lsun/security/x509/X509CertImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/KeyUsageExtension;

    .line 1411
    .local v0, "certExt":Lsun/security/x509/KeyUsageExtension;
    if-nez v0, :cond_2

    move-object v3, v5

    .line 1412
    goto :goto_0

    .line 1414
    :cond_2
    invoke-virtual {v0}, Lsun/security/x509/KeyUsageExtension;->getBits()[Z

    move-result-object v3

    .line 1415
    .local v3, "ret":[Z
    array-length v6, v3

    if-ge v6, v7, :cond_0

    .line 1416
    const/16 v6, 0x9

    new-array v4, v6, [Z

    .line 1417
    .local v4, "usageBits":[Z
    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v3

    invoke-static {v3, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1418
    move-object v3, v4

    goto :goto_0

    .line 1421
    .end local v0    # "certExt":Lsun/security/x509/KeyUsageExtension;
    .end local v2    # "extAlias":Ljava/lang/String;
    .end local v3    # "ret":[Z
    .end local v4    # "usageBits":[Z
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v3, v5

    .line 1422
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 776
    const-string/jumbo v0, "x509"

    return-object v0
.end method

.method public getNameConstraintsExtension()Lsun/security/x509/NameConstraintsExtension;
    .locals 1

    .prologue
    .line 1146
    sget-object v0, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    .line 1147
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/NameConstraintsExtension;

    .line 1146
    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 7
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
    const/4 v4, 0x0

    .line 1267
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v5, :cond_0

    move-object v2, v4

    .line 1285
    :goto_0
    return-object v2

    .line 1271
    :cond_0
    :try_start_0
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v6, "extensions"

    invoke-virtual {v5, v6}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/CertificateExtensions;

    .line 1273
    .local v3, "exts":Lsun/security/x509/CertificateExtensions;
    if-nez v3, :cond_1

    move-object v2, v4

    .line 1274
    goto :goto_0

    .line 1276
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1277
    .local v2, "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v3}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/Extension;

    .line 1278
    .local v1, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v1}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1279
    invoke-virtual {v1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1284
    .end local v1    # "ex":Lsun/security/x509/Extension;
    .end local v2    # "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "exts":Lsun/security/x509/CertificateExtensions;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v2, v4

    .line 1285
    goto :goto_0

    .line 1282
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3    # "exts":Lsun/security/x509/CertificateExtensions;
    :cond_3
    invoke-virtual {v3}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 966
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v3, :cond_0

    move-object v0, v2

    .line 973
    :goto_0
    return-object v0

    .line 969
    :cond_0
    :try_start_0
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v4, "validity.notAfter"

    invoke-virtual {v3, v4}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    .local v0, "d":Ljava/util/Date;
    goto :goto_0

    .line 972
    .end local v0    # "d":Ljava/util/Date;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 973
    goto :goto_0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 949
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v3, :cond_0

    move-object v0, v2

    .line 956
    :goto_0
    return-object v0

    .line 952
    :cond_0
    :try_start_0
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v4, "validity.notBefore"

    invoke-virtual {v3, v4}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    .local v0, "d":Ljava/util/Date;
    goto :goto_0

    .line 955
    .end local v0    # "d":Ljava/util/Date;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 956
    goto :goto_0
.end method

.method public getPolicyConstraintsExtension()Lsun/security/x509/PolicyConstraintsExtension;
    .locals 1

    .prologue
    .line 1156
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    .line 1157
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/PolicyConstraintsExtension;

    .line 1156
    return-object v0
.end method

.method public getPolicyMappingsExtension()Lsun/security/x509/PolicyMappingsExtension;
    .locals 1

    .prologue
    .line 1166
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    .line 1167
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/PolicyMappingsExtension;

    .line 1166
    return-object v0
.end method

.method public getPrivateKeyUsageExtension()Lsun/security/x509/PrivateKeyUsageExtension;
    .locals 1

    .prologue
    .line 1175
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    .line 1176
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/PrivateKeyUsageExtension;

    .line 1175
    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 810
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v3, :cond_0

    move-object v1, v2

    .line 817
    :goto_0
    return-object v1

    .line 813
    :cond_0
    :try_start_0
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v4, "key.value"

    invoke-virtual {v3, v4}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    .local v1, "key":Ljava/security/PublicKey;
    goto :goto_0

    .line 816
    .end local v1    # "key":Ljava/security/PublicKey;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v2

    .line 817
    goto :goto_0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 844
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getSerialNumberObject()Lsun/security/x509/SerialNumber;

    move-result-object v0

    .line 846
    .local v0, "ser":Lsun/security/x509/SerialNumber;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsun/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSerialNumberObject()Lsun/security/x509/SerialNumber;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 856
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v3, :cond_0

    move-object v1, v2

    .line 864
    :goto_0
    return-object v1

    .line 859
    :cond_0
    :try_start_0
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v4, "serialNumber.number"

    invoke-virtual {v3, v4}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/SerialNumber;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    .local v1, "ser":Lsun/security/x509/SerialNumber;
    goto :goto_0

    .line 863
    .end local v1    # "ser":Lsun/security/x509/SerialNumber;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v2

    .line 864
    goto :goto_0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    if-nez v0, :cond_0

    .line 1014
    const/4 v0, 0x0

    .line 1015
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1025
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    if-nez v1, :cond_0

    .line 1026
    const/4 v1, 0x0

    .line 1028
    :goto_0
    return-object v1

    .line 1027
    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 1028
    .local v0, "oid":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSigAlgParams()[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1039
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    if-nez v2, :cond_0

    .line 1044
    :goto_0
    return-object v1

    .line 1042
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->getEncodedParams()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public getSignature()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 998
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    if-nez v1, :cond_0

    .line 999
    const/4 v0, 0x0

    .line 1002
    :goto_0
    return-object v0

    .line 1000
    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 1001
    .local v0, "dup":[B
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getSubjectAlternativeNameExtension()Lsun/security/x509/SubjectAlternativeNameExtension;
    .locals 1

    .prologue
    .line 1186
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    .line 1187
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/SubjectAlternativeNameExtension;

    .line 1186
    return-object v0
.end method

.method public declared-synchronized getSubjectAlternativeNames()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 1600
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->subjectAlternativeNames:Ljava/util/Collection;

    if-eqz v3, :cond_0

    .line 1601
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->subjectAlternativeNames:Ljava/util/Collection;

    invoke-static {v3}, Lsun/security/x509/X509CertImpl;->cloneAltNames(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1617
    :goto_0
    monitor-exit p0

    return-object v3

    .line 1604
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getSubjectAlternativeNameExtension()Lsun/security/x509/SubjectAlternativeNameExtension;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1605
    .local v2, "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    if-nez v2, :cond_1

    .line 1606
    const/4 v3, 0x0

    goto :goto_0

    .line 1610
    :cond_1
    :try_start_2
    const-string/jumbo v3, "subject_name"

    .line 1611
    invoke-virtual {v2, v3}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/GeneralNames;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1616
    .local v1, "names":Lsun/security/x509/GeneralNames;
    :try_start_3
    invoke-static {v1}, Lsun/security/x509/X509CertImpl;->makeAltNames(Lsun/security/x509/GeneralNames;)Ljava/util/Collection;

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->subjectAlternativeNames:Ljava/util/Collection;

    .line 1617
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->subjectAlternativeNames:Ljava/util/Collection;

    goto :goto_0

    .line 1612
    .end local v1    # "names":Lsun/security/x509/GeneralNames;
    :catch_0
    move-exception v0

    .line 1614
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 1600
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v2    # "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 875
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v3, :cond_0

    move-object v1, v2

    .line 883
    :goto_0
    return-object v1

    .line 878
    :cond_0
    :try_start_0
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v4, "subject.dname"

    invoke-virtual {v3, v4}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    .local v1, "subject":Ljava/security/Principal;
    goto :goto_0

    .line 882
    .end local v1    # "subject":Ljava/security/Principal;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v2

    .line 883
    goto :goto_0
.end method

.method public getSubjectKeyIdentifierExtension()Lsun/security/x509/SubjectKeyIdentifierExtension;
    .locals 1

    .prologue
    .line 1196
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectKey_Id:Lsun/security/util/ObjectIdentifier;

    .line 1197
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/SubjectKeyIdentifierExtension;

    .line 1196
    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1075
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v3, :cond_1

    .line 1086
    :cond_0
    :goto_0
    return-object v2

    .line 1078
    :cond_1
    :try_start_0
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v4, "subjectID.id"

    invoke-virtual {v3, v4}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/UniqueIdentity;

    .line 1081
    .local v1, "id":Lsun/security/x509/UniqueIdentity;
    if-eqz v1, :cond_0

    .line 1084
    invoke-virtual {v1}, Lsun/security/x509/UniqueIdentity;->getId()[Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1085
    .end local v1    # "id":Lsun/security/x509/UniqueIdentity;
    :catch_0
    move-exception v0

    .line 1086
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 893
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v3, :cond_0

    move-object v1, v2

    .line 902
    :goto_0
    return-object v1

    .line 897
    :cond_0
    :try_start_0
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v4, "subject.x500principal"

    invoke-virtual {v3, v4}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    .local v1, "subject":Ljavax/security/auth/x500/X500Principal;
    goto :goto_0

    .line 901
    .end local v1    # "subject":Ljavax/security/auth/x500/X500Principal;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v2

    .line 902
    goto :goto_0
.end method

.method public getTBSCertificate()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 986
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v0}, Lsun/security/x509/X509CertInfo;->getEncodedInfo()[B

    move-result-object v0

    return-object v0

    .line 989
    :cond_0
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string/jumbo v1, "Uninitialized certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUnparseableExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;
    .locals 6
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    const/4 v4, 0x0

    .line 1325
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v3, :cond_0

    move-object v3, v4

    .line 1341
    :goto_0
    return-object v3

    .line 1331
    :cond_0
    :try_start_0
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v5, "extensions"

    invoke-virtual {v3, v5}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/CertificateExtensions;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1335
    .local v1, "extensions":Lsun/security/x509/CertificateExtensions;
    if-nez v1, :cond_1

    move-object v3, v4

    .line 1336
    goto :goto_0

    .line 1332
    .end local v1    # "extensions":Lsun/security/x509/CertificateExtensions;
    :catch_0
    move-exception v0

    .local v0, "ce":Ljava/security/cert/CertificateException;
    move-object v3, v4

    .line 1333
    goto :goto_0

    .line 1338
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    .restart local v1    # "extensions":Lsun/security/x509/CertificateExtensions;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/Extension;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1340
    .end local v1    # "extensions":Lsun/security/x509/CertificateExtensions;
    :catch_1
    move-exception v2

    .local v2, "ioe":Ljava/io/IOException;
    move-object v3, v4

    .line 1341
    goto :goto_0
.end method

.method public getVersion()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 827
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v2, :cond_0

    move v2, v3

    .line 834
    :goto_0
    return v2

    .line 830
    :cond_0
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v4, "version.number"

    invoke-virtual {v2, v4}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 831
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 832
    .local v1, "vers":I
    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    .line 833
    .end local v1    # "vers":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v2, v3

    .line 834
    goto :goto_0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1215
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v3, :cond_1

    .line 1224
    :cond_0
    :goto_0
    return v2

    .line 1218
    :cond_1
    :try_start_0
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v4, "extensions"

    invoke-virtual {v3, v4}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/CertificateExtensions;

    .line 1220
    .local v1, "exts":Lsun/security/x509/CertificateExtensions;
    if-eqz v1, :cond_0

    .line 1222
    invoke-virtual {v1}, Lsun/security/x509/CertificateExtensions;->hasUnsupportedCriticalExtension()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1223
    .end local v1    # "exts":Lsun/security/x509/CertificateExtensions;
    :catch_0
    move-exception v0

    .line 1224
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 685
    iget-boolean v3, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    if-eqz v3, :cond_0

    .line 686
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string/jumbo v4, "cannot over-write existing certificate"

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 689
    :cond_0
    new-instance v0, Lsun/security/x509/X509AttributeName;

    invoke-direct {v0, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 690
    .local v0, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 691
    .local v2, "id":Ljava/lang/String;
    const-string/jumbo v3, "x509"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 692
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid root of attribute name, expected [x509], received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 695
    :cond_1
    new-instance v1, Lsun/security/x509/X509AttributeName;

    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 696
    .end local v0    # "attr":Lsun/security/x509/X509AttributeName;
    .local v1, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 698
    const-string/jumbo v3, "info"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 699
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 700
    instance-of v3, p2, Lsun/security/x509/X509CertInfo;

    if-nez v3, :cond_2

    .line 701
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string/jumbo v4, "Attribute value should be of type X509CertInfo."

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 704
    :cond_2
    check-cast p2, Lsun/security/x509/X509CertInfo;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 705
    iput-object v5, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 714
    :goto_0
    return-void

    .line 707
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_3
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 708
    iput-object v5, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    goto :goto_0

    .line 711
    :cond_4
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Attribute name not recognized or set() not allowed for the same: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public sign(Ljava/security/PrivateKey;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 515
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lsun/security/x509/X509CertImpl;->sign(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method public sign(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 539
    :try_start_0
    iget-boolean v5, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    if-eqz v5, :cond_0

    .line 540
    new-instance v5, Ljava/security/cert/CertificateEncodingException;

    const-string/jumbo v6, "cannot over-write existing certificate"

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 542
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v3, 0x0

    .line 543
    .local v3, "sigEngine":Ljava/security/Signature;
    if-eqz p3, :cond_1

    :try_start_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 544
    :cond_1
    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .line 548
    :goto_0
    invoke-virtual {v3, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 551
    invoke-virtual {v3}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;

    move-result-object v5

    iput-object v5, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    .line 553
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 554
    .local v1, "out":Lsun/security/util/DerOutputStream;
    new-instance v4, Lsun/security/util/DerOutputStream;

    invoke-direct {v4}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 557
    .local v4, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v5, v4}, Lsun/security/x509/X509CertInfo;->encode(Ljava/io/OutputStream;)V

    .line 558
    invoke-virtual {v4}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    .line 561
    .local v2, "rawCert":[B
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v5, v4}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 564
    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {v3, v2, v5, v6}, Ljava/security/Signature;->update([BII)V

    .line 565
    invoke-virtual {v3}, Ljava/security/Signature;->sign()[B

    move-result-object v5

    iput-object v5, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    .line 566
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    invoke-virtual {v4, v5}, Lsun/security/util/DerOutputStream;->putBitString([B)V

    .line 569
    const/16 v5, 0x30

    invoke-virtual {v1, v5, v4}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 570
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 571
    const/4 v5, 0x1

    iput-boolean v5, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    .line 576
    return-void

    .line 546
    .end local v1    # "out":Lsun/security/util/DerOutputStream;
    .end local v2    # "rawCert":[B
    .end local v4    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_2
    invoke-static {p2, p3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 786
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    if-nez v2, :cond_1

    .line 787
    :cond_0
    const-string/jumbo v2, ""

    .line 799
    :goto_0
    return-object v2

    .line 789
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 791
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "[\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v3}, Lsun/security/x509/X509CertInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  Algorithm: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v3}, Lsun/security/x509/AlgorithmId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    new-instance v0, Lsun/misc/HexDumpEncoder;

    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 796
    .local v0, "encoder":Lsun/misc/HexDumpEncoder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  Signature:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    invoke-virtual {v0, v3}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    const-string/jumbo v2, "\n]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 435
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Lsun/security/x509/X509CertImpl;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public declared-synchronized verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 457
    monitor-enter p0

    if-nez p2, :cond_0

    .line 458
    :try_start_0
    const-string/jumbo p2, ""

    .line 460
    :cond_0
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 463
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->verifiedProvider:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 464
    iget-boolean v2, p0, Lsun/security/x509/X509CertImpl;->verificationResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 494
    :cond_1
    monitor-exit p0

    return-void

    .line 467
    :cond_2
    :try_start_1
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v3, "Signature does not match."

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 471
    :cond_3
    :try_start_2
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    if-nez v2, :cond_4

    .line 472
    new-instance v2, Ljava/security/cert/CertificateEncodingException;

    const-string/jumbo v3, "Uninitialized certificate"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 475
    :cond_4
    const/4 v1, 0x0

    .line 476
    .local v1, "sigVerf":Ljava/security/Signature;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 477
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 481
    :goto_0
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 483
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v2}, Lsun/security/x509/X509CertInfo;->getEncodedInfo()[B

    move-result-object v0

    .line 484
    .local v0, "rawCert":[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/security/Signature;->update([BII)V

    .line 487
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    iput-boolean v2, p0, Lsun/security/x509/X509CertImpl;->verificationResult:Z

    .line 488
    iput-object p1, p0, Lsun/security/x509/X509CertImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    .line 489
    iput-object p2, p0, Lsun/security/x509/X509CertImpl;->verifiedProvider:Ljava/lang/String;

    .line 491
    iget-boolean v2, p0, Lsun/security/x509/X509CertImpl;->verificationResult:Z

    if-nez v2, :cond_1

    .line 492
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v3, "Signature does not match."

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 479
    .end local v0    # "rawCert":[B
    :cond_5
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0
.end method
