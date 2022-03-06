.class public Lsun/security/x509/GeneralName;
.super Ljava/lang/Object;
.source "GeneralName.java"


# instance fields
.field private name:Lsun/security/x509/GeneralNameInterface;


# direct methods
.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "encName"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/util/DerValue;Z)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;Z)V
    .locals 4
    .param p1, "encName"    # Lsun/security/util/DerValue;
    .param p2, "nameConstraint"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x30

    const/16 v2, 0x16

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    .line 88
    iget-byte v1, p1, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v1, v1, 0x1f

    int-to-byte v1, v1

    int-to-short v0, v1

    .line 92
    .local v0, "tag":S
    packed-switch v0, :pswitch_data_0

    .line 166
    :pswitch_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unrecognized GeneralName tag, ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :pswitch_1
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p1, v3}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 96
    new-instance v1, Lsun/security/x509/OtherName;

    invoke-direct {v1, p1}, Lsun/security/x509/OtherName;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    .line 169
    :goto_0
    return-void

    .line 98
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid encoding of Other-Name"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :pswitch_2
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    invoke-virtual {p1, v2}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 105
    new-instance v1, Lsun/security/x509/RFC822Name;

    invoke-direct {v1, p1}, Lsun/security/x509/RFC822Name;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    goto :goto_0

    .line 107
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid encoding of RFC822 name"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :pswitch_3
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 113
    invoke-virtual {p1, v2}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 114
    new-instance v1, Lsun/security/x509/DNSName;

    invoke-direct {v1, p1}, Lsun/security/x509/DNSName;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    goto :goto_0

    .line 116
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid encoding of DNS name"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :pswitch_4
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 122
    invoke-virtual {p1, v2}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 123
    if-eqz p2, :cond_3

    invoke-static {p1}, Lsun/security/x509/URIName;->nameConstraint(Lsun/security/util/DerValue;)Lsun/security/x509/URIName;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    goto :goto_0

    :cond_3
    new-instance v1, Lsun/security/x509/URIName;

    invoke-direct {v1, p1}, Lsun/security/x509/URIName;-><init>(Lsun/security/util/DerValue;)V

    goto :goto_1

    .line 126
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid encoding of URI"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :pswitch_5
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 132
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 133
    new-instance v1, Lsun/security/x509/IPAddressName;

    invoke-direct {v1, p1}, Lsun/security/x509/IPAddressName;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    goto/16 :goto_0

    .line 135
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid encoding of IP address"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :pswitch_6
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-nez v1, :cond_6

    .line 141
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 142
    new-instance v1, Lsun/security/x509/OIDName;

    invoke-direct {v1, p1}, Lsun/security/x509/OIDName;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    goto/16 :goto_0

    .line 144
    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid encoding of OID name"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :pswitch_7
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 150
    new-instance v1, Lsun/security/x509/X500Name;

    invoke-virtual {p1}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    goto/16 :goto_0

    .line 152
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid encoding of Directory name"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :pswitch_8
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 158
    invoke-virtual {p1, v3}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 159
    new-instance v1, Lsun/security/x509/EDIPartyName;

    invoke-direct {v1, p1}, Lsun/security/x509/EDIPartyName;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    goto/16 :goto_0

    .line 161
    :cond_8
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid encoding of EDI name"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public constructor <init>(Lsun/security/x509/GeneralNameInterface;)V
    .locals 2
    .param p1, "name"    # Lsun/security/x509/GeneralNameInterface;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "GeneralName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iput-object p1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    .line 69
    return-void
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 5
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/16 v4, -0x80

    .line 229
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 230
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    invoke-interface {v2, v1}, Lsun/security/x509/GeneralNameInterface;->encode(Lsun/security/util/DerOutputStream;)V

    .line 231
    iget-object v2, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    invoke-interface {v2}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v0

    .line 232
    .local v0, "nameType":I
    if-eqz v0, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 237
    :cond_0
    int-to-byte v2, v0

    invoke-static {v4, v3, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {p1, v2, v1}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 249
    :goto_0
    return-void

    .line 239
    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 242
    int-to-byte v2, v0

    invoke-static {v4, v3, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {p1, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    goto :goto_0

    .line 246
    :cond_2
    const/4 v2, 0x0

    int-to-byte v3, v0

    invoke-static {v4, v2, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {p1, v2, v1}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 200
    if-ne p0, p1, :cond_1

    .line 209
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 203
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v4, p1, Lsun/security/x509/GeneralName;

    if-nez v4, :cond_2

    move v2, v3

    .line 204
    goto :goto_0

    .line 205
    :cond_2
    check-cast p1, Lsun/security/x509/GeneralName;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    .line 207
    .local v1, "otherGNI":Lsun/security/x509/GeneralNameInterface;
    :try_start_0
    iget-object v4, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    invoke-interface {v4, v1}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .local v0, "ioe":Ljava/lang/UnsupportedOperationException;
    move v2, v3

    .line 209
    goto :goto_0
.end method

.method public getName()Lsun/security/x509/GeneralNameInterface;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    invoke-interface {v0}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
