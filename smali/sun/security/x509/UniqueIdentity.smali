.class public Lsun/security/x509/UniqueIdentity;
.super Ljava/lang/Object;
.source "UniqueIdentity.java"


# instance fields
.field private id:Lsun/security/util/BitArray;


# direct methods
.method public constructor <init>(Lsun/security/util/BitArray;)V
    .locals 0
    .param p1, "id"    # Lsun/security/util/BitArray;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lsun/security/x509/UniqueIdentity;->id:Lsun/security/util/BitArray;

    .line 51
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 2
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 70
    .local v0, "derVal":Lsun/security/util/DerValue;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsun/security/util/DerValue;->getUnalignedBitString(Z)Lsun/security/util/BitArray;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/UniqueIdentity;->id:Lsun/security/util/BitArray;

    .line 71
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lsun/security/util/DerValue;->getUnalignedBitString(Z)Lsun/security/util/BitArray;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/UniqueIdentity;->id:Lsun/security/util/BitArray;

    .line 82
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "id"    # [B

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lsun/security/util/BitArray;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1, p1}, Lsun/security/util/BitArray;-><init>(I[B)V

    iput-object v0, p0, Lsun/security/x509/UniqueIdentity;->id:Lsun/security/util/BitArray;

    .line 60
    return-void
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;B)V
    .locals 4
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .param p2, "tag"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v2, p0, Lsun/security/x509/UniqueIdentity;->id:Lsun/security/util/BitArray;

    invoke-virtual {v2}, Lsun/security/util/BitArray;->toByteArray()[B

    move-result-object v0

    .line 100
    .local v0, "bytes":[B
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lsun/security/x509/UniqueIdentity;->id:Lsun/security/util/BitArray;

    invoke-virtual {v3}, Lsun/security/util/BitArray;->length()I

    move-result v3

    sub-int v1, v2, v3

    .line 102
    .local v1, "excessBits":I
    invoke-virtual {p1, p2}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 103
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Lsun/security/util/DerOutputStream;->putLength(I)V

    .line 105
    invoke-virtual {p1, v1}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 106
    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->write([B)V

    .line 107
    return-void
.end method

.method public getId()[Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lsun/security/x509/UniqueIdentity;->id:Lsun/security/util/BitArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/security/x509/UniqueIdentity;->id:Lsun/security/util/BitArray;

    invoke-virtual {v0}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UniqueIdentity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/UniqueIdentity;->id:Lsun/security/util/BitArray;

    invoke-virtual {v1}, Lsun/security/util/BitArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
