.class final Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
.super Ljava/lang/Object;
.source "X509CRLImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/x509/X509CRLImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "X509IssuerSerial"
.end annotation


# instance fields
.field volatile hashcode:I

.field final issuer:Ljavax/security/auth/x500/X500Principal;

.field final serial:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 1252
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V

    .line 1253
    return-void
.end method

.method constructor <init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "issuer"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "serial"    # Ljava/math/BigInteger;

    .prologue
    .line 1243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1235
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->hashcode:I

    .line 1244
    iput-object p1, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 1245
    iput-object p2, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->serial:Ljava/math/BigInteger;

    .line 1246
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1281
    if-ne p1, p0, :cond_1

    .line 1294
    :cond_0
    :goto_0
    return v1

    .line 1285
    :cond_1
    instance-of v3, p1, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    if-nez v3, :cond_2

    move v1, v2

    .line 1286
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1289
    check-cast v0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    .line 1290
    .local v0, "other":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    iget-object v3, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->serial:Ljava/math/BigInteger;

    invoke-virtual {v0}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->getSerial()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 1291
    invoke-virtual {v0}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    .line 1294
    goto :goto_0
.end method

.method getIssuer()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .prologue
    .line 1261
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->issuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method getSerial()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 1270
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->serial:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1303
    iget v1, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->hashcode:I

    if-nez v1, :cond_0

    .line 1304
    const/16 v0, 0x11

    .line 1305
    .local v0, "result":I
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x275

    .line 1306
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->serial:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1307
    iput v0, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->hashcode:I

    .line 1309
    .end local v0    # "result":I
    :cond_0
    iget v1, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->hashcode:I

    return v1
.end method
