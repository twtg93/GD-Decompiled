.class public Lsun/security/x509/CertificatePoliciesExtension;
.super Lsun/security/x509/Extension;
.source "CertificatePoliciesExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/security/x509/Extension;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.CertificatePolicies"

.field public static final NAME:Ljava/lang/String; = "CertificatePolicies"

.field public static final POLICIES:Ljava/lang/String; = "policies"


# instance fields
.field private certPolicies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/PolicyInformation;",
            ">;"
        }
    .end annotation
.end field


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
    .line 141
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 142
    sget-object v3, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v3, p0, Lsun/security/x509/CertificatePoliciesExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 143
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lsun/security/x509/CertificatePoliciesExtension;->critical:Z

    .line 144
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [B

    iput-object p2, p0, Lsun/security/x509/CertificatePoliciesExtension;->extensionValue:[B

    .line 145
    new-instance v2, Lsun/security/util/DerValue;

    iget-object v3, p0, Lsun/security/x509/CertificatePoliciesExtension;->extensionValue:[B

    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>([B)V

    .line 146
    .local v2, "val":Lsun/security/util/DerValue;
    iget-byte v3, v2, Lsun/security/util/DerValue;->tag:B

    const/16 v4, 0x30

    if-eq v3, v4, :cond_0

    .line 147
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Invalid encoding for CertificatePoliciesExtension."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 150
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    .line 151
    :goto_0
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 153
    .local v1, "seq":Lsun/security/util/DerValue;
    new-instance v0, Lsun/security/x509/PolicyInformation;

    invoke-direct {v0, v1}, Lsun/security/x509/PolicyInformation;-><init>(Lsun/security/util/DerValue;)V

    .line 154
    .local v0, "policy":Lsun/security/x509/PolicyInformation;
    iget-object v3, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    .end local v0    # "policy":Lsun/security/x509/PolicyInformation;
    .end local v1    # "seq":Lsun/security/util/DerValue;
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/util/List;)V
    .locals 1
    .param p1, "critical"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/PolicyInformation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    .local p2, "certPolicies":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 126
    iput-object p2, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    .line 127
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/CertificatePoliciesExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 128
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/CertificatePoliciesExtension;->critical:Z

    .line 129
    invoke-direct {p0}, Lsun/security/x509/CertificatePoliciesExtension;->encodeThis()V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/PolicyInformation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "certPolicies":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, p1}, Lsun/security/x509/CertificatePoliciesExtension;-><init>(Ljava/lang/Boolean;Ljava/util/List;)V

    .line 115
    return-void
.end method

.method private encodeThis()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v3, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lsun/security/x509/CertificatePoliciesExtension;->extensionValue:[B

    .line 104
    :goto_0
    return-void

    .line 94
    :cond_1
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 95
    .local v1, "os":Lsun/security/util/DerOutputStream;
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 97
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/PolicyInformation;

    .line 98
    .local v0, "info":Lsun/security/x509/PolicyInformation;
    invoke-virtual {v0, v2}, Lsun/security/x509/PolicyInformation;->encode(Lsun/security/util/DerOutputStream;)V

    goto :goto_1

    .line 101
    .end local v0    # "info":Lsun/security/x509/PolicyInformation;
    :cond_2
    const/16 v3, 0x30

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 102
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/CertificatePoliciesExtension;->extensionValue:[B

    goto :goto_0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    const-string/jumbo v0, "policies"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    .line 233
    invoke-direct {p0}, Lsun/security/x509/CertificatePoliciesExtension;->encodeThis()V

    .line 234
    return-void

    .line 229
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] not recognized by CertAttrSet:CertificatePoliciesExtension."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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
    .line 181
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 182
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/CertificatePoliciesExtension;->extensionValue:[B

    if-nez v1, :cond_0

    .line 183
    sget-object v1, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/CertificatePoliciesExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 184
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/CertificatePoliciesExtension;->critical:Z

    .line 185
    invoke-direct {p0}, Lsun/security/x509/CertificatePoliciesExtension;->encodeThis()V

    .line 187
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 188
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 189
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    const-string/jumbo v0, "policies"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    return-object v0

    .line 216
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] not recognized by CertAttrSet:CertificatePoliciesExtension."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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
    .line 241
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 242
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "policies"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 244
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    const-string/jumbo v0, "CertificatePolicies"

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    const-string/jumbo v0, "policies"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    instance-of v0, p2, Ljava/util/List;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type List."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    check-cast p2, Ljava/util/List;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    .line 205
    invoke-direct {p0}, Lsun/security/x509/CertificatePoliciesExtension;->encodeThis()V

    .line 206
    return-void

    .line 201
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] not recognized by CertAttrSet:CertificatePoliciesExtension."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 162
    iget-object v2, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    if-nez v2, :cond_0

    .line 163
    const-string/jumbo v2, ""

    .line 171
    :goto_0
    return-object v2

    .line 165
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "CertificatePolicies [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-object v2, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/PolicyInformation;

    .line 168
    .local v0, "info":Lsun/security/x509/PolicyInformation;
    invoke-virtual {v0}, Lsun/security/x509/PolicyInformation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 170
    .end local v0    # "info":Lsun/security/x509/PolicyInformation;
    :cond_1
    const-string/jumbo v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
