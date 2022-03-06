.class public Lsun/security/x509/X509CRLEntryImpl;
.super Ljava/security/cert/X509CRLEntry;
.source "X509CRLEntryImpl.java"


# static fields
.field private static final YR_2050:J = 0x24bd0146400L

.field private static final isExplicit:Z


# instance fields
.field private certIssuer:Ljavax/security/auth/x500/X500Principal;

.field private extensions:Lsun/security/x509/CRLExtensions;

.field private revocationDate:Ljava/util/Date;

.field private revokedCert:[B

.field private serialNumber:Lsun/security/x509/SerialNumber;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/util/Date;)V
    .locals 1
    .param p1, "num"    # Ljava/math/BigInteger;
    .param p2, "date"    # Ljava/util/Date;

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 78
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    .line 79
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    .line 80
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 81
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    .line 95
    new-instance v0, Lsun/security/x509/SerialNumber;

    invoke-direct {v0, p1}, Lsun/security/x509/SerialNumber;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    .line 96
    iput-object p2, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/util/Date;Lsun/security/x509/CRLExtensions;)V
    .locals 1
    .param p1, "num"    # Ljava/math/BigInteger;
    .param p2, "date"    # Ljava/util/Date;
    .param p3, "crlEntryExts"    # Lsun/security/x509/CRLExtensions;

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 78
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    .line 79
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    .line 80
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 81
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    .line 110
    new-instance v0, Lsun/security/x509/SerialNumber;

    invoke-direct {v0, p1}, Lsun/security/x509/SerialNumber;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    .line 111
    iput-object p2, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    .line 112
    iput-object p3, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 113
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 4
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 78
    iput-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    .line 79
    iput-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    .line 80
    iput-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 81
    iput-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    .line 138
    :try_start_0
    invoke-direct {p0, p1}, Lsun/security/x509/X509CRLEntryImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/IOException;
    iput-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    .line 141
    new-instance v1, Ljava/security/cert/CRLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parsing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "revokedCert"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 121
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 78
    iput-object v2, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    .line 79
    iput-object v2, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    .line 80
    iput-object v2, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 81
    iput-object v2, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    .line 123
    :try_start_0
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-direct {p0, v1}, Lsun/security/x509/X509CRLEntryImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/IOException;
    iput-object v2, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    .line 126
    new-instance v1, Ljava/security/cert/CRLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parsing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parse(Lsun/security/util/DerValue;)V
    .locals 5
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    iget-byte v3, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v4, 0x30

    if-eq v3, v4, :cond_0

    .line 414
    new-instance v3, Ljava/security/cert/CRLException;

    const-string/jumbo v4, "Invalid encoded RevokedCertificate, starting sequence tag missing."

    invoke-direct {v3, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 417
    :cond_0
    iget-object v3, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-nez v3, :cond_1

    .line 418
    new-instance v3, Ljava/security/cert/CRLException;

    const-string/jumbo v4, "No data encoded for RevokedCertificates"

    invoke-direct {v3, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 420
    :cond_1
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    .line 422
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v0

    .line 423
    .local v0, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    .line 424
    .local v2, "val":Lsun/security/util/DerValue;
    new-instance v3, Lsun/security/x509/SerialNumber;

    invoke-direct {v3, v2}, Lsun/security/x509/SerialNumber;-><init>(Lsun/security/util/DerValue;)V

    iput-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    .line 427
    iget-object v3, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v1

    .line 428
    .local v1, "nextByte":I
    int-to-byte v3, v1

    const/16 v4, 0x17

    if-ne v3, v4, :cond_2

    .line 429
    iget-object v3, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    .line 435
    :goto_0
    iget-object v3, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-nez v3, :cond_4

    .line 440
    :goto_1
    return-void

    .line 430
    :cond_2
    int-to-byte v3, v1

    const/16 v4, 0x18

    if-ne v3, v4, :cond_3

    .line 431
    iget-object v3, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    goto :goto_0

    .line 433
    :cond_3
    new-instance v3, Ljava/security/cert/CRLException;

    const-string/jumbo v4, "Invalid encoding for revocation date"

    invoke-direct {v3, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 439
    :cond_4
    new-instance v3, Lsun/security/x509/CRLExtensions;

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Lsun/security/x509/CRLExtensions;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    goto :goto_1
.end method

.method public static toImpl(Ljava/security/cert/X509CRLEntry;)Lsun/security/x509/X509CRLEntryImpl;
    .locals 2
    .param p0, "entry"    # Ljava/security/cert/X509CRLEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 449
    instance-of v0, p0, Lsun/security/x509/X509CRLEntryImpl;

    if-eqz v0, :cond_0

    .line 450
    check-cast p0, Lsun/security/x509/X509CRLEntryImpl;

    .line 452
    .end local p0    # "entry":Ljava/security/cert/X509CRLEntry;
    :goto_0
    return-object p0

    .restart local p0    # "entry":Ljava/security/cert/X509CRLEntry;
    :cond_0
    new-instance v0, Lsun/security/x509/X509CRLEntryImpl;

    invoke-virtual {p0}, Ljava/security/cert/X509CRLEntry;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/x509/X509CRLEntryImpl;-><init>([B)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 8
    .param p1, "outStrm"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 165
    :try_start_0
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    if-nez v3, :cond_1

    .line 166
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 168
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    invoke-virtual {v3, v2}, Lsun/security/x509/SerialNumber;->encode(Lsun/security/util/DerOutputStream;)V

    .line 170
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide v6, 0x24bd0146400L

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 171
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    .line 176
    :goto_0
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-eqz v3, :cond_0

    .line 177
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lsun/security/x509/CRLExtensions;->encode(Ljava/io/OutputStream;Z)V

    .line 179
    :cond_0
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 180
    .local v1, "seq":Lsun/security/util/DerOutputStream;
    const/16 v3, 0x30

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 182
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    .line 184
    .end local v1    # "seq":Lsun/security/util/DerOutputStream;
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_1
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    invoke-virtual {p1, v3}, Lsun/security/util/DerOutputStream;->write([B)V

    .line 188
    return-void

    .line 173
    .restart local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_2
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CRLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Encoding error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->certIssuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method getCertificateIssuerExtension()Lsun/security/x509/CertificateIssuerExtension;
    .locals 1

    .prologue
    .line 462
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_Id:Lsun/security/util/ObjectIdentifier;

    .line 463
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CRLEntryImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/CertificateIssuerExtension;

    .line 462
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
    .line 314
    iget-object v2, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v2, :cond_1

    .line 315
    const/4 v1, 0x0

    .line 323
    :cond_0
    return-object v1

    .line 317
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 318
    .local v1, "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

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

    .line 319
    .local v0, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v0}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 320
    invoke-virtual {v0}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CRLEntryImpl;->encode(Lsun/security/util/DerOutputStream;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;
    .locals 2
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    .line 402
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v0, :cond_0

    .line 403
    const/4 v0, 0x0

    .line 407
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

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

    .line 360
    iget-object v10, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v10, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-object v9

    .line 363
    :cond_1
    :try_start_0
    new-instance v10, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v10, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lsun/security/x509/OIDMap;->getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;

    move-result-object v4

    .line 364
    .local v4, "extAlias":Ljava/lang/String;
    const/4 v0, 0x0

    .line 366
    .local v0, "crlExt":Lsun/security/x509/Extension;
    if-nez v4, :cond_4

    .line 367
    new-instance v6, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v6, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 368
    .local v6, "findOID":Lsun/security/util/ObjectIdentifier;
    const/4 v3, 0x0

    .line 370
    .local v3, "ex":Lsun/security/x509/Extension;
    iget-object v10, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v10}, Lsun/security/x509/CRLExtensions;->getElements()Ljava/util/Enumeration;

    move-result-object v2

    .line 371
    .local v2, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lsun/security/x509/Extension;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 372
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ex":Lsun/security/x509/Extension;
    check-cast v3, Lsun/security/x509/Extension;

    .line 373
    .restart local v3    # "ex":Lsun/security/x509/Extension;
    invoke-virtual {v3}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v7

    .line 374
    .local v7, "inCertOID":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v7, v6}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 375
    move-object v0, v3

    .line 381
    .end local v2    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lsun/security/x509/Extension;>;"
    .end local v3    # "ex":Lsun/security/x509/Extension;
    .end local v6    # "findOID":Lsun/security/util/ObjectIdentifier;
    .end local v7    # "inCertOID":Lsun/security/util/ObjectIdentifier;
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v5

    .line 384
    .local v5, "extData":[B
    if-eqz v5, :cond_0

    .line 387
    new-instance v8, Lsun/security/util/DerOutputStream;

    invoke-direct {v8}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 388
    .local v8, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {v8, v5}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 389
    invoke-virtual {v8}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v9

    goto :goto_0

    .line 380
    .end local v5    # "extData":[B
    .end local v8    # "out":Lsun/security/util/DerOutputStream;
    :cond_4
    iget-object v10, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v10, v4}, Lsun/security/x509/CRLExtensions;->get(Ljava/lang/String;)Lsun/security/x509/Extension;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 390
    .end local v0    # "crlExt":Lsun/security/x509/Extension;
    .end local v4    # "extAlias":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 391
    .local v1, "e":Ljava/lang/Exception;
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
    .line 335
    iget-object v2, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v2, :cond_1

    .line 336
    const/4 v1, 0x0

    .line 344
    :cond_0
    return-object v1

    .line 338
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 339
    .local v1, "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

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

    .line 340
    .local v0, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v0}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v3

    if-nez v3, :cond_2

    .line 341
    invoke-virtual {v0}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getReasonCode()Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    sget-object v2, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v2}, Lsun/security/x509/X509CRLEntryImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 243
    .local v0, "obj":Lsun/security/x509/Extension;
    if-nez v0, :cond_0

    .line 244
    const/4 v2, 0x0

    .line 246
    :goto_0
    return-object v2

    :cond_0
    move-object v1, v0

    .line 245
    check-cast v1, Lsun/security/x509/CRLReasonCodeExtension;

    .line 246
    .local v1, "reasonCode":Lsun/security/x509/CRLReasonCodeExtension;
    const-string/jumbo v2, "reason"

    invoke-virtual {v1, v2}, Lsun/security/x509/CRLReasonCodeExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    check-cast v2, Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getRevocationDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 232
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    invoke-virtual {v0}, Lsun/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hasExtensions()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v0, :cond_0

    .line 301
    const/4 v0, 0x0

    .line 302
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v0}, Lsun/security/x509/CRLExtensions;->hasUnsupportedCriticalExtension()Z

    move-result v0

    goto :goto_0
.end method

.method setCertificateIssuer(Ljavax/security/auth/x500/X500Principal;Ljavax/security/auth/x500/X500Principal;)V
    .locals 1
    .param p1, "crlIssuer"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "certIssuer"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 208
    invoke-virtual {p1, p2}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->certIssuer:Ljavax/security/auth/x500/X500Principal;

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    iput-object p2, p0, Lsun/security/x509/X509CRLEntryImpl;->certIssuer:Ljavax/security/auth/x500/X500Principal;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 256
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .local v8, "sb":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    invoke-virtual {v9}, Lsun/security/x509/SerialNumber;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "  On: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-object v9, p0, Lsun/security/x509/X509CRLEntryImpl;->certIssuer:Ljavax/security/auth/x500/X500Principal;

    if-eqz v9, :cond_0

    .line 261
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\n    Certificate issuer: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lsun/security/x509/X509CRLEntryImpl;->certIssuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_0
    iget-object v9, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-eqz v9, :cond_3

    .line 264
    iget-object v9, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v9}, Lsun/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v0

    .line 265
    .local v0, "allEntryExts":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v6

    .line 267
    .local v6, "objs":[Ljava/lang/Object;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\n    CRL Entry Extensions: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v9, v6

    if-ge v5, v9, :cond_3

    .line 269
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\n    ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    aget-object v3, v6, v5

    check-cast v3, Lsun/security/x509/Extension;

    .line 272
    .local v3, "ext":Lsun/security/x509/Extension;
    :try_start_0
    invoke-virtual {v3}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v9

    invoke-static {v9}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v9

    if-nez v9, :cond_2

    .line 273
    invoke-virtual {v3}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v3}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v4

    .line 275
    .local v4, "extValue":[B
    if-eqz v4, :cond_1

    .line 276
    new-instance v7, Lsun/security/util/DerOutputStream;

    invoke-direct {v7}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 277
    .local v7, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {v7, v4}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 278
    invoke-virtual {v7}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v4

    .line 279
    new-instance v2, Lsun/misc/HexDumpEncoder;

    invoke-direct {v2}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 280
    .local v2, "enc":Lsun/misc/HexDumpEncoder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Extension unknown: DER encoded OCTET string =\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 282
    invoke-virtual {v2, v4}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 280
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .end local v2    # "enc":Lsun/misc/HexDumpEncoder;
    .end local v4    # "extValue":[B
    .end local v7    # "out":Lsun/security/util/DerOutputStream;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 285
    :cond_2
    invoke-virtual {v3}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 286
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v9, ", Error parsing this extension"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 291
    .end local v0    # "allEntryExts":Ljava/util/Collection;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "ext":Lsun/security/x509/Extension;
    .end local v5    # "i":I
    .end local v6    # "objs":[Ljava/lang/Object;
    :cond_3
    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method
