.class public Lsun/security/x509/NameConstraintsExtension;
.super Lsun/security/x509/Extension;
.source "NameConstraintsExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/security/x509/Extension;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final EXCLUDED_SUBTREES:Ljava/lang/String; = "excluded_subtrees"

.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.NameConstraints"

.field public static final NAME:Ljava/lang/String; = "NameConstraints"

.field public static final PERMITTED_SUBTREES:Ljava/lang/String; = "permitted_subtrees"

.field private static final TAG_EXCLUDED:B = 0x1t

.field private static final TAG_PERMITTED:B


# instance fields
.field private excluded:Lsun/security/x509/GeneralSubtrees;

.field private hasMax:Z

.field private hasMin:Z

.field private minMaxValid:Z

.field private permitted:Lsun/security/x509/GeneralSubtrees;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 5
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x30

    const/4 v3, 0x0

    .line 171
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 84
    iput-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    .line 85
    iput-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    .line 89
    iput-boolean v3, p0, Lsun/security/x509/NameConstraintsExtension;->minMaxValid:Z

    .line 172
    sget-object v2, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 173
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lsun/security/x509/NameConstraintsExtension;->critical:Z

    .line 175
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [B

    iput-object p2, p0, Lsun/security/x509/NameConstraintsExtension;->extensionValue:[B

    .line 176
    new-instance v1, Lsun/security/util/DerValue;

    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->extensionValue:[B

    invoke-direct {v1, v2}, Lsun/security/util/DerValue;-><init>([B)V

    .line 177
    .local v1, "val":Lsun/security/util/DerValue;
    iget-byte v2, v1, Lsun/security/util/DerValue;->tag:B

    if-eq v2, v4, :cond_0

    .line 178
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding for NameConstraintsExtension."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    :cond_0
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-nez v2, :cond_2

    .line 214
    :goto_0
    return-void

    .line 198
    .local v0, "opt":Lsun/security/util/DerValue;
    :cond_1
    invoke-virtual {v0, v4}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 199
    new-instance v2, Lsun/security/x509/GeneralSubtrees;

    invoke-direct {v2, v0}, Lsun/security/x509/GeneralSubtrees;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    .line 190
    .end local v0    # "opt":Lsun/security/util/DerValue;
    :cond_2
    :goto_1
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_6

    .line 191
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 193
    .restart local v0    # "opt":Lsun/security/util/DerValue;
    invoke-virtual {v0, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 194
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    if-eqz v2, :cond_1

    .line 195
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Duplicate permitted GeneralSubtrees in NameConstraintsExtension."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 202
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 203
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    if-eqz v2, :cond_4

    .line 204
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Duplicate excluded GeneralSubtrees in NameConstraintsExtension."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 207
    :cond_4
    invoke-virtual {v0, v4}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 208
    new-instance v2, Lsun/security/x509/GeneralSubtrees;

    invoke-direct {v2, v0}, Lsun/security/x509/GeneralSubtrees;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    goto :goto_1

    .line 210
    :cond_5
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding of NameConstraintsExtension."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 213
    .end local v0    # "opt":Lsun/security/util/DerValue;
    :cond_6
    iput-boolean v3, p0, Lsun/security/x509/NameConstraintsExtension;->minMaxValid:Z

    goto :goto_0
.end method

.method public constructor <init>(Lsun/security/x509/GeneralSubtrees;Lsun/security/x509/GeneralSubtrees;)V
    .locals 1
    .param p1, "permitted"    # Lsun/security/x509/GeneralSubtrees;
    .param p2, "excluded"    # Lsun/security/x509/GeneralSubtrees;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 84
    iput-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    .line 85
    iput-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/NameConstraintsExtension;->minMaxValid:Z

    .line 154
    iput-object p1, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    .line 155
    iput-object p2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    .line 157
    sget-object v0, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/NameConstraintsExtension;->critical:Z

    .line 159
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->encodeThis()V

    .line 160
    return-void
.end method

.method private calcMinMax()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 93
    iput-boolean v2, p0, Lsun/security/x509/NameConstraintsExtension;->hasMin:Z

    .line 94
    iput-boolean v2, p0, Lsun/security/x509/NameConstraintsExtension;->hasMax:Z

    .line 95
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    if-eqz v2, :cond_2

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v2}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 97
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v2, v0}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v1

    .line 98
    .local v1, "subtree":Lsun/security/x509/GeneralSubtree;
    invoke-virtual {v1}, Lsun/security/x509/GeneralSubtree;->getMinimum()I

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    iput-boolean v3, p0, Lsun/security/x509/NameConstraintsExtension;->hasMin:Z

    .line 100
    :cond_0
    invoke-virtual {v1}, Lsun/security/x509/GeneralSubtree;->getMaximum()I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 101
    iput-boolean v3, p0, Lsun/security/x509/NameConstraintsExtension;->hasMax:Z

    .line 96
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "i":I
    .end local v1    # "subtree":Lsun/security/x509/GeneralSubtree;
    :cond_2
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    if-eqz v2, :cond_5

    .line 106
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v2}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 107
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v2, v0}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v1

    .line 108
    .restart local v1    # "subtree":Lsun/security/x509/GeneralSubtree;
    invoke-virtual {v1}, Lsun/security/x509/GeneralSubtree;->getMinimum()I

    move-result v2

    if-eqz v2, :cond_3

    .line 109
    iput-boolean v3, p0, Lsun/security/x509/NameConstraintsExtension;->hasMin:Z

    .line 110
    :cond_3
    invoke-virtual {v1}, Lsun/security/x509/GeneralSubtree;->getMaximum()I

    move-result v2

    if-eq v2, v4, :cond_4

    .line 111
    iput-boolean v3, p0, Lsun/security/x509/NameConstraintsExtension;->hasMax:Z

    .line 106
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 114
    .end local v0    # "i":I
    .end local v1    # "subtree":Lsun/security/x509/GeneralSubtree;
    :cond_5
    iput-boolean v3, p0, Lsun/security/x509/NameConstraintsExtension;->minMaxValid:Z

    .line 115
    return-void
.end method

.method private encodeThis()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v5, -0x80

    const/4 v4, 0x1

    .line 119
    iput-boolean v6, p0, Lsun/security/x509/NameConstraintsExtension;->minMaxValid:Z

    .line 120
    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    if-nez v3, :cond_0

    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    if-nez v3, :cond_0

    .line 121
    const/4 v3, 0x0

    iput-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->extensionValue:[B

    .line 141
    :goto_0
    return-void

    .line 124
    :cond_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 126
    .local v0, "seq":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 127
    .local v1, "tagged":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    if-eqz v3, :cond_1

    .line 128
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 129
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v3, v2}, Lsun/security/x509/GeneralSubtrees;->encode(Lsun/security/util/DerOutputStream;)V

    .line 130
    invoke-static {v5, v4, v6}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 133
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_1
    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    if-eqz v3, :cond_2

    .line 134
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 135
    .restart local v2    # "tmp":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v3, v2}, Lsun/security/x509/GeneralSubtrees;->encode(Lsun/security/util/DerOutputStream;)V

    .line 136
    invoke-static {v5, v4, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 139
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_2
    const/16 v3, 0x30

    invoke-virtual {v0, v3, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 140
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->extensionValue:[B

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 604
    .line 605
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/NameConstraintsExtension;

    .line 607
    .local v1, "newNCE":Lsun/security/x509/NameConstraintsExtension;
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    if-eqz v2, :cond_0

    .line 608
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v2}, Lsun/security/x509/GeneralSubtrees;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/GeneralSubtrees;

    iput-object v2, v1, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    .line 610
    :cond_0
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    if-eqz v2, :cond_1

    .line 611
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v2}, Lsun/security/x509/GeneralSubtrees;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/GeneralSubtrees;

    iput-object v2, v1, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :cond_1
    return-object v1

    .line 614
    .end local v1    # "newNCE":Lsun/security/x509/NameConstraintsExtension;
    :catch_0
    move-exception v0

    .line 615
    .local v0, "cnsee":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "CloneNotSupportedException while cloning NameConstraintsException. This should never happen."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 286
    const-string/jumbo v0, "permitted_subtrees"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iput-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    .line 294
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->encodeThis()V

    .line 295
    return-void

    .line 288
    :cond_0
    const-string/jumbo v0, "excluded_subtrees"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iput-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    goto :goto_0

    .line 291
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:NameConstraintsExtension."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 236
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->extensionValue:[B

    if-nez v1, :cond_0

    .line 237
    sget-object v1, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 238
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/security/x509/NameConstraintsExtension;->critical:Z

    .line 239
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->encodeThis()V

    .line 241
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 242
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 243
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    const-string/jumbo v0, "permitted_subtrees"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    .line 275
    :goto_0
    return-object v0

    .line 274
    :cond_0
    const-string/jumbo v0, "excluded_subtrees"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    goto :goto_0

    .line 277
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:NameConstraintsExtension."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getElements()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 303
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "permitted_subtrees"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 304
    const-string/jumbo v1, "excluded_subtrees"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 306
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    const-string/jumbo v0, "NameConstraints"

    return-object v0
.end method

.method public merge(Lsun/security/x509/NameConstraintsExtension;)V
    .locals 4
    .param p1, "newConstraints"    # Lsun/security/x509/NameConstraintsExtension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 341
    if-nez p1, :cond_0

    .line 403
    :goto_0
    return-void

    .line 352
    :cond_0
    const-string/jumbo v2, "excluded_subtrees"

    .line 353
    invoke-virtual {p1, v2}, Lsun/security/x509/NameConstraintsExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/GeneralSubtrees;

    .line 354
    .local v0, "newExcluded":Lsun/security/x509/GeneralSubtrees;
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    if-nez v2, :cond_5

    .line 355
    if-eqz v0, :cond_4

    .line 356
    invoke-virtual {v0}, Lsun/security/x509/GeneralSubtrees;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/GeneralSubtrees;

    :goto_1
    iput-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    .line 370
    :cond_1
    :goto_2
    const-string/jumbo v2, "permitted_subtrees"

    .line 371
    invoke-virtual {p1, v2}, Lsun/security/x509/NameConstraintsExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/GeneralSubtrees;

    .line 372
    .local v1, "newPermitted":Lsun/security/x509/GeneralSubtrees;
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    if-nez v2, :cond_7

    .line 373
    if-eqz v1, :cond_6

    .line 374
    invoke-virtual {v1}, Lsun/security/x509/GeneralSubtrees;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/GeneralSubtrees;

    :goto_3
    iput-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    .line 395
    :cond_2
    :goto_4
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    if-eqz v2, :cond_3

    .line 396
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v2, v3}, Lsun/security/x509/GeneralSubtrees;->reduce(Lsun/security/x509/GeneralSubtrees;)V

    .line 401
    :cond_3
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->encodeThis()V

    goto :goto_0

    .end local v1    # "newPermitted":Lsun/security/x509/GeneralSubtrees;
    :cond_4
    move-object v2, v3

    .line 356
    goto :goto_1

    .line 358
    :cond_5
    if-eqz v0, :cond_1

    .line 360
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v2, v0}, Lsun/security/x509/GeneralSubtrees;->union(Lsun/security/x509/GeneralSubtrees;)V

    goto :goto_2

    .restart local v1    # "newPermitted":Lsun/security/x509/GeneralSubtrees;
    :cond_6
    move-object v2, v3

    .line 374
    goto :goto_3

    .line 376
    :cond_7
    if-eqz v1, :cond_2

    .line 378
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v2, v1}, Lsun/security/x509/GeneralSubtrees;->intersect(Lsun/security/x509/GeneralSubtrees;)Lsun/security/x509/GeneralSubtrees;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_2

    .line 382
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    if-eqz v2, :cond_8

    .line 383
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v2, v0}, Lsun/security/x509/GeneralSubtrees;->union(Lsun/security/x509/GeneralSubtrees;)V

    goto :goto_4

    .line 385
    :cond_8
    invoke-virtual {v0}, Lsun/security/x509/GeneralSubtrees;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/GeneralSubtrees;

    iput-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    goto :goto_4
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    const-string/jumbo v0, "permitted_subtrees"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    instance-of v0, p2, Lsun/security/x509/GeneralSubtrees;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type GeneralSubtrees."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    check-cast p2, Lsun/security/x509/GeneralSubtrees;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    .line 265
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->encodeThis()V

    .line 266
    return-void

    .line 255
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v0, "excluded_subtrees"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 256
    instance-of v0, p2, Lsun/security/x509/GeneralSubtrees;

    if-nez v0, :cond_2

    .line 257
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type GeneralSubtrees."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_2
    check-cast p2, Lsun/security/x509/GeneralSubtrees;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    goto :goto_0

    .line 262
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:NameConstraintsExtension."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "NameConstraints: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 222
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    .line 224
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "   ]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n    Permitted:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    .line 222
    invoke-virtual {v2}, Lsun/security/x509/GeneralSubtrees;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n    Excluded:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    .line 224
    invoke-virtual {v2}, Lsun/security/x509/GeneralSubtrees;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public verify(Ljava/security/cert/X509Certificate;)Z
    .locals 12
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 419
    if-nez p1, :cond_0

    .line 420
    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "Certificate is null"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 424
    :cond_0
    iget-boolean v9, p0, Lsun/security/x509/NameConstraintsExtension;->minMaxValid:Z

    if-nez v9, :cond_1

    .line 425
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->calcMinMax()V

    .line 428
    :cond_1
    iget-boolean v9, p0, Lsun/security/x509/NameConstraintsExtension;->hasMin:Z

    if-eqz v9, :cond_2

    .line 429
    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "Non-zero minimum BaseDistance in name constraints not supported"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 433
    :cond_2
    iget-boolean v9, p0, Lsun/security/x509/NameConstraintsExtension;->hasMax:Z

    if-eqz v9, :cond_3

    .line 434
    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "Maximum BaseDistance in name constraints not supported"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 438
    :cond_3
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    .line 439
    .local v8, "subjectPrincipal":Ljavax/security/auth/x500/X500Principal;
    invoke-static {v8}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v7

    .line 441
    .local v7, "subject":Lsun/security/x509/X500Name;
    invoke-virtual {v7}, Lsun/security/x509/X500Name;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 442
    invoke-virtual {p0, v7}, Lsun/security/x509/NameConstraintsExtension;->verify(Lsun/security/x509/GeneralNameInterface;)Z

    move-result v9

    if-nez v9, :cond_4

    move v9, v10

    .line 483
    :goto_0
    return v9

    .line 447
    :cond_4
    const/4 v3, 0x0

    .line 452
    .local v3, "altNames":Lsun/security/x509/GeneralNames;
    :try_start_0
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v5

    .line 454
    .local v5, "certImpl":Lsun/security/x509/X509CertImpl;
    invoke-virtual {v5}, Lsun/security/x509/X509CertImpl;->getSubjectAlternativeNameExtension()Lsun/security/x509/SubjectAlternativeNameExtension;

    move-result-object v2

    .line 455
    .local v2, "altNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    if-eqz v2, :cond_5

    .line 458
    const-string/jumbo v9, "subject_name"

    .line 459
    invoke-virtual {v2, v9}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lsun/security/x509/GeneralNames;

    move-object v0, v9

    check-cast v0, Lsun/security/x509/GeneralNames;

    move-object v3, v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :cond_5
    if-nez v3, :cond_6

    .line 471
    invoke-virtual {p0, v7}, Lsun/security/x509/NameConstraintsExtension;->verifyRFC822SpecialCase(Lsun/security/x509/X500Name;)Z

    move-result v9

    goto :goto_0

    .line 461
    .end local v2    # "altNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    .end local v5    # "certImpl":Lsun/security/x509/X509CertImpl;
    :catch_0
    move-exception v4

    .line 462
    .local v4, "ce":Ljava/security/cert/CertificateException;
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to extract extensions from certificate: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 463
    invoke-virtual {v4}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 475
    .end local v4    # "ce":Ljava/security/cert/CertificateException;
    .restart local v2    # "altNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    .restart local v5    # "certImpl":Lsun/security/x509/X509CertImpl;
    :cond_6
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v3}, Lsun/security/x509/GeneralNames;->size()I

    move-result v9

    if-ge v6, v9, :cond_8

    .line 476
    invoke-virtual {v3, v6}, Lsun/security/x509/GeneralNames;->get(I)Lsun/security/x509/GeneralName;

    move-result-object v9

    invoke-virtual {v9}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v1

    .line 477
    .local v1, "altGNI":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {p0, v1}, Lsun/security/x509/NameConstraintsExtension;->verify(Lsun/security/x509/GeneralNameInterface;)Z

    move-result v9

    if-nez v9, :cond_7

    move v9, v10

    .line 478
    goto :goto_0

    .line 475
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 483
    .end local v1    # "altGNI":Lsun/security/x509/GeneralNameInterface;
    :cond_8
    const/4 v9, 0x1

    goto :goto_0
.end method

.method public verify(Lsun/security/x509/GeneralNameInterface;)Z
    .locals 9
    .param p1, "name"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 496
    if-nez p1, :cond_0

    .line 497
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "name is null"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 501
    :cond_0
    iget-object v8, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v8}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 503
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v8, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v8}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v8

    if-ge v3, v8, :cond_4

    .line 504
    iget-object v8, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v8, v3}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v2

    .line 505
    .local v2, "gs":Lsun/security/x509/GeneralSubtree;
    if-nez v2, :cond_2

    .line 503
    :cond_1
    :goto_1
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 507
    :cond_2
    invoke-virtual {v2}, Lsun/security/x509/GeneralSubtree;->getName()Lsun/security/x509/GeneralName;

    move-result-object v1

    .line 508
    .local v1, "gn":Lsun/security/x509/GeneralName;
    if-eqz v1, :cond_1

    .line 510
    invoke-virtual {v1}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    .line 511
    .local v0, "exName":Lsun/security/x509/GeneralNameInterface;
    if-eqz v0, :cond_1

    .line 516
    invoke-interface {v0, p1}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    .line 564
    .end local v0    # "exName":Lsun/security/x509/GeneralNameInterface;
    .end local v1    # "gn":Lsun/security/x509/GeneralName;
    .end local v2    # "gs":Lsun/security/x509/GeneralSubtree;
    .end local v3    # "i":I
    :cond_3
    :goto_2
    :pswitch_1
    return v6

    .line 529
    :cond_4
    iget-object v8, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v8}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v8

    if-lez v8, :cond_8

    .line 531
    const/4 v5, 0x0

    .line 533
    .local v5, "sameType":Z
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    iget-object v8, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v8}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v8

    if-ge v3, v8, :cond_7

    .line 534
    iget-object v8, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v8, v3}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v2

    .line 535
    .restart local v2    # "gs":Lsun/security/x509/GeneralSubtree;
    if-nez v2, :cond_6

    .line 533
    :cond_5
    :goto_4
    :pswitch_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 537
    :cond_6
    invoke-virtual {v2}, Lsun/security/x509/GeneralSubtree;->getName()Lsun/security/x509/GeneralName;

    move-result-object v1

    .line 538
    .restart local v1    # "gn":Lsun/security/x509/GeneralName;
    if-eqz v1, :cond_5

    .line 540
    invoke-virtual {v1}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v4

    .line 541
    .local v4, "perName":Lsun/security/x509/GeneralNameInterface;
    if-eqz v4, :cond_5

    .line 547
    invoke-interface {v4, p1}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v8

    packed-switch v8, :pswitch_data_1

    goto :goto_4

    :pswitch_3
    move v6, v7

    .line 557
    goto :goto_2

    .line 552
    :pswitch_4
    const/4 v5, 0x1

    .line 553
    goto :goto_4

    .line 560
    .end local v1    # "gn":Lsun/security/x509/GeneralName;
    .end local v2    # "gs":Lsun/security/x509/GeneralSubtree;
    .end local v4    # "perName":Lsun/security/x509/GeneralNameInterface;
    :cond_7
    if-nez v5, :cond_3

    .end local v3    # "i":I
    .end local v5    # "sameType":Z
    :cond_8
    move v6, v7

    .line 564
    goto :goto_2

    .line 516
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 547
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public verifyRFC822SpecialCase(Lsun/security/x509/X500Name;)Z
    .locals 7
    .param p1, "subject"    # Lsun/security/x509/X500Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    invoke-virtual {p1}, Lsun/security/x509/X500Name;->allAvas()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "t":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 579
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/AVA;

    .line 580
    .local v2, "ava":Lsun/security/x509/AVA;
    invoke-virtual {v2}, Lsun/security/x509/AVA;->getObjectIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 581
    .local v0, "attrOID":Lsun/security/util/ObjectIdentifier;
    sget-object v6, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v6}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 582
    invoke-virtual {v2}, Lsun/security/x509/AVA;->getValueString()Ljava/lang/String;

    move-result-object v1

    .line 583
    .local v1, "attrValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 586
    :try_start_0
    new-instance v3, Lsun/security/x509/RFC822Name;

    invoke-direct {v3, v1}, Lsun/security/x509/RFC822Name;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    .local v3, "emailName":Lsun/security/x509/RFC822Name;
    invoke-virtual {p0, v3}, Lsun/security/x509/NameConstraintsExtension;->verify(Lsun/security/x509/GeneralNameInterface;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 591
    const/4 v6, 0x0

    .line 596
    .end local v0    # "attrOID":Lsun/security/util/ObjectIdentifier;
    .end local v1    # "attrValue":Ljava/lang/String;
    .end local v2    # "ava":Lsun/security/x509/AVA;
    .end local v3    # "emailName":Lsun/security/x509/RFC822Name;
    :goto_1
    return v6

    .line 587
    .restart local v0    # "attrOID":Lsun/security/util/ObjectIdentifier;
    .restart local v1    # "attrValue":Ljava/lang/String;
    .restart local v2    # "ava":Lsun/security/x509/AVA;
    :catch_0
    move-exception v4

    .line 588
    .local v4, "ioe":Ljava/io/IOException;
    goto :goto_0

    .line 596
    .end local v0    # "attrOID":Lsun/security/util/ObjectIdentifier;
    .end local v1    # "attrValue":Ljava/lang/String;
    .end local v2    # "ava":Lsun/security/x509/AVA;
    .end local v4    # "ioe":Ljava/io/IOException;
    :cond_1
    const/4 v6, 0x1

    goto :goto_1
.end method
