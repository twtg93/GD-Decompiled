.class public final Lsun/security/x509/AlgIdDSA;
.super Lsun/security/x509/AlgorithmId;
.source "AlgIdDSA.java"

# interfaces
.implements Ljava/security/interfaces/DSAParams;


# static fields
.field private static final serialVersionUID:J = 0x2fb34f0818292a2eL


# instance fields
.field private g:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private q:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lsun/security/x509/AlgorithmId;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 3
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "q"    # Ljava/math/BigInteger;
    .param p3, "g"    # Ljava/math/BigInteger;

    .prologue
    .line 142
    sget-object v1, Lsun/security/x509/AlgIdDSA;->DSA_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    .line 144
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_3

    .line 145
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 146
    :cond_1
    new-instance v1, Ljava/security/ProviderException;

    const-string/jumbo v2, "Invalid parameters for DSS/DSA Algorithm ID"

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_2
    :try_start_0
    iput-object p1, p0, Lsun/security/x509/AlgIdDSA;->p:Ljava/math/BigInteger;

    .line 150
    iput-object p2, p0, Lsun/security/x509/AlgIdDSA;->q:Ljava/math/BigInteger;

    .line 151
    iput-object p3, p0, Lsun/security/x509/AlgIdDSA;->g:Ljava/math/BigInteger;

    .line 152
    invoke-direct {p0}, Lsun/security/x509/AlgIdDSA;->initializeParams()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_3
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/ProviderException;

    const-string/jumbo v2, "Construct DSS/DSA Algorithm ID"

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>(Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "encodedAlg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-virtual {v0}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    return-void
.end method

.method public constructor <init>([B[B[B)V
    .locals 4
    .param p1, "p"    # [B
    .param p2, "q"    # [B
    .param p3, "g"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 126
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v3, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v3, p3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {p0, v0, v1, v2}, Lsun/security/x509/AlgIdDSA;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 129
    return-void
.end method

.method private initializeParams()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 178
    .local v0, "out":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/AlgIdDSA;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    .line 179
    iget-object v1, p0, Lsun/security/x509/AlgIdDSA;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    .line 180
    iget-object v1, p0, Lsun/security/x509/AlgIdDSA;->g:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    .line 181
    new-instance v1, Lsun/security/util/DerValue;

    const/16 v2, 0x30

    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lsun/security/util/DerValue;-><init>(B[B)V

    iput-object v1, p0, Lsun/security/x509/AlgIdDSA;->params:Lsun/security/util/DerValue;

    .line 182
    return-void
.end method


# virtual methods
.method protected decodeParams()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lsun/security/x509/AlgIdDSA;->params:Lsun/security/util/DerValue;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "DSA alg params are null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    iget-object v0, p0, Lsun/security/x509/AlgIdDSA;->params:Lsun/security/util/DerValue;

    iget-byte v0, v0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    .line 194
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "DSA alg parsing error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_1
    iget-object v0, p0, Lsun/security/x509/AlgIdDSA;->params:Lsun/security/util/DerValue;

    iget-object v0, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->reset()V

    .line 198
    iget-object v0, p0, Lsun/security/x509/AlgIdDSA;->params:Lsun/security/util/DerValue;

    iget-object v0, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/AlgIdDSA;->p:Ljava/math/BigInteger;

    .line 199
    iget-object v0, p0, Lsun/security/x509/AlgIdDSA;->params:Lsun/security/util/DerValue;

    iget-object v0, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/AlgIdDSA;->q:Ljava/math/BigInteger;

    .line 200
    iget-object v0, p0, Lsun/security/x509/AlgIdDSA;->params:Lsun/security/util/DerValue;

    iget-object v0, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/AlgIdDSA;->g:Ljava/math/BigInteger;

    .line 202
    iget-object v0, p0, Lsun/security/x509/AlgIdDSA;->params:Lsun/security/util/DerValue;

    iget-object v0, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AlgIdDSA params, extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/AlgIdDSA;->params:Lsun/security/util/DerValue;

    iget-object v2, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 204
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_2
    return-void
.end method

.method public getG()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lsun/security/x509/AlgIdDSA;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-string/jumbo v0, "DSA"

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lsun/security/x509/AlgIdDSA;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lsun/security/x509/AlgIdDSA;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method protected paramsToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lsun/security/x509/AlgIdDSA;->params:Lsun/security/util/DerValue;

    if-nez v0, :cond_0

    .line 220
    const-string/jumbo v0, " null\n"

    .line 222
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\n    p:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/AlgIdDSA;->p:Ljava/math/BigInteger;

    .line 223
    invoke-static {v1}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n    q:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/AlgIdDSA;->q:Ljava/math/BigInteger;

    .line 224
    invoke-static {v1}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n    g:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/AlgIdDSA;->g:Ljava/math/BigInteger;

    .line 225
    invoke-static {v1}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lsun/security/x509/AlgIdDSA;->paramsToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
