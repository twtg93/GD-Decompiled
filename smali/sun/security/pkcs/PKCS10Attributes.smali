.class public Lsun/security/pkcs/PKCS10Attributes;
.super Ljava/lang/Object;
.source "PKCS10Attributes.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# instance fields
.field private map:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/pkcs/PKCS10Attribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lsun/security/pkcs/PKCS10Attributes;->map:Ljava/util/Hashtable;

    .line 60
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 5
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3, v4}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v3, p0, Lsun/security/pkcs/PKCS10Attributes;->map:Ljava/util/Hashtable;

    .line 81
    const/4 v3, 0x1

    invoke-virtual {p1, v4, v3}, Lsun/security/util/DerInputStream;->getSet(IZ)[Lsun/security/util/DerValue;

    move-result-object v1

    .line 83
    .local v1, "attrs":[Lsun/security/util/DerValue;
    if-nez v1, :cond_0

    .line 84
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Illegal encoding of attributes"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 85
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 86
    new-instance v0, Lsun/security/pkcs/PKCS10Attribute;

    aget-object v3, v1, v2

    invoke-direct {v0, v3}, Lsun/security/pkcs/PKCS10Attribute;-><init>(Lsun/security/util/DerValue;)V

    .line 87
    .local v0, "attr":Lsun/security/pkcs/PKCS10Attribute;
    iget-object v3, p0, Lsun/security/pkcs/PKCS10Attributes;->map:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lsun/security/pkcs/PKCS10Attribute;->getAttributeId()Lsun/security/util/ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "attr":Lsun/security/pkcs/PKCS10Attribute;
    :cond_1
    return-void
.end method

.method public constructor <init>([Lsun/security/pkcs/PKCS10Attribute;)V
    .locals 4
    .param p1, "attrs"    # [Lsun/security/pkcs/PKCS10Attribute;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v1, Ljava/util/Hashtable;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v1, p0, Lsun/security/pkcs/PKCS10Attributes;->map:Ljava/util/Hashtable;

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 69
    iget-object v1, p0, Lsun/security/pkcs/PKCS10Attributes;->map:Ljava/util/Hashtable;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lsun/security/pkcs/PKCS10Attribute;->getAttributeId()Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public deleteAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v0, p0, Lsun/security/pkcs/PKCS10Attributes;->map:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void
.end method

.method public derEncode(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v3, p0, Lsun/security/pkcs/PKCS10Attributes;->map:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    .line 111
    .local v0, "allAttrs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/pkcs/PKCS10Attribute;>;"
    iget-object v3, p0, Lsun/security/pkcs/PKCS10Attributes;->map:Ljava/util/Hashtable;

    .line 112
    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    new-array v3, v3, [Lsun/security/pkcs/PKCS10Attribute;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lsun/security/pkcs/PKCS10Attribute;

    .line 114
    .local v2, "attribs":[Lsun/security/pkcs/PKCS10Attribute;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 115
    .local v1, "attrOut":Lsun/security/util/DerOutputStream;
    const/16 v3, -0x80

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 118
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 119
    return-void
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lsun/security/pkcs/PKCS10Attributes;->derEncode(Ljava/io/OutputStream;)V

    .line 99
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 171
    if-ne p0, p1, :cond_1

    .line 197
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v7

    .line 173
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v9, p1, Lsun/security/pkcs/PKCS10Attributes;

    if-nez v9, :cond_2

    move v7, v8

    .line 174
    goto :goto_0

    .line 176
    :cond_2
    check-cast p1, Lsun/security/pkcs/PKCS10Attributes;

    .line 177
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Lsun/security/pkcs/PKCS10Attributes;->getAttributes()Ljava/util/Collection;

    move-result-object v5

    .line 179
    .local v5, "othersAttribs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/pkcs/PKCS10Attribute;>;"
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v9

    new-array v9, v9, [Lsun/security/pkcs/PKCS10Attribute;

    invoke-interface {v5, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/security/pkcs/PKCS10Attribute;

    .line 180
    .local v0, "attrs":[Lsun/security/pkcs/PKCS10Attribute;
    array-length v3, v0

    .line 181
    .local v3, "len":I
    iget-object v9, p0, Lsun/security/pkcs/PKCS10Attributes;->map:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->size()I

    move-result v9

    if-eq v3, v9, :cond_3

    move v7, v8

    .line 182
    goto :goto_0

    .line 184
    :cond_3
    const/4 v2, 0x0

    .line 185
    .local v2, "key":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 186
    aget-object v4, v0, v1

    .line 187
    .local v4, "otherAttr":Lsun/security/pkcs/PKCS10Attribute;
    invoke-virtual {v4}, Lsun/security/pkcs/PKCS10Attribute;->getAttributeId()Lsun/security/util/ObjectIdentifier;

    move-result-object v9

    invoke-virtual {v9}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    if-nez v2, :cond_4

    move v7, v8

    .line 190
    goto :goto_0

    .line 191
    :cond_4
    iget-object v9, p0, Lsun/security/pkcs/PKCS10Attributes;->map:Ljava/util/Hashtable;

    invoke-virtual {v9, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/security/pkcs/PKCS10Attribute;

    .line 192
    .local v6, "thisAttr":Lsun/security/pkcs/PKCS10Attribute;
    if-nez v6, :cond_5

    move v7, v8

    .line 193
    goto :goto_0

    .line 194
    :cond_5
    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    move v7, v8

    .line 195
    goto :goto_0

    .line 185
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v0, p0, Lsun/security/pkcs/PKCS10Attributes;->map:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/pkcs/PKCS10Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lsun/security/pkcs/PKCS10Attributes;->map:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getElements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lsun/security/pkcs/PKCS10Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lsun/security/pkcs/PKCS10Attributes;->map:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lsun/security/pkcs/PKCS10Attributes;->map:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 125
    instance-of v0, p2, Lsun/security/pkcs/PKCS10Attribute;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lsun/security/pkcs/PKCS10Attributes;->map:Ljava/util/Hashtable;

    check-cast p2, Lsun/security/pkcs/PKCS10Attribute;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsun/security/pkcs/PKCS10Attributes;->map:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/pkcs/PKCS10Attributes;->map:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "s":Ljava/lang/String;
    return-object v0
.end method
