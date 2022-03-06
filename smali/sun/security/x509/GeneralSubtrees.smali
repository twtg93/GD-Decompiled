.class public Lsun/security/x509/GeneralSubtrees;
.super Ljava/lang/Object;
.source "GeneralSubtrees.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final NAME_DIFF_TYPE:I = -0x1

.field private static final NAME_MATCH:I = 0x0

.field private static final NAME_NARROWS:I = 0x1

.field private static final NAME_SAME_TYPE:I = 0x3

.field private static final NAME_WIDENS:I = 0x2


# instance fields
.field private final trees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/GeneralSubtree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    .line 67
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 4
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Lsun/security/x509/GeneralSubtrees;-><init>()V

    .line 80
    iget-byte v2, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    .line 81
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding of GeneralSubtrees."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_0
    :goto_0
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 85
    .local v0, "opt":Lsun/security/util/DerValue;
    new-instance v1, Lsun/security/x509/GeneralSubtree;

    invoke-direct {v1, v0}, Lsun/security/x509/GeneralSubtree;-><init>(Lsun/security/util/DerValue;)V

    .line 86
    .local v1, "tree":Lsun/security/x509/GeneralSubtree;
    invoke-virtual {p0, v1}, Lsun/security/x509/GeneralSubtrees;->add(Lsun/security/x509/GeneralSubtree;)V

    goto :goto_0

    .line 88
    .end local v0    # "opt":Lsun/security/util/DerValue;
    .end local v1    # "tree":Lsun/security/x509/GeneralSubtree;
    :cond_1
    return-void
.end method

.method private constructor <init>(Lsun/security/x509/GeneralSubtrees;)V
    .locals 2
    .param p1, "source"    # Lsun/security/x509/GeneralSubtrees;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    .line 71
    return-void
.end method

.method private createWidestSubtree(Lsun/security/x509/GeneralNameInterface;)Lsun/security/x509/GeneralSubtree;
    .locals 6
    .param p1, "name"    # Lsun/security/x509/GeneralNameInterface;

    .prologue
    .line 250
    :try_start_0
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 283
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unsupported GeneralNameInterface type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 284
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local p1    # "name":Lsun/security/x509/GeneralNameInterface;
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 254
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p1    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_0
    :try_start_1
    check-cast p1, Lsun/security/x509/OtherName;

    .end local p1    # "name":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {p1}, Lsun/security/x509/OtherName;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    .line 255
    .local v2, "otherOID":Lsun/security/util/ObjectIdentifier;
    new-instance v1, Lsun/security/x509/GeneralName;

    new-instance v3, Lsun/security/x509/OtherName;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lsun/security/x509/OtherName;-><init>(Lsun/security/util/ObjectIdentifier;[B)V

    invoke-direct {v1, v3}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    .line 286
    .end local v2    # "otherOID":Lsun/security/util/ObjectIdentifier;
    .local v1, "newName":Lsun/security/x509/GeneralName;
    :goto_0
    new-instance v3, Lsun/security/x509/GeneralSubtree;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct {v3, v1, v4, v5}, Lsun/security/x509/GeneralSubtree;-><init>(Lsun/security/x509/GeneralName;II)V

    return-object v3

    .line 258
    .end local v1    # "newName":Lsun/security/x509/GeneralName;
    .restart local p1    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_1
    new-instance v1, Lsun/security/x509/GeneralName;

    new-instance v3, Lsun/security/x509/RFC822Name;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Lsun/security/x509/RFC822Name;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    .line 259
    .restart local v1    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_0

    .line 261
    .end local v1    # "newName":Lsun/security/x509/GeneralName;
    :pswitch_2
    new-instance v1, Lsun/security/x509/GeneralName;

    new-instance v3, Lsun/security/x509/DNSName;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Lsun/security/x509/DNSName;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    .line 262
    .restart local v1    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_0

    .line 264
    .end local v1    # "newName":Lsun/security/x509/GeneralName;
    :pswitch_3
    new-instance v1, Lsun/security/x509/GeneralName;

    new-instance v4, Lsun/security/x509/X400Address;

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v3}, Lsun/security/x509/X400Address;-><init>([B)V

    invoke-direct {v1, v4}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    .line 265
    .restart local v1    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_0

    .line 267
    .end local v1    # "newName":Lsun/security/x509/GeneralName;
    :pswitch_4
    new-instance v1, Lsun/security/x509/GeneralName;

    new-instance v3, Lsun/security/x509/X500Name;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    .line 268
    .restart local v1    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_0

    .line 270
    .end local v1    # "newName":Lsun/security/x509/GeneralName;
    :pswitch_5
    new-instance v1, Lsun/security/x509/GeneralName;

    new-instance v3, Lsun/security/x509/EDIPartyName;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Lsun/security/x509/EDIPartyName;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    .line 271
    .restart local v1    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_0

    .line 273
    .end local v1    # "newName":Lsun/security/x509/GeneralName;
    :pswitch_6
    new-instance v1, Lsun/security/x509/GeneralName;

    new-instance v3, Lsun/security/x509/URIName;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Lsun/security/x509/URIName;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    .line 274
    .restart local v1    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_0

    .line 276
    .end local v1    # "newName":Lsun/security/x509/GeneralName;
    :pswitch_7
    new-instance v1, Lsun/security/x509/GeneralName;

    new-instance v4, Lsun/security/x509/IPAddressName;

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v3}, Lsun/security/x509/IPAddressName;-><init>([B)V

    invoke-direct {v1, v4}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    .line 277
    .restart local v1    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_0

    .line 279
    .end local v1    # "newName":Lsun/security/x509/GeneralName;
    :pswitch_8
    new-instance v1, Lsun/security/x509/GeneralName;

    new-instance v4, Lsun/security/x509/OIDName;

    new-instance v5, Lsun/security/util/ObjectIdentifier;

    const/4 v3, 0x0

    check-cast v3, [I

    invoke-direct {v5, v3}, Lsun/security/util/ObjectIdentifier;-><init>([I)V

    invoke-direct {v4, v5}, Lsun/security/x509/OIDName;-><init>(Lsun/security/util/ObjectIdentifier;)V

    invoke-direct {v1, v4}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 281
    .restart local v1    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;
    .locals 1
    .param p1, "ndx"    # I

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(Lsun/security/x509/GeneralSubtree;)Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    return-object v0
.end method

.method private static getGeneralNameInterface(Lsun/security/x509/GeneralSubtree;)Lsun/security/x509/GeneralNameInterface;
    .locals 2
    .param p0, "gs"    # Lsun/security/x509/GeneralSubtree;

    .prologue
    .line 183
    invoke-virtual {p0}, Lsun/security/x509/GeneralSubtree;->getName()Lsun/security/x509/GeneralName;

    move-result-object v0

    .line 184
    .local v0, "gn":Lsun/security/x509/GeneralName;
    invoke-virtual {v0}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v1

    .line 185
    .local v1, "gni":Lsun/security/x509/GeneralNameInterface;
    return-object v1
.end method

.method private minimize()V
    .locals 6

    .prologue
    .line 198
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 199
    invoke-direct {p0, v1}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    .line 200
    .local v0, "current":Lsun/security/x509/GeneralNameInterface;
    const/4 v3, 0x0

    .line 203
    .local v3, "remove1":Z
    add-int/lit8 v2, v1, 0x1

    .local v2, "j":I
    :goto_1
    invoke-virtual {p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 204
    invoke-direct {p0, v2}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v4

    .line 205
    .local v4, "subsequent":Lsun/security/x509/GeneralNameInterface;
    invoke-interface {v0, v4}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 231
    .end local v4    # "subsequent":Lsun/security/x509/GeneralNameInterface;
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    .line 232
    invoke-virtual {p0, v1}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    .line 233
    add-int/lit8 v1, v1, -0x1

    .line 198
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .restart local v4    # "subsequent":Lsun/security/x509/GeneralNameInterface;
    :pswitch_0
    const/4 v3, 0x1

    .line 212
    goto :goto_2

    .line 216
    :pswitch_1
    invoke-virtual {p0, v2}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    .line 217
    add-int/lit8 v2, v2, -0x1

    .line 203
    :pswitch_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 222
    :pswitch_3
    const/4 v3, 0x1

    .line 223
    goto :goto_2

    .line 237
    .end local v0    # "current":Lsun/security/x509/GeneralNameInterface;
    .end local v2    # "j":I
    .end local v3    # "remove1":Z
    .end local v4    # "subsequent":Lsun/security/x509/GeneralNameInterface;
    :cond_2
    return-void

    .line 205
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public add(Lsun/security/x509/GeneralSubtree;)V
    .locals 1
    .param p1, "tree"    # Lsun/security/x509/GeneralSubtree;

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 102
    :cond_0
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lsun/security/x509/GeneralSubtrees;

    invoke-direct {v0, p0}, Lsun/security/x509/GeneralSubtrees;-><init>(Lsun/security/x509/GeneralSubtrees;)V

    return-object v0
.end method

.method public contains(Lsun/security/x509/GeneralSubtree;)Z
    .locals 1
    .param p1, "tree"    # Lsun/security/x509/GeneralSubtree;

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 109
    :cond_0
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
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
    .line 142
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 144
    .local v2, "seq":Lsun/security/util/DerOutputStream;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 145
    invoke-virtual {p0, v0}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v3

    invoke-virtual {v3, v2}, Lsun/security/x509/GeneralSubtree;->encode(Lsun/security/util/DerOutputStream;)V

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    const/16 v3, 0x30

    invoke-virtual {p1, v3, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 148
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 158
    if-ne p0, p1, :cond_0

    .line 159
    const/4 v1, 0x1

    .line 165
    :goto_0
    return v1

    .line 161
    :cond_0
    instance-of v1, p1, Lsun/security/x509/GeneralSubtrees;

    if-nez v1, :cond_1

    .line 162
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 164
    check-cast v0, Lsun/security/x509/GeneralSubtrees;

    .line 165
    .local v0, "other":Lsun/security/x509/GeneralSubtrees;
    iget-object v1, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    iget-object v2, v0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public get(I)Lsun/security/x509/GeneralSubtree;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/GeneralSubtree;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public intersect(Lsun/security/x509/GeneralSubtrees;)Lsun/security/x509/GeneralSubtrees;
    .locals 20
    .param p1, "other"    # Lsun/security/x509/GeneralSubtrees;

    .prologue
    .line 326
    if-nez p1, :cond_0

    .line 327
    new-instance v18, Ljava/lang/NullPointerException;

    const-string/jumbo v19, "other GeneralSubtrees must not be null"

    invoke-direct/range {v18 .. v19}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 330
    :cond_0
    new-instance v9, Lsun/security/x509/GeneralSubtrees;

    invoke-direct {v9}, Lsun/security/x509/GeneralSubtrees;-><init>()V

    .line 331
    .local v9, "newThis":Lsun/security/x509/GeneralSubtrees;
    const/4 v8, 0x0

    .line 335
    .local v8, "newExcluded":Lsun/security/x509/GeneralSubtrees;
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v18

    if-nez v18, :cond_1

    .line 336
    invoke-virtual/range {p0 .. p1}, Lsun/security/x509/GeneralSubtrees;->union(Lsun/security/x509/GeneralSubtrees;)V

    .line 337
    const/16 v18, 0x0

    .line 474
    :goto_0
    return-object v18

    .line 343
    :cond_1
    invoke-direct/range {p0 .. p0}, Lsun/security/x509/GeneralSubtrees;->minimize()V

    .line 344
    invoke-direct/range {p1 .. p1}, Lsun/security/x509/GeneralSubtrees;->minimize()V

    .line 354
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v4, v0, :cond_a

    .line 355
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v16

    .line 356
    .local v16, "thisEntry":Lsun/security/x509/GeneralNameInterface;
    const/4 v13, 0x0

    .line 363
    .local v13, "removeThisEntry":Z
    const/4 v14, 0x0

    .line 364
    .local v14, "sameType":Z
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_2

    .line 365
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v12

    .line 367
    .local v12, "otherEntryGS":Lsun/security/x509/GeneralSubtree;
    invoke-static {v12}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(Lsun/security/x509/GeneralSubtree;)Lsun/security/x509/GeneralNameInterface;

    move-result-object v11

    .line 368
    .local v11, "otherEntry":Lsun/security/x509/GeneralNameInterface;
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 364
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 370
    :pswitch_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    .line 371
    add-int/lit8 v4, v4, -0x1

    .line 372
    invoke-virtual {v9, v12}, Lsun/security/x509/GeneralSubtrees;->add(Lsun/security/x509/GeneralSubtree;)V

    .line 373
    const/4 v14, 0x0

    .line 393
    .end local v11    # "otherEntry":Lsun/security/x509/GeneralNameInterface;
    .end local v12    # "otherEntryGS":Lsun/security/x509/GeneralSubtree;
    :cond_2
    :goto_4
    if-eqz v14, :cond_9

    .line 399
    const/4 v5, 0x0

    .line 400
    .local v5, "intersection":Z
    const/4 v6, 0x0

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_6

    .line 401
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v15

    .line 403
    .local v15, "thisAltEntry":Lsun/security/x509/GeneralNameInterface;
    invoke-interface {v15}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v18

    invoke-interface/range {v16 .. v16}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 404
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_4

    .line 406
    move-object/from16 v0, p1

    invoke-direct {v0, v7}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v10

    .line 409
    .local v10, "othAltEntry":Lsun/security/x509/GeneralNameInterface;
    invoke-interface {v15, v10}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v2

    .line 410
    .local v2, "constraintType":I
    if-eqz v2, :cond_3

    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v2, v0, :cond_3

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_5

    .line 413
    :cond_3
    const/4 v5, 0x1

    .line 400
    .end local v2    # "constraintType":I
    .end local v7    # "k":I
    .end local v10    # "othAltEntry":Lsun/security/x509/GeneralNameInterface;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 376
    .end local v5    # "intersection":Z
    .end local v15    # "thisAltEntry":Lsun/security/x509/GeneralNameInterface;
    .restart local v11    # "otherEntry":Lsun/security/x509/GeneralNameInterface;
    .restart local v12    # "otherEntryGS":Lsun/security/x509/GeneralSubtree;
    :pswitch_1
    const/4 v14, 0x1

    .line 377
    goto :goto_3

    .line 380
    :pswitch_2
    const/4 v14, 0x0

    .line 381
    goto :goto_4

    .line 404
    .end local v11    # "otherEntry":Lsun/security/x509/GeneralNameInterface;
    .end local v12    # "otherEntryGS":Lsun/security/x509/GeneralSubtree;
    .restart local v2    # "constraintType":I
    .restart local v5    # "intersection":Z
    .restart local v7    # "k":I
    .restart local v10    # "othAltEntry":Lsun/security/x509/GeneralNameInterface;
    .restart local v15    # "thisAltEntry":Lsun/security/x509/GeneralNameInterface;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 419
    .end local v2    # "constraintType":I
    .end local v7    # "k":I
    .end local v10    # "othAltEntry":Lsun/security/x509/GeneralNameInterface;
    .end local v15    # "thisAltEntry":Lsun/security/x509/GeneralNameInterface;
    :cond_6
    if-nez v5, :cond_8

    .line 420
    if-nez v8, :cond_7

    .line 421
    new-instance v8, Lsun/security/x509/GeneralSubtrees;

    .end local v8    # "newExcluded":Lsun/security/x509/GeneralSubtrees;
    invoke-direct {v8}, Lsun/security/x509/GeneralSubtrees;-><init>()V

    .line 424
    .restart local v8    # "newExcluded":Lsun/security/x509/GeneralSubtrees;
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lsun/security/x509/GeneralSubtrees;->createWidestSubtree(Lsun/security/x509/GeneralNameInterface;)Lsun/security/x509/GeneralSubtree;

    move-result-object v17

    .line 425
    .local v17, "widestSubtree":Lsun/security/x509/GeneralSubtree;
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lsun/security/x509/GeneralSubtrees;->contains(Lsun/security/x509/GeneralSubtree;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 426
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lsun/security/x509/GeneralSubtrees;->add(Lsun/security/x509/GeneralSubtree;)V

    .line 431
    .end local v17    # "widestSubtree":Lsun/security/x509/GeneralSubtree;
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    .line 432
    add-int/lit8 v4, v4, -0x1

    .line 354
    .end local v5    # "intersection":Z
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 437
    .end local v6    # "j":I
    .end local v13    # "removeThisEntry":Z
    .end local v14    # "sameType":Z
    .end local v16    # "thisEntry":Lsun/security/x509/GeneralNameInterface;
    :cond_a
    invoke-virtual {v9}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v18

    if-lez v18, :cond_b

    .line 438
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lsun/security/x509/GeneralSubtrees;->union(Lsun/security/x509/GeneralSubtrees;)V

    .line 443
    :cond_b
    const/4 v4, 0x0

    :goto_7
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v4, v0, :cond_e

    .line 444
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v12

    .line 445
    .restart local v12    # "otherEntryGS":Lsun/security/x509/GeneralSubtree;
    invoke-static {v12}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(Lsun/security/x509/GeneralSubtree;)Lsun/security/x509/GeneralNameInterface;

    move-result-object v11

    .line 446
    .restart local v11    # "otherEntry":Lsun/security/x509/GeneralNameInterface;
    const/4 v3, 0x0

    .line 447
    .local v3, "diffType":Z
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_c

    .line 448
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v16

    .line 449
    .restart local v16    # "thisEntry":Lsun/security/x509/GeneralNameInterface;
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v18

    packed-switch v18, :pswitch_data_1

    .line 447
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 451
    :pswitch_3
    const/4 v3, 0x1

    .line 454
    goto :goto_9

    .line 459
    :pswitch_4
    const/4 v3, 0x0

    .line 468
    .end local v16    # "thisEntry":Lsun/security/x509/GeneralNameInterface;
    :cond_c
    if-eqz v3, :cond_d

    .line 469
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lsun/security/x509/GeneralSubtrees;->add(Lsun/security/x509/GeneralSubtree;)V

    .line 443
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .end local v3    # "diffType":Z
    .end local v6    # "j":I
    .end local v11    # "otherEntry":Lsun/security/x509/GeneralNameInterface;
    .end local v12    # "otherEntryGS":Lsun/security/x509/GeneralSubtree;
    :cond_e
    move-object/from16 v18, v8

    .line 474
    goto/16 :goto_0

    .line 368
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 449
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lsun/security/x509/GeneralSubtree;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reduce(Lsun/security/x509/GeneralSubtrees;)V
    .locals 6
    .param p1, "excluded"    # Lsun/security/x509/GeneralSubtrees;

    .prologue
    .line 501
    if-nez p1, :cond_1

    .line 528
    :cond_0
    return-void

    .line 504
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 505
    invoke-direct {p1, v1}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    .line 506
    .local v0, "excludedName":Lsun/security/x509/GeneralNameInterface;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 507
    invoke-direct {p0, v2}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    move-result-object v4

    .line 508
    .local v4, "permitted":Lsun/security/x509/GeneralNameInterface;
    invoke-interface {v0, v4}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 506
    :goto_2
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 512
    :pswitch_1
    invoke-virtual {p0, v2}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    .line 513
    add-int/lit8 v2, v2, -0x1

    .line 514
    goto :goto_2

    .line 517
    :pswitch_2
    invoke-virtual {p0, v2}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    .line 518
    add-int/lit8 v2, v2, -0x1

    .line 519
    goto :goto_2

    .line 504
    .end local v4    # "permitted":Lsun/security/x509/GeneralNameInterface;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 508
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public remove(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "   GeneralSubtrees:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "s":Ljava/lang/String;
    return-object v0
.end method

.method public trees()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/GeneralSubtree;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    return-object v0
.end method

.method public union(Lsun/security/x509/GeneralSubtrees;)V
    .locals 3
    .param p1, "other"    # Lsun/security/x509/GeneralSubtrees;

    .prologue
    .line 483
    if-eqz p1, :cond_1

    .line 484
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 485
    invoke-virtual {p1, v0}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v2

    invoke-virtual {p0, v2}, Lsun/security/x509/GeneralSubtrees;->add(Lsun/security/x509/GeneralSubtree;)V

    .line 484
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 488
    :cond_0
    invoke-direct {p0}, Lsun/security/x509/GeneralSubtrees;->minimize()V

    .line 490
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    return-void
.end method
