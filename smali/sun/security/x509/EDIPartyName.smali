.class public Lsun/security/x509/EDIPartyName;
.super Ljava/lang/Object;
.source "EDIPartyName.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;


# static fields
.field private static final TAG_ASSIGNER:B = 0x0t

.field private static final TAG_PARTYNAME:B = 0x1t


# instance fields
.field private assigner:Ljava/lang/String;

.field private myhash:I

.field private party:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "partyName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    .line 76
    iput-object p1, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "assignerName"    # Ljava/lang/String;
    .param p2, "partyName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    .line 66
    iput-object p1, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 8
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v5, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    .line 55
    iput-object v5, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    .line 57
    const/4 v5, -0x1

    iput v5, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    .line 86
    new-instance v1, Lsun/security/util/DerInputStream;

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v5

    invoke-direct {v1, v5}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 87
    .local v1, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v1, v7}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v4

    .line 89
    .local v4, "seq":[Lsun/security/util/DerValue;
    array-length v2, v4

    .line 90
    .local v2, "len":I
    if-lt v2, v6, :cond_0

    if-le v2, v7, :cond_1

    .line 91
    :cond_0
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Invalid encoding of EDIPartyName"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 93
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_6

    .line 94
    aget-object v3, v4, v0

    .line 95
    .local v3, "opt":Lsun/security/util/DerValue;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 96
    invoke-virtual {v3}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 97
    iget-object v5, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 98
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Duplicate nameAssigner found in EDIPartyName"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 100
    :cond_2
    iget-object v5, v3, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v5}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    .line 101
    invoke-virtual {v3}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    .line 103
    :cond_3
    invoke-virtual {v3, v6}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 104
    invoke-virtual {v3}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v5

    if-nez v5, :cond_5

    .line 105
    iget-object v5, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 106
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Duplicate partyName found in EDIPartyName"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 108
    :cond_4
    iget-object v5, v3, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v5}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    .line 109
    invoke-virtual {v3}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    .line 93
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    .end local v3    # "opt":Lsun/security/util/DerValue;
    :cond_6
    return-void
.end method


# virtual methods
.method public constrains(Lsun/security/x509/GeneralNameInterface;)I
    .locals 3
    .param p1, "inputName"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 238
    if-nez p1, :cond_0

    .line 239
    const/4 v0, -0x1

    .line 245
    .local v0, "constraintType":I
    :goto_0
    return v0

    .line 240
    .end local v0    # "constraintType":I
    :cond_0
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 241
    const/4 v0, -0x1

    .restart local v0    # "constraintType":I
    goto :goto_0

    .line 243
    .end local v0    # "constraintType":I
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Narrowing, widening, and matching of names not supported for EDIPartyName"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 6
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, -0x80

    const/4 v4, 0x0

    .line 128
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 129
    .local v0, "tagged":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 131
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 132
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 134
    .local v2, "tmp2":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    .line 135
    invoke-static {v5, v4, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v0, v3, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 138
    .end local v2    # "tmp2":Lsun/security/util/DerOutputStream;
    :cond_0
    iget-object v3, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 139
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Cannot have null partyName"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 142
    :cond_1
    iget-object v3, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lsun/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    .line 143
    const/4 v3, 0x1

    invoke-static {v5, v4, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v0, v3, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 146
    const/16 v3, 0x30

    invoke-virtual {p1, v3, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 147
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 175
    instance-of v2, p1, Lsun/security/x509/EDIPartyName;

    if-nez v2, :cond_0

    move v2, v3

    .line 193
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v2

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    move-object v2, p1

    .line 177
    check-cast v2, Lsun/security/x509/EDIPartyName;

    iget-object v0, v2, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    .line 178
    .local v0, "otherAssigner":Ljava/lang/String;
    iget-object v2, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 179
    if-eqz v0, :cond_2

    move v2, v3

    .line 180
    goto :goto_0

    .line 182
    :cond_1
    iget-object v2, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    .line 183
    goto :goto_0

    .line 185
    :cond_2
    check-cast p1, Lsun/security/x509/EDIPartyName;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    .line 186
    .local v1, "otherParty":Ljava/lang/String;
    iget-object v2, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 187
    if-eqz v1, :cond_4

    move v2, v3

    .line 188
    goto :goto_0

    .line 190
    :cond_3
    iget-object v2, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    .line 191
    goto :goto_0

    .line 193
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getAssignerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    return-object v0
.end method

.method public getPartyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x5

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 202
    iget v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x25

    iput v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    .line 204
    iget-object v0, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 205
    iget v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    .line 208
    :cond_0
    iget v0, p0, Lsun/security/x509/EDIPartyName;->myhash:I

    return v0
.end method

.method public subtreeDepth()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 257
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "subtreeDepth() not supported for EDIPartyName"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "EDIPartyName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  partyName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/EDIPartyName;->party:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  nameAssigner = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lsun/security/x509/EDIPartyName;->assigner:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
