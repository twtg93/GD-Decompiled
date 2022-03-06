.class public Lsun/security/x509/CRLExtensions;
.super Ljava/lang/Object;
.source "CRLExtensions.java"


# static fields
.field private static final PARAMS:[Ljava/lang/Class;


# instance fields
.field private map:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/x509/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private unsupportedCritExt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/Object;

    aput-object v2, v0, v1

    sput-object v0, Lsun/security/x509/CRLExtensions;->PARAMS:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Hashtable;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/CRLExtensions;->unsupportedCritExt:Z

    .line 72
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Hashtable;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/CRLExtensions;->unsupportedCritExt:Z

    .line 82
    invoke-direct {p0, p1}, Lsun/security/x509/CRLExtensions;->init(Lsun/security/util/DerInputStream;)V

    .line 83
    return-void
.end method

.method private init(Lsun/security/util/DerInputStream;)V
    .locals 10
    .param p1, "derStrm"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 88
    move-object v5, p1

    .line 90
    .local v5, "str":Lsun/security/util/DerInputStream;
    :try_start_0
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v7

    int-to-byte v4, v7

    .line 92
    .local v4, "nextByte":B
    and-int/lit16 v7, v4, 0xc0

    const/16 v8, 0x80

    if-ne v7, v8, :cond_0

    and-int/lit8 v7, v4, 0x1f

    if-nez v7, :cond_0

    .line 94
    invoke-virtual {v5}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v6

    .line 95
    .local v6, "val":Lsun/security/util/DerValue;
    iget-object v5, v6, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 98
    .end local v6    # "val":Lsun/security/util/DerValue;
    :cond_0
    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v2

    .line 99
    .local v2, "exts":[Lsun/security/util/DerValue;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_1

    .line 100
    new-instance v1, Lsun/security/x509/Extension;

    aget-object v7, v2, v3

    invoke-direct {v1, v7}, Lsun/security/x509/Extension;-><init>(Lsun/security/util/DerValue;)V

    .line 101
    .local v1, "ext":Lsun/security/x509/Extension;
    invoke-direct {p0, v1}, Lsun/security/x509/CRLExtensions;->parseExtension(Lsun/security/x509/Extension;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "ext":Lsun/security/x509/Extension;
    .end local v2    # "exts":[Lsun/security/util/DerValue;
    .end local v3    # "i":I
    .end local v4    # "nextByte":B
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/security/cert/CRLException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Parsing error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 106
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "exts":[Lsun/security/util/DerValue;
    .restart local v3    # "i":I
    .restart local v4    # "nextByte":B
    :cond_1
    return-void
.end method

.method private parseExtension(Lsun/security/x509/Extension;)V
    .locals 8
    .param p1, "ext"    # Lsun/security/x509/Extension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 113
    :try_start_0
    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v6

    invoke-static {v6}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v3

    .line 114
    .local v3, "extClass":Ljava/lang/Class;
    if-nez v3, :cond_1

    .line 115
    invoke-virtual {p1}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 116
    const/4 v6, 0x1

    iput-boolean v6, p0, Lsun/security/x509/CRLExtensions;->unsupportedCritExt:Z

    .line 117
    :cond_0
    iget-object v6, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 118
    new-instance v6, Ljava/security/cert/CRLException;

    const-string/jumbo v7, "Duplicate extensions not allowed"

    invoke-direct {v6, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    .end local v3    # "extClass":Ljava/lang/Class;
    :catch_0
    move-exception v4

    .line 129
    .local v4, "invk":Ljava/lang/reflect/InvocationTargetException;
    new-instance v6, Ljava/security/cert/CRLException;

    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 121
    .end local v4    # "invk":Ljava/lang/reflect/InvocationTargetException;
    .restart local v3    # "extClass":Ljava/lang/Class;
    :cond_1
    :try_start_1
    sget-object v6, Lsun/security/x509/CRLExtensions;->PARAMS:[Ljava/lang/Class;

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 122
    .local v0, "cons":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 123
    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v7

    aput-object v7, v5, v6

    .line 124
    .local v5, "passed":[Ljava/lang/Object;
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/CertAttrSet;

    .line 125
    .local v1, "crlExt":Lsun/security/x509/CertAttrSet;
    iget-object v6, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Hashtable;

    invoke-interface {v1}, Lsun/security/x509/CertAttrSet;->getName()Ljava/lang/String;

    move-result-object v7

    check-cast v1, Lsun/security/x509/Extension;

    .end local v1    # "crlExt":Lsun/security/x509/CertAttrSet;
    invoke-virtual {v6, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 126
    new-instance v6, Ljava/security/cert/CRLException;

    const-string/jumbo v7, "Duplicate extensions not allowed"

    invoke-direct {v6, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    .end local v0    # "cons":Ljava/lang/reflect/Constructor;
    .end local v3    # "extClass":Ljava/lang/Class;
    .end local v5    # "passed":[Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 131
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/security/cert/CRLException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 133
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "extClass":Ljava/lang/Class;
    :cond_2
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    return-void
.end method

.method public encode(Ljava/io/OutputStream;Z)V
    .locals 10
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "isExplicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 146
    :try_start_0
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 147
    .local v2, "extOut":Lsun/security/util/DerOutputStream;
    iget-object v7, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    .line 148
    .local v0, "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 150
    .local v4, "objs":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v4

    if-ge v3, v7, :cond_2

    .line 151
    aget-object v7, v4, v3

    instance-of v7, v7, Lsun/security/x509/CertAttrSet;

    if-eqz v7, :cond_0

    .line 152
    aget-object v7, v4, v3

    check-cast v7, Lsun/security/x509/CertAttrSet;

    invoke-interface {v7, v2}, Lsun/security/x509/CertAttrSet;->encode(Ljava/io/OutputStream;)V

    .line 150
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 153
    :cond_0
    aget-object v7, v4, v3

    instance-of v7, v7, Lsun/security/x509/Extension;

    if-eqz v7, :cond_1

    .line 154
    aget-object v7, v4, v3

    check-cast v7, Lsun/security/x509/Extension;

    invoke-virtual {v7, v2}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 170
    .end local v0    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .end local v2    # "extOut":Lsun/security/util/DerOutputStream;
    .end local v3    # "i":I
    .end local v4    # "objs":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/io/IOException;
    new-instance v7, Ljava/security/cert/CRLException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Encoding error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 156
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .restart local v2    # "extOut":Lsun/security/util/DerOutputStream;
    .restart local v3    # "i":I
    .restart local v4    # "objs":[Ljava/lang/Object;
    :cond_1
    :try_start_1
    new-instance v7, Ljava/security/cert/CRLException;

    const-string/jumbo v8, "Illegal extension object"

    invoke-direct {v7, v8}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    .end local v0    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .end local v2    # "extOut":Lsun/security/util/DerOutputStream;
    .end local v3    # "i":I
    .end local v4    # "objs":[Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 173
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v7, Ljava/security/cert/CRLException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Encoding error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 159
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    .restart local v0    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .restart local v2    # "extOut":Lsun/security/util/DerOutputStream;
    .restart local v3    # "i":I
    .restart local v4    # "objs":[Ljava/lang/Object;
    :cond_2
    :try_start_2
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 160
    .local v5, "seq":Lsun/security/util/DerOutputStream;
    const/16 v7, 0x30

    invoke-virtual {v5, v7, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 162
    new-instance v6, Lsun/security/util/DerOutputStream;

    invoke-direct {v6}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 163
    .local v6, "tmp":Lsun/security/util/DerOutputStream;
    if-eqz p2, :cond_3

    .line 164
    const/16 v7, -0x80

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v7

    invoke-virtual {v6, v7, v5}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 169
    :goto_2
    invoke-virtual {v6}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 175
    return-void

    .line 167
    :cond_3
    move-object v6, v5

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 249
    if-ne p0, p1, :cond_0

    move v7, v8

    .line 275
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v7

    .line 251
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    instance-of v7, p1, Lsun/security/x509/CRLExtensions;

    if-nez v7, :cond_1

    move v7, v9

    .line 252
    goto :goto_0

    .line 253
    :cond_1
    check-cast p1, Lsun/security/x509/CRLExtensions;

    .line 254
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Lsun/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v4

    .line 255
    .local v4, "otherC":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    invoke-interface {v4}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 257
    .local v3, "objs":[Ljava/lang/Object;
    array-length v2, v3

    .line 258
    .local v2, "len":I
    iget-object v7, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->size()I

    move-result v7

    if-eq v2, v7, :cond_2

    move v7, v9

    .line 259
    goto :goto_0

    .line 262
    :cond_2
    const/4 v1, 0x0

    .line 263
    .local v1, "key":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_7

    .line 264
    aget-object v7, v3, v0

    instance-of v7, v7, Lsun/security/x509/CertAttrSet;

    if-eqz v7, :cond_3

    .line 265
    aget-object v7, v3, v0

    check-cast v7, Lsun/security/x509/CertAttrSet;

    invoke-interface {v7}, Lsun/security/x509/CertAttrSet;->getName()Ljava/lang/String;

    move-result-object v1

    .line 266
    :cond_3
    aget-object v5, v3, v0

    check-cast v5, Lsun/security/x509/Extension;

    .line 267
    .local v5, "otherExt":Lsun/security/x509/Extension;
    if-nez v1, :cond_4

    .line 268
    invoke-virtual {v5}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    :cond_4
    iget-object v7, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Hashtable;

    invoke-virtual {v7, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/security/x509/Extension;

    .line 270
    .local v6, "thisExt":Lsun/security/x509/Extension;
    if-nez v6, :cond_5

    move v7, v9

    .line 271
    goto :goto_0

    .line 272
    :cond_5
    invoke-virtual {v6, v5}, Lsun/security/x509/Extension;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    move v7, v9

    .line 273
    goto :goto_0

    .line 263
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v5    # "otherExt":Lsun/security/x509/Extension;
    .end local v6    # "thisExt":Lsun/security/x509/Extension;
    :cond_7
    move v7, v8

    .line 275
    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lsun/security/x509/Extension;
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 183
    new-instance v0, Lsun/security/x509/X509AttributeName;

    invoke-direct {v0, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "id":Ljava/lang/String;
    const-string/jumbo v4, "x509"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    const-string/jumbo v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 188
    .local v2, "index":I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 191
    .end local v2    # "index":I
    .local v3, "name":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/Extension;

    return-object v4

    .line 190
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    move-object v3, p1

    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_0
.end method

.method public getAllExtensions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/x509/Extension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

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
            "Lsun/security/x509/Extension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lsun/security/x509/CRLExtensions;->unsupportedCritExt:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->hashCode()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 202
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Hashtable;

    check-cast p2, Lsun/security/x509/Extension;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lsun/security/x509/CRLExtensions;->map:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
