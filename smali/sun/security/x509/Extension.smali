.class public Lsun/security/x509/Extension;
.super Ljava/lang/Object;
.source "Extension.java"


# static fields
.field private static final hashMagic:I = 0x1f


# instance fields
.field protected critical:Z

.field protected extensionId:Lsun/security/util/ObjectIdentifier;

.field protected extensionValue:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/Extension;->critical:Z

    .line 68
    iput-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    .line 73
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 5
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v2, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 67
    iput-boolean v4, p0, Lsun/security/x509/Extension;->critical:Z

    .line 68
    iput-object v2, p0, Lsun/security/x509/Extension;->extensionValue:[B

    .line 80
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v0

    .line 83
    .local v0, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 86
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 87
    .local v1, "val":Lsun/security/util/DerValue;
    iget-byte v2, v1, Lsun/security/util/DerValue;->tag:B

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 88
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lsun/security/x509/Extension;->critical:Z

    .line 91
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/Extension;->extensionValue:[B

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    iput-boolean v4, p0, Lsun/security/x509/Extension;->critical:Z

    .line 95
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/Extension;->extensionValue:[B

    goto :goto_0
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;Z[B)V
    .locals 3
    .param p1, "extensionId"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "critical"    # Z
    .param p3, "extensionValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v2, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 67
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    .line 68
    iput-object v2, p0, Lsun/security/x509/Extension;->extensionValue:[B

    .line 109
    iput-object p1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 110
    iput-boolean p2, p0, Lsun/security/x509/Extension;->critical:Z

    .line 113
    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p3}, Lsun/security/util/DerValue;-><init>([B)V

    .line 114
    .local v0, "inDerVal":Lsun/security/util/DerValue;
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    .line 115
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/Extension;)V
    .locals 2
    .param p1, "ext"    # Lsun/security/x509/Extension;

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/Extension;->critical:Z

    .line 68
    iput-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    .line 124
    iget-object v0, p1, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 125
    iget-boolean v0, p1, Lsun/security/x509/Extension;->critical:Z

    iput-boolean v0, p0, Lsun/security/x509/Extension;->critical:Z

    .line 126
    iget-object v0, p1, Lsun/security/x509/Extension;->extensionValue:[B

    iput-object v0, p0, Lsun/security/x509/Extension;->extensionValue:[B

    .line 127
    return-void
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 3
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    if-nez v1, :cond_0

    .line 138
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Null OID to encode for the extension!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_0
    iget-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    if-nez v1, :cond_1

    .line 140
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "No value to encode for the extension!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_1
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 144
    .local v0, "dos":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 145
    iget-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    if-eqz v1, :cond_2

    .line 146
    iget-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    .line 147
    :cond_2
    iget-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 149
    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 150
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 224
    if-ne p0, p1, :cond_1

    .line 225
    const/4 v1, 0x1

    .line 233
    :cond_0
    :goto_0
    return v1

    .line 226
    :cond_1
    instance-of v2, p1, Lsun/security/x509/Extension;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 228
    check-cast v0, Lsun/security/x509/Extension;

    .line 229
    .local v0, "otherExt":Lsun/security/x509/Extension;
    iget-boolean v2, p0, Lsun/security/x509/Extension;->critical:Z

    iget-boolean v3, v0, Lsun/security/x509/Extension;->critical:Z

    if-ne v2, v3, :cond_0

    .line 231
    iget-object v2, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    iget-object v3, v0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v2, v3}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    iget-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    iget-object v2, v0, Lsun/security/x509/Extension;->extensionValue:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method public getExtensionId()Lsun/security/util/ObjectIdentifier;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public getExtensionValue()[B
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lsun/security/x509/Extension;->extensionValue:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "h":I
    iget-object v4, p0, Lsun/security/x509/Extension;->extensionValue:[B

    if-eqz v4, :cond_0

    .line 201
    iget-object v3, p0, Lsun/security/x509/Extension;->extensionValue:[B

    .line 202
    .local v3, "val":[B
    array-length v1, v3

    .local v1, "len":I
    move v2, v1

    .line 203
    .end local v1    # "len":I
    .local v2, "len":I
    :goto_0
    if-lez v2, :cond_0

    .line 204
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "len":I
    .restart local v1    # "len":I
    aget-byte v4, v3, v1

    mul-int/2addr v4, v2

    add-int/2addr v0, v4

    move v2, v1

    .end local v1    # "len":I
    .restart local v2    # "len":I
    goto :goto_0

    .line 206
    .end local v2    # "len":I
    .end local v3    # "val":[B
    :cond_0
    mul-int/lit8 v4, v0, 0x1f

    iget-object v5, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->hashCode()I

    move-result v5

    add-int v0, v4, v5

    .line 207
    mul-int/lit8 v5, v0, 0x1f

    iget-boolean v4, p0, Lsun/security/x509/Extension;->critical:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x4cf

    :goto_1
    add-int v0, v5, v4

    .line 208
    return v0

    .line 207
    :cond_1
    const/16 v4, 0x4d5

    goto :goto_1
.end method

.method public isCritical()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lsun/security/x509/Extension;->critical:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ObjectId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "s":Ljava/lang/String;
    iget-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    if-eqz v1, :cond_0

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Criticality=true\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    .line 185
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Criticality=false\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
