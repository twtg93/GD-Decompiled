.class public Lsun/security/x509/OtherName;
.super Ljava/lang/Object;
.source "OtherName.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;


# static fields
.field private static final TAG_VALUE:B


# instance fields
.field private gni:Lsun/security/x509/GeneralNameInterface;

.field private myhash:I

.field private name:Ljava/lang/String;

.field private nameValue:[B

.field private oid:Lsun/security/util/ObjectIdentifier;


# direct methods
.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 4
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v2, p0, Lsun/security/x509/OtherName;->nameValue:[B

    .line 57
    iput-object v2, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    .line 61
    const/4 v2, -0x1

    iput v2, p0, Lsun/security/x509/OtherName;->myhash:I

    .line 92
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v0

    .line 94
    .local v0, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    .line 95
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 96
    .local v1, "val":Lsun/security/util/DerValue;
    invoke-virtual {v1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/OtherName;->nameValue:[B

    .line 97
    iget-object v2, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    iget-object v3, p0, Lsun/security/x509/OtherName;->nameValue:[B

    invoke-direct {p0, v2, v3}, Lsun/security/x509/OtherName;->getGNI(Lsun/security/util/ObjectIdentifier;[B)Lsun/security/x509/GeneralNameInterface;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    .line 98
    iget-object v2, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/OtherName;->name:Ljava/lang/String;

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unrecognized ObjectIdentifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/OtherName;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;[B)V
    .locals 2
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lsun/security/x509/OtherName;->nameValue:[B

    .line 57
    iput-object v0, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/x509/OtherName;->myhash:I

    .line 72
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    iput-object p1, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    .line 76
    iput-object p2, p0, Lsun/security/x509/OtherName;->nameValue:[B

    .line 77
    invoke-direct {p0, p1, p2}, Lsun/security/x509/OtherName;->getGNI(Lsun/security/util/ObjectIdentifier;[B)Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    .line 78
    iget-object v0, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/OtherName;->name:Ljava/lang/String;

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unrecognized ObjectIdentifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/OtherName;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private getGNI(Lsun/security/util/ObjectIdentifier;[B)Lsun/security/x509/GeneralNameInterface;
    .locals 9
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "nameValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    :try_start_0
    invoke-static {p1}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v2

    .line 127
    .local v2, "extClass":Ljava/lang/Class;
    if-nez v2, :cond_0

    .line 128
    const/4 v3, 0x0

    .line 136
    :goto_0
    return-object v3

    .line 130
    :cond_0
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Object;

    aput-object v7, v4, v6

    .line 131
    .local v4, "params":[Ljava/lang/Class;
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 133
    .local v0, "cons":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    .line 135
    .local v5, "passed":[Ljava/lang/Object;
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/GeneralNameInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .local v3, "gni":Lsun/security/x509/GeneralNameInterface;
    goto :goto_0

    .line 137
    .end local v0    # "cons":Ljava/lang/reflect/Constructor;
    .end local v2    # "extClass":Ljava/lang/Class;
    .end local v3    # "gni":Lsun/security/x509/GeneralNameInterface;
    .end local v4    # "params":[Ljava/lang/Class;
    .end local v5    # "passed":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Instantiation error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    check-cast v6, Ljava/io/IOException;

    throw v6
.end method


# virtual methods
.method public constrains(Lsun/security/x509/GeneralNameInterface;)I
    .locals 3
    .param p1, "inputName"    # Lsun/security/x509/GeneralNameInterface;

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 250
    const/4 v0, -0x1

    .line 257
    .local v0, "constraintType":I
    :goto_0
    return v0

    .line 251
    .end local v0    # "constraintType":I
    :cond_0
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    const/4 v0, -0x1

    .restart local v0    # "constraintType":I
    goto :goto_0

    .line 254
    .end local v0    # "constraintType":I
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Narrowing, widening, and matching are not supported for OtherName."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 4
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v1, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lsun/security/x509/OtherName;->gni:Lsun/security/x509/GeneralNameInterface;

    invoke-interface {v1, p1}, Lsun/security/x509/GeneralNameInterface;->encode(Lsun/security/util/DerOutputStream;)V

    .line 167
    :goto_0
    return-void

    .line 162
    :cond_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 163
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 164
    const/16 v1, -0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v1

    iget-object v2, p0, Lsun/security/x509/OtherName;->nameValue:[B

    invoke-virtual {v0, v1, v2}, Lsun/security/util/DerOutputStream;->write(B[B)V

    .line 165
    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 175
    if-ne p0, p1, :cond_1

    move v4, v3

    .line 203
    :cond_0
    :goto_0
    return v4

    .line 178
    :cond_1
    instance-of v5, p1, Lsun/security/x509/OtherName;

    if-eqz v5, :cond_0

    move-object v2, p1

    .line 181
    check-cast v2, Lsun/security/x509/OtherName;

    .line 182
    .local v2, "otherOther":Lsun/security/x509/OtherName;
    iget-object v5, v2, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    iget-object v6, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5, v6}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 185
    const/4 v1, 0x0

    .line 187
    .local v1, "otherGNI":Lsun/security/x509/GeneralNameInterface;
    :try_start_0
    iget-object v5, v2, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    iget-object v6, v2, Lsun/security/x509/OtherName;->nameValue:[B

    invoke-direct {p0, v5, v6}, Lsun/security/x509/OtherName;->getGNI(Lsun/security/util/ObjectIdentifier;[B)Lsun/security/x509/GeneralNameInterface;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 193
    if-eqz v1, :cond_3

    .line 195
    :try_start_1
    invoke-interface {v1, p0}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-nez v5, :cond_2

    .local v3, "result":Z
    :goto_1
    move v4, v3

    .line 203
    goto :goto_0

    .line 188
    .end local v3    # "result":Z
    :catch_0
    move-exception v0

    .line 189
    .local v0, "ioe":Ljava/io/IOException;
    goto :goto_0

    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_2
    move v3, v4

    .line 195
    goto :goto_1

    .line 196
    :catch_1
    move-exception v0

    .line 197
    .local v0, "ioe":Ljava/lang/UnsupportedOperationException;
    const/4 v3, 0x0

    .line 198
    .restart local v3    # "result":Z
    goto :goto_1

    .line 200
    .end local v0    # "ioe":Ljava/lang/UnsupportedOperationException;
    .end local v3    # "result":Z
    :cond_3
    iget-object v4, p0, Lsun/security/x509/OtherName;->nameValue:[B

    iget-object v5, v2, Lsun/security/x509/OtherName;->nameValue:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    .restart local v3    # "result":Z
    goto :goto_1
.end method

.method public getNameValue()[B
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lsun/security/x509/OtherName;->nameValue:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getOID()Lsun/security/util/ObjectIdentifier;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 212
    iget v1, p0, Lsun/security/x509/OtherName;->myhash:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 213
    iget-object v1, p0, Lsun/security/x509/OtherName;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x25

    iput v1, p0, Lsun/security/x509/OtherName;->myhash:I

    .line 214
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/security/x509/OtherName;->nameValue:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 215
    iget v1, p0, Lsun/security/x509/OtherName;->myhash:I

    mul-int/lit8 v1, v1, 0x25

    iget-object v2, p0, Lsun/security/x509/OtherName;->nameValue:[B

    aget-byte v2, v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lsun/security/x509/OtherName;->myhash:I

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    .end local v0    # "i":I
    :cond_0
    iget v1, p0, Lsun/security/x509/OtherName;->myhash:I

    return v1
.end method

.method public subtreeDepth()I
    .locals 2

    .prologue
    .line 268
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "subtreeDepth() not supported for generic OtherName"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Other-Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/OtherName;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
