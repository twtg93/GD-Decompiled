.class public Lsun/security/x509/X509Cert;
.super Ljava/lang/Object;
.source "X509Cert.java"

# interfaces
.implements Ljava/security/Certificate;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final serialVersionUID:J = -0xbadb59e12ec296L


# instance fields
.field protected transient algid:Lsun/security/x509/AlgorithmId;

.field private transient issuer:Lsun/security/x509/X500Name;

.field private transient issuerSigAlg:Lsun/security/x509/AlgorithmId;

.field private transient notafter:Ljava/util/Date;

.field private transient notbefore:Ljava/util/Date;

.field private transient parsed:Z

.field private transient pubkey:Ljava/security/PublicKey;

.field private transient rawCert:[B

.field private transient serialnum:Ljava/math/BigInteger;

.field private transient signature:[B

.field private transient signedCert:[B

.field private transient subject:Lsun/security/x509/X500Name;

.field private transient version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/X509Cert;->parsed:Z

    .line 123
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 2
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/X509Cert;->parsed:Z

    .line 182
    invoke-direct {p0, p1}, Lsun/security/x509/X509Cert;->parse(Lsun/security/util/DerValue;)V

    .line 183
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Lsun/security/x509/CertParseError;

    const-string/jumbo v1, "garbage at end"

    invoke-direct {v0, v1}, Lsun/security/x509/CertParseError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X509Cert;->signedCert:[B

    .line 186
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/X500Name;Lsun/security/x509/X509Key;Ljava/util/Date;Ljava/util/Date;)V
    .locals 3
    .param p1, "subjectName"    # Lsun/security/x509/X500Name;
    .param p2, "subjectPublicKey"    # Lsun/security/x509/X509Key;
    .param p3, "notBefore"    # Ljava/util/Date;
    .param p4, "notAfter"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/x509/CertException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-boolean v1, p0, Lsun/security/x509/X509Cert;->parsed:Z

    .line 221
    iput-object p1, p0, Lsun/security/x509/X509Cert;->subject:Lsun/security/x509/X500Name;

    .line 223
    instance-of v0, p2, Ljava/security/PublicKey;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lsun/security/x509/CertException;

    const/16 v1, 0x9

    const-string/jumbo v2, "Doesn\'t implement PublicKey interface"

    invoke-direct {v0, v1, v2}, Lsun/security/x509/CertException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    iput-object p2, p0, Lsun/security/x509/X509Cert;->pubkey:Ljava/security/PublicKey;

    .line 229
    iput-object p3, p0, Lsun/security/x509/X509Cert;->notbefore:Ljava/util/Date;

    .line 230
    iput-object p4, p0, Lsun/security/x509/X509Cert;->notafter:Ljava/util/Date;

    .line 231
    iput v1, p0, Lsun/security/x509/X509Cert;->version:I

    .line 232
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "cert"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/X509Cert;->parsed:Z

    .line 140
    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 141
    .local v0, "in":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X509Cert;->parse(Lsun/security/util/DerValue;)V

    .line 142
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    new-instance v1, Lsun/security/x509/CertParseError;

    const-string/jumbo v2, "garbage at end"

    invoke-direct {v1, v2}, Lsun/security/x509/CertParseError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_0
    iput-object p1, p0, Lsun/security/x509/X509Cert;->signedCert:[B

    .line 145
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-boolean v2, p0, Lsun/security/x509/X509Cert;->parsed:Z

    .line 162
    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p1, p2, p3}, Lsun/security/util/DerValue;-><init>([BII)V

    .line 164
    .local v0, "in":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X509Cert;->parse(Lsun/security/util/DerValue;)V

    .line 165
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    new-instance v1, Lsun/security/x509/CertParseError;

    const-string/jumbo v2, "garbage at end"

    invoke-direct {v1, v2}, Lsun/security/x509/CertParseError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_0
    new-array v1, p3, [B

    iput-object v1, p0, Lsun/security/x509/X509Cert;->signedCert:[B

    .line 168
    iget-object v1, p0, Lsun/security/x509/X509Cert;->signedCert:[B

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    return-void
.end method

.method private DERencode()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 804
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 806
    .local v0, "raw":Lsun/security/util/DerOutputStream;
    invoke-direct {p0, v0}, Lsun/security/x509/X509Cert;->encode(Lsun/security/util/DerOutputStream;)V

    .line 807
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private encode(Lsun/security/util/DerOutputStream;)V
    .locals 4
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x30

    .line 816
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 822
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/x509/X509Cert;->serialnum:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    .line 823
    iget-object v2, p0, Lsun/security/x509/X509Cert;->issuerSigAlg:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2, v1}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 824
    iget-object v2, p0, Lsun/security/x509/X509Cert;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v2, v1}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    .line 831
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 833
    .local v0, "seq":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/x509/X509Cert;->notbefore:Ljava/util/Date;

    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    .line 834
    iget-object v2, p0, Lsun/security/x509/X509Cert;->notafter:Ljava/util/Date;

    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    .line 835
    invoke-virtual {v1, v3, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 841
    iget-object v2, p0, Lsun/security/x509/X509Cert;->subject:Lsun/security/x509/X500Name;

    invoke-virtual {v2, v1}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    .line 842
    iget-object v2, p0, Lsun/security/x509/X509Cert;->pubkey:Ljava/security/PublicKey;

    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->write([B)V

    .line 847
    invoke-virtual {p1, v3, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 848
    return-void
.end method

.method private parse(Lsun/security/util/DerValue;)V
    .locals 9
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x30

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 674
    iget-boolean v4, p0, Lsun/security/x509/X509Cert;->parsed:Z

    if-ne v4, v6, :cond_0

    .line 675
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Certificate already parsed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 678
    :cond_0
    const/4 v4, 0x3

    new-array v2, v4, [Lsun/security/util/DerValue;

    .line 680
    .local v2, "seq":[Lsun/security/util/DerValue;
    iget-object v4, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v4

    aput-object v4, v2, v5

    .line 681
    iget-object v4, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v4

    aput-object v4, v2, v6

    .line 682
    iget-object v4, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v4

    aput-object v4, v2, v7

    .line 684
    iget-object v4, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->available()I

    move-result v4

    if-eqz v4, :cond_1

    .line 685
    new-instance v4, Lsun/security/x509/CertParseError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "signed overrun, bytes = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 686
    invoke-virtual {v6}, Lsun/security/util/DerInputStream;->available()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lsun/security/x509/CertParseError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 687
    :cond_1
    aget-object v4, v2, v5

    iget-byte v4, v4, Lsun/security/util/DerValue;->tag:B

    if-eq v4, v8, :cond_2

    .line 688
    new-instance v4, Lsun/security/x509/CertParseError;

    const-string/jumbo v5, "signed fields invalid"

    invoke-direct {v4, v5}, Lsun/security/x509/CertParseError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 690
    :cond_2
    aget-object v4, v2, v5

    invoke-virtual {v4}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lsun/security/x509/X509Cert;->rawCert:[B

    .line 693
    aget-object v4, v2, v6

    invoke-static {v4}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v4

    iput-object v4, p0, Lsun/security/x509/X509Cert;->issuerSigAlg:Lsun/security/x509/AlgorithmId;

    .line 694
    aget-object v4, v2, v7

    invoke-virtual {v4}, Lsun/security/util/DerValue;->getBitString()[B

    move-result-object v4

    iput-object v4, p0, Lsun/security/x509/X509Cert;->signature:[B

    .line 696
    aget-object v4, v2, v6

    iget-object v4, v4, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->available()I

    move-result v4

    if-eqz v4, :cond_3

    .line 699
    new-instance v4, Lsun/security/x509/CertParseError;

    const-string/jumbo v5, "algid field overrun"

    invoke-direct {v4, v5}, Lsun/security/x509/CertParseError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 702
    :cond_3
    aget-object v4, v2, v7

    iget-object v4, v4, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->available()I

    move-result v4

    if-eqz v4, :cond_4

    .line 703
    new-instance v4, Lsun/security/x509/CertParseError;

    const-string/jumbo v5, "signed fields overrun"

    invoke-direct {v4, v5}, Lsun/security/x509/CertParseError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 711
    :cond_4
    aget-object v4, v2, v5

    iget-object v1, v4, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 720
    .local v1, "in":Lsun/security/util/DerInputStream;
    iput v5, p0, Lsun/security/x509/X509Cert;->version:I

    .line 721
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    .line 722
    .local v3, "tmp":Lsun/security/util/DerValue;
    invoke-virtual {v3}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 723
    iget-object v4, v3, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getInteger()I

    move-result v4

    iput v4, p0, Lsun/security/x509/X509Cert;->version:I

    .line 724
    iget-object v4, v3, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->available()I

    move-result v4

    if-eqz v4, :cond_5

    .line 725
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "X.509 version, bad format"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 726
    :cond_5
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    .line 732
    :cond_6
    invoke-virtual {v3}, Lsun/security/util/DerValue;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, p0, Lsun/security/x509/X509Cert;->serialnum:Ljava/math/BigInteger;

    .line 740
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    .line 745
    invoke-static {v3}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v0

    .line 747
    .local v0, "algid":Lsun/security/x509/AlgorithmId;
    iget-object v4, p0, Lsun/security/x509/X509Cert;->issuerSigAlg:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v0, v4}, Lsun/security/x509/AlgorithmId;->equals(Lsun/security/x509/AlgorithmId;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 748
    new-instance v4, Lsun/security/x509/CertParseError;

    const-string/jumbo v5, "CA Algorithm mismatch!"

    invoke-direct {v4, v5}, Lsun/security/x509/CertParseError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 750
    :cond_7
    iput-object v0, p0, Lsun/security/x509/X509Cert;->algid:Lsun/security/x509/AlgorithmId;

    .line 756
    new-instance v4, Lsun/security/x509/X500Name;

    invoke-direct {v4, v1}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v4, p0, Lsun/security/x509/X509Cert;->issuer:Lsun/security/x509/X500Name;

    .line 761
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    .line 762
    iget-byte v4, v3, Lsun/security/util/DerValue;->tag:B

    if-eq v4, v8, :cond_8

    .line 763
    new-instance v4, Lsun/security/x509/CertParseError;

    const-string/jumbo v5, "corrupt validity field"

    invoke-direct {v4, v5}, Lsun/security/x509/CertParseError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 765
    :cond_8
    iget-object v4, v3, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    move-result-object v4

    iput-object v4, p0, Lsun/security/x509/X509Cert;->notbefore:Ljava/util/Date;

    .line 766
    iget-object v4, v3, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    move-result-object v4

    iput-object v4, p0, Lsun/security/x509/X509Cert;->notafter:Ljava/util/Date;

    .line 767
    iget-object v4, v3, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->available()I

    move-result v4

    if-eqz v4, :cond_9

    .line 768
    new-instance v4, Lsun/security/x509/CertParseError;

    const-string/jumbo v5, "excess validity data"

    invoke-direct {v4, v5}, Lsun/security/x509/CertParseError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 773
    :cond_9
    new-instance v4, Lsun/security/x509/X500Name;

    invoke-direct {v4, v1}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v4, p0, Lsun/security/x509/X509Cert;->subject:Lsun/security/x509/X500Name;

    .line 775
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    .line 776
    invoke-static {v3}, Lsun/security/x509/X509Key;->parse(Lsun/security/util/DerValue;)Ljava/security/PublicKey;

    move-result-object v4

    iput-object v4, p0, Lsun/security/x509/X509Cert;->pubkey:Ljava/security/PublicKey;

    .line 782
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v4

    if-eqz v4, :cond_a

    .line 795
    :cond_a
    iput-boolean v6, p0, Lsun/security/x509/X509Cert;->parsed:Z

    .line 796
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 901
    invoke-virtual {p0, p1}, Lsun/security/x509/X509Cert;->decode(Ljava/io/InputStream;)V

    return-void
.end method

.method private sign(Lsun/security/x509/X500Signer;[B)[B
    .locals 4
    .param p1, "issuer"    # Lsun/security/x509/X500Signer;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 863
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 864
    .local v0, "out":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 866
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    invoke-virtual {v1, p2}, Lsun/security/util/DerOutputStream;->write([B)V

    .line 867
    invoke-virtual {p1}, Lsun/security/x509/X500Signer;->getAlgorithmId()Lsun/security/x509/AlgorithmId;

    move-result-object v2

    invoke-virtual {v2, v1}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 873
    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {p1, p2, v2, v3}, Lsun/security/x509/X500Signer;->update([BII)V

    .line 874
    invoke-virtual {p1}, Lsun/security/x509/X500Signer;->sign()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/X509Cert;->signature:[B

    .line 875
    iget-object v2, p0, Lsun/security/x509/X509Cert;->signature:[B

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putBitString([B)V

    .line 880
    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 881
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 893
    invoke-virtual {p0, p1}, Lsun/security/x509/X509Cert;->encode(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    .line 245
    .local v0, "val":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X509Cert;->parse(Lsun/security/util/DerValue;)V

    .line 246
    invoke-virtual {v0}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/X509Cert;->signedCert:[B

    .line 247
    return-void
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p0}, Lsun/security/x509/X509Cert;->getSignedCert()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public encodeAndSign(Ljava/math/BigInteger;Lsun/security/x509/X500Signer;)[B
    .locals 2
    .param p1, "serial"    # Ljava/math/BigInteger;
    .param p2, "issuer"    # Lsun/security/x509/X500Signer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/X509Cert;->rawCert:[B

    .line 420
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/x509/X509Cert;->version:I

    .line 421
    iput-object p1, p0, Lsun/security/x509/X509Cert;->serialnum:Ljava/math/BigInteger;

    .line 422
    invoke-virtual {p2}, Lsun/security/x509/X500Signer;->getSigner()Lsun/security/x509/X500Name;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X509Cert;->issuer:Lsun/security/x509/X500Name;

    .line 423
    invoke-virtual {p2}, Lsun/security/x509/X500Signer;->getAlgorithmId()Lsun/security/x509/AlgorithmId;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X509Cert;->issuerSigAlg:Lsun/security/x509/AlgorithmId;

    .line 425
    iget-object v0, p0, Lsun/security/x509/X509Cert;->subject:Lsun/security/x509/X500Name;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/x509/X509Cert;->pubkey:Ljava/security/PublicKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/x509/X509Cert;->notbefore:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/x509/X509Cert;->notafter:Ljava/util/Date;

    if-nez v0, :cond_1

    .line 427
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "not enough cert parameters"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_1
    invoke-direct {p0}, Lsun/security/x509/X509Cert;->DERencode()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X509Cert;->rawCert:[B

    .line 434
    iget-object v0, p0, Lsun/security/x509/X509Cert;->rawCert:[B

    invoke-direct {p0, p2, v0}, Lsun/security/x509/X509Cert;->sign(Lsun/security/x509/X500Signer;[B)[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X509Cert;->signedCert:[B

    .line 435
    iget-object v0, p0, Lsun/security/x509/X509Cert;->signedCert:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 270
    instance-of v0, p1, Lsun/security/x509/X509Cert;

    if-eqz v0, :cond_0

    .line 271
    check-cast p1, Lsun/security/x509/X509Cert;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/security/x509/X509Cert;->equals(Lsun/security/x509/X509Cert;)Z

    move-result v0

    .line 273
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Lsun/security/x509/X509Cert;)Z
    .locals 5
    .param p1, "src"    # Lsun/security/x509/X509Cert;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 286
    if-ne p0, p1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v1

    .line 288
    :cond_1
    iget-object v3, p0, Lsun/security/x509/X509Cert;->signedCert:[B

    if-eqz v3, :cond_2

    iget-object v3, p1, Lsun/security/x509/X509Cert;->signedCert:[B

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    .line 289
    goto :goto_0

    .line 290
    :cond_3
    iget-object v3, p0, Lsun/security/x509/X509Cert;->signedCert:[B

    array-length v3, v3

    iget-object v4, p1, Lsun/security/x509/X509Cert;->signedCert:[B

    array-length v4, v4

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 291
    goto :goto_0

    .line 292
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lsun/security/x509/X509Cert;->signedCert:[B

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 293
    iget-object v3, p0, Lsun/security/x509/X509Cert;->signedCert:[B

    aget-byte v3, v3, v0

    iget-object v4, p1, Lsun/security/x509/X509Cert;->signedCert:[B

    aget-byte v4, v4, v0

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 294
    goto :goto_0

    .line 292
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    const-string/jumbo v0, "X.509"

    return-object v0
.end method

.method public getGuarantor()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 306
    invoke-virtual {p0}, Lsun/security/x509/X509Cert;->getIssuerName()Lsun/security/x509/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerAlgorithmId()Lsun/security/x509/AlgorithmId;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lsun/security/x509/X509Cert;->issuerSigAlg:Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public getIssuerName()Lsun/security/x509/X500Name;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lsun/security/x509/X509Cert;->issuer:Lsun/security/x509/X500Name;

    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 4

    .prologue
    .line 574
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lsun/security/x509/X509Cert;->notafter:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 4

    .prologue
    .line 567
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lsun/security/x509/X509Cert;->notbefore:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Lsun/security/x509/X509Cert;->getSubjectName()Lsun/security/x509/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lsun/security/x509/X509Cert;->pubkey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lsun/security/x509/X509Cert;->serialnum:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSignedCert()[B
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lsun/security/x509/X509Cert;->signedCert:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getSigner(Lsun/security/x509/AlgorithmId;Ljava/security/PrivateKey;)Lsun/security/x509/X500Signer;
    .locals 6
    .param p1, "algorithmId"    # Lsun/security/x509/AlgorithmId;
    .param p2, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 470
    instance-of v3, p2, Ljava/security/Key;

    if-eqz v3, :cond_0

    .line 471
    move-object v1, p2

    .line 472
    .local v1, "key":Ljava/security/Key;
    invoke-interface {v1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "algorithm":Ljava/lang/String;
    invoke-virtual {p1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 479
    .local v2, "sig":Ljava/security/Signature;
    iget-object v3, p0, Lsun/security/x509/X509Cert;->pubkey:Ljava/security/PublicKey;

    invoke-interface {v3}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 481
    new-instance v3, Ljava/security/InvalidKeyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Private key algorithm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " incompatible with certificate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lsun/security/x509/X509Cert;->pubkey:Ljava/security/PublicKey;

    .line 484
    invoke-interface {v5}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 474
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v1    # "key":Ljava/security/Key;
    .end local v2    # "sig":Ljava/security/Signature;
    :cond_0
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string/jumbo v4, "private key not a key!"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 486
    .restart local v0    # "algorithm":Ljava/lang/String;
    .restart local v1    # "key":Ljava/security/Key;
    .restart local v2    # "sig":Ljava/security/Signature;
    :cond_1
    invoke-virtual {v2, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 487
    new-instance v3, Lsun/security/x509/X500Signer;

    iget-object v4, p0, Lsun/security/x509/X509Cert;->subject:Lsun/security/x509/X500Name;

    invoke-direct {v3, v2, v4}, Lsun/security/x509/X500Signer;-><init>(Ljava/security/Signature;Lsun/security/x509/X500Name;)V

    return-object v3
.end method

.method public getSubjectName()Lsun/security/x509/X500Name;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lsun/security/x509/X509Cert;->subject:Lsun/security/x509/X500Name;

    return-object v0
.end method

.method public getVerifier(Ljava/lang/String;)Ljava/security/Signature;
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 516
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 517
    .local v0, "sig":Ljava/security/Signature;
    iget-object v1, p0, Lsun/security/x509/X509Cert;->pubkey:Ljava/security/PublicKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 518
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 602
    iget v0, p0, Lsun/security/x509/X509Cert;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 611
    const/4 v1, 0x0

    .line 613
    .local v1, "retval":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/x509/X509Cert;->signedCert:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 614
    iget-object v2, p0, Lsun/security/x509/X509Cert;->signedCert:[B

    aget-byte v2, v2, v0

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 613
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 615
    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 631
    iget-object v1, p0, Lsun/security/x509/X509Cert;->subject:Lsun/security/x509/X500Name;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/security/x509/X509Cert;->pubkey:Ljava/security/PublicKey;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/security/x509/X509Cert;->notbefore:Ljava/util/Date;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/security/x509/X509Cert;->notafter:Ljava/util/Date;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/security/x509/X509Cert;->issuer:Lsun/security/x509/X500Name;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/security/x509/X509Cert;->issuerSigAlg:Lsun/security/x509/AlgorithmId;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/security/x509/X509Cert;->serialnum:Ljava/math/BigInteger;

    if-nez v1, :cond_1

    .line 635
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "X.509 cert is incomplete"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 637
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  X.509v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/x509/X509Cert;->version:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " certificate,\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  Subject is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/X509Cert;->subject:Lsun/security/x509/X500Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  Key:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/X509Cert;->pubkey:Ljava/security/PublicKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  Validity <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/X509Cert;->notbefore:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> until <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/X509Cert;->notafter:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  Issuer is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/X509Cert;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  Issuer signature used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/X509Cert;->issuerSigAlg:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  Serial number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/X509Cert;->serialnum:Ljava/math/BigInteger;

    invoke-static {v2}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 1
    .param p1, "detailed"    # Z

    .prologue
    .line 657
    invoke-virtual {p0}, Lsun/security/x509/X509Cert;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 9
    .param p1, "issuerPublicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/x509/CertException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 342
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 344
    .local v2, "now":Ljava/util/Date;
    iget-object v4, p0, Lsun/security/x509/X509Cert;->notbefore:Ljava/util/Date;

    invoke-virtual {v2, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 345
    new-instance v4, Lsun/security/x509/CertException;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lsun/security/x509/CertException;-><init>(I)V

    throw v4

    .line 346
    :cond_0
    iget-object v4, p0, Lsun/security/x509/X509Cert;->notafter:Ljava/util/Date;

    invoke-virtual {v2, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 347
    new-instance v4, Lsun/security/x509/CertException;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lsun/security/x509/CertException;-><init>(I)V

    throw v4

    .line 348
    :cond_1
    iget-object v4, p0, Lsun/security/x509/X509Cert;->signedCert:[B

    if-nez v4, :cond_2

    .line 349
    new-instance v4, Lsun/security/x509/CertException;

    const-string/jumbo v5, "?? certificate is not signed yet ??"

    invoke-direct {v4, v8, v5}, Lsun/security/x509/CertException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 355
    :cond_2
    const/4 v0, 0x0

    .line 358
    .local v0, "algName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 360
    .local v3, "sigVerf":Ljava/security/Signature;
    :try_start_0
    iget-object v4, p0, Lsun/security/x509/X509Cert;->issuerSigAlg:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v4}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .line 362
    invoke-virtual {v3, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 363
    iget-object v4, p0, Lsun/security/x509/X509Cert;->rawCert:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lsun/security/x509/X509Cert;->rawCert:[B

    array-length v6, v6

    invoke-virtual {v3, v4, v5, v6}, Ljava/security/Signature;->update([BII)V

    .line 365
    iget-object v4, p0, Lsun/security/x509/X509Cert;->signature:[B

    invoke-virtual {v3, v4}, Ljava/security/Signature;->verify([B)Z

    move-result v4

    if-nez v4, :cond_3

    .line 366
    new-instance v4, Lsun/security/x509/CertException;

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Signature ... by <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lsun/security/x509/X509Cert;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "> for <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lsun/security/x509/X509Cert;->subject:Lsun/security/x509/X500Name;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lsun/security/x509/CertException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2

    .line 372
    :catch_0
    move-exception v1

    .line 373
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Lsun/security/x509/CertException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported signature algorithm ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v8, v5}, Lsun/security/x509/CertException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 376
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 378
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v4, Lsun/security/x509/CertException;

    const/16 v5, 0x9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Algorithm ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") rejected public key"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lsun/security/x509/CertException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 381
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v1

    .line 382
    .local v1, "e":Ljava/security/SignatureException;
    new-instance v4, Lsun/security/x509/CertException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Signature by <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lsun/security/x509/X509Cert;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "> for <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lsun/security/x509/X509Cert;->subject:Lsun/security/x509/X500Name;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v8, v5}, Lsun/security/x509/CertException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 385
    .end local v1    # "e":Ljava/security/SignatureException;
    :cond_3
    return-void
.end method
