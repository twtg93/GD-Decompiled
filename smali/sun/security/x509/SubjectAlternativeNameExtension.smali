.class public Lsun/security/x509/SubjectAlternativeNameExtension;
.super Lsun/security/x509/Extension;
.source "SubjectAlternativeNameExtension.java"

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
.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.SubjectAlternativeName"

.field public static final NAME:Ljava/lang/String; = "SubjectAlternativeName"

.field public static final SUBJECT_NAME:Ljava/lang/String; = "subject_name"


# instance fields
.field names:Lsun/security/x509/GeneralNames;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    .line 117
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->critical:Z

    .line 119
    new-instance v0, Lsun/security/x509/GeneralNames;

    invoke-direct {v0}, Lsun/security/x509/GeneralNames;-><init>()V

    iput-object v0, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 2
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    .line 132
    sget-object v1, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 133
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->critical:Z

    .line 135
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [B

    iput-object p2, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->extensionValue:[B

    .line 136
    new-instance v0, Lsun/security/util/DerValue;

    iget-object v1, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->extensionValue:[B

    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 137
    .local v0, "val":Lsun/security/util/DerValue;
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-nez v1, :cond_0

    .line 138
    new-instance v1, Lsun/security/x509/GeneralNames;

    invoke-direct {v1}, Lsun/security/x509/GeneralNames;-><init>()V

    iput-object v1, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    .line 143
    :goto_0
    return-void

    .line 142
    :cond_0
    new-instance v1, Lsun/security/x509/GeneralNames;

    invoke-direct {v1, v0}, Lsun/security/x509/GeneralNames;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Boolean;Lsun/security/x509/GeneralNames;)V
    .locals 1
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "names"    # Lsun/security/x509/GeneralNames;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    .line 106
    iput-object p2, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    .line 107
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 108
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->critical:Z

    .line 109
    invoke-direct {p0}, Lsun/security/x509/SubjectAlternativeNameExtension;->encodeThis()V

    .line 110
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/GeneralNames;)V
    .locals 1
    .param p1, "names"    # Lsun/security/x509/GeneralNames;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, p1}, Lsun/security/x509/SubjectAlternativeNameExtension;-><init>(Ljava/lang/Boolean;Lsun/security/x509/GeneralNames;)V

    .line 94
    return-void
.end method

.method private encodeThis()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v1, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    invoke-virtual {v1}, Lsun/security/x509/GeneralNames;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->extensionValue:[B

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_1
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 80
    .local v0, "os":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    invoke-virtual {v1, v0}, Lsun/security/x509/GeneralNames;->encode(Lsun/security/util/DerOutputStream;)V

    .line 81
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->extensionValue:[B

    goto :goto_0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    const-string/jumbo v0, "subject_name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    .line 218
    invoke-direct {p0}, Lsun/security/x509/SubjectAlternativeNameExtension;->encodeThis()V

    .line 219
    return-void

    .line 215
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:SubjectAlternativeName."

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
    .line 169
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 170
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->extensionValue:[B

    if-nez v1, :cond_0

    .line 171
    sget-object v1, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 172
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->critical:Z

    .line 173
    invoke-direct {p0}, Lsun/security/x509/SubjectAlternativeNameExtension;->encodeThis()V

    .line 175
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 176
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 177
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
    .line 200
    const-string/jumbo v0, "subject_name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    return-object v0

    .line 203
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:SubjectAlternativeName."

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
    .line 226
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 227
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "subject_name"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 229
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    const-string/jumbo v0, "SubjectAlternativeName"

    return-object v0
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
    .line 183
    const-string/jumbo v0, "subject_name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    instance-of v0, p2, Lsun/security/x509/GeneralNames;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type GeneralNames."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    check-cast p2, Lsun/security/x509/GeneralNames;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    .line 193
    invoke-direct {p0}, Lsun/security/x509/SubjectAlternativeNameExtension;->encodeThis()V

    .line 194
    return-void

    .line 190
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:SubjectAlternativeName."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "SubjectAlternativeName [\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    if-nez v2, :cond_1

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  null\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    return-object v1

    .line 154
    :cond_1
    iget-object v2, p0, Lsun/security/x509/SubjectAlternativeNameExtension;->names:Lsun/security/x509/GeneralNames;

    invoke-virtual {v2}, Lsun/security/x509/GeneralNames;->names()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/GeneralName;

    .line 155
    .local v0, "name":Lsun/security/x509/GeneralName;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    goto :goto_0
.end method
