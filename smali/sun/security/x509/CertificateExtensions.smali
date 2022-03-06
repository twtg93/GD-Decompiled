.class public Lsun/security/x509/CertificateExtensions;
.super Ljava/lang/Object;
.source "CertificateExtensions.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Lsun/security/x509/Extension;",
        ">;"
    }
.end annotation


# static fields
.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions"

.field public static final NAME:Ljava/lang/String; = "extensions"

.field private static PARAMS:[Ljava/lang/Class;

.field private static final debug:Lsun/security/util/Debug;


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

.field private unparseableExtensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
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
    .line 65
    const-string/jumbo v0, "x509"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/x509/CertificateExtensions;->debug:Lsun/security/util/Debug;

    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/Object;

    aput-object v2, v0, v1

    sput-object v0, Lsun/security/x509/CertificateExtensions;->PARAMS:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Hashtable;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/CertificateExtensions;->unsupportedCritExt:Z

    .line 75
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Hashtable;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/CertificateExtensions;->unsupportedCritExt:Z

    .line 84
    invoke-direct {p0, p1}, Lsun/security/x509/CertificateExtensions;->init(Lsun/security/util/DerInputStream;)V

    .line 85
    return-void
.end method

.method private init(Lsun/security/util/DerInputStream;)V
    .locals 4
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v1

    .line 92
    .local v1, "exts":[Lsun/security/util/DerValue;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 93
    new-instance v0, Lsun/security/x509/Extension;

    aget-object v3, v1, v2

    invoke-direct {v0, v3}, Lsun/security/x509/Extension;-><init>(Lsun/security/util/DerValue;)V

    .line 94
    .local v0, "ext":Lsun/security/x509/Extension;
    invoke-direct {p0, v0}, Lsun/security/x509/CertificateExtensions;->parseExtension(Lsun/security/x509/Extension;)V

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "ext":Lsun/security/x509/Extension;
    :cond_0
    return-void
.end method

.method private parseExtension(Lsun/security/x509/Extension;)V
    .locals 10
    .param p1, "ext"    # Lsun/security/x509/Extension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    :try_start_0
    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v7

    invoke-static {v7}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v3

    .line 104
    .local v3, "extClass":Ljava/lang/Class;
    if-nez v3, :cond_4

    .line 105
    invoke-virtual {p1}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 106
    const/4 v7, 0x1

    iput-boolean v7, p0, Lsun/security/x509/CertificateExtensions;->unsupportedCritExt:Z

    .line 108
    :cond_0
    iget-object v7, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    .line 149
    .end local v3    # "extClass":Ljava/lang/Class;
    :cond_1
    :goto_0
    return-void

    .line 111
    .restart local v3    # "extClass":Ljava/lang/Class;
    :cond_2
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Duplicate extensions not allowed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 122
    .end local v3    # "extClass":Ljava/lang/Class;
    :catch_0
    move-exception v5

    .line 123
    .local v5, "invk":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    .line 124
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v7

    if-nez v7, :cond_5

    .line 126
    iget-object v7, p0, Lsun/security/x509/CertificateExtensions;->unparseableExtensions:Ljava/util/Map;

    if-nez v7, :cond_3

    .line 127
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lsun/security/x509/CertificateExtensions;->unparseableExtensions:Ljava/util/Map;

    .line 129
    :cond_3
    iget-object v7, p0, Lsun/security/x509/CertificateExtensions;->unparseableExtensions:Ljava/util/Map;

    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lsun/security/x509/UnparseableExtension;

    invoke-direct {v9, p1, v2}, Lsun/security/x509/UnparseableExtension;-><init>(Lsun/security/x509/Extension;Ljava/lang/Throwable;)V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v7, Lsun/security/x509/CertificateExtensions;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_1

    .line 132
    sget-object v7, Lsun/security/x509/CertificateExtensions;->debug:Lsun/security/util/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error parsing extension: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 134
    new-instance v4, Lsun/misc/HexDumpEncoder;

    invoke-direct {v4}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 135
    .local v4, "h":Lsun/misc/HexDumpEncoder;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v8

    invoke-virtual {v4, v8}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v4    # "h":Lsun/misc/HexDumpEncoder;
    .end local v5    # "invk":Ljava/lang/reflect/InvocationTargetException;
    .restart local v3    # "extClass":Ljava/lang/Class;
    :cond_4
    :try_start_1
    sget-object v7, Lsun/security/x509/CertificateExtensions;->PARAMS:[Ljava/lang/Class;

    invoke-virtual {v3, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 116
    .local v1, "cons":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x2

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 117
    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v8

    aput-object v8, v6, v7

    .line 118
    .local v6, "passed":[Ljava/lang/Object;
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/CertAttrSet;

    .line 119
    .local v0, "certExt":Lsun/security/x509/CertAttrSet;
    iget-object v7, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Hashtable;

    invoke-interface {v0}, Lsun/security/x509/CertAttrSet;->getName()Ljava/lang/String;

    move-result-object v8

    check-cast v0, Lsun/security/x509/Extension;

    .end local v0    # "certExt":Lsun/security/x509/CertAttrSet;
    invoke-virtual {v7, v8, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 120
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Duplicate extensions not allowed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 144
    .end local v1    # "cons":Ljava/lang/reflect/Constructor;
    .end local v3    # "extClass":Ljava/lang/Class;
    .end local v6    # "passed":[Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 145
    .local v2, "e":Ljava/io/IOException;
    throw v2

    .line 139
    .local v2, "e":Ljava/lang/Throwable;
    .restart local v5    # "invk":Ljava/lang/reflect/InvocationTargetException;
    :cond_5
    instance-of v7, v2, Ljava/io/IOException;

    if-eqz v7, :cond_6

    .line 140
    check-cast v2, Ljava/io/IOException;

    .end local v2    # "e":Ljava/lang/Throwable;
    throw v2

    .line 142
    .restart local v2    # "e":Ljava/lang/Throwable;
    :cond_6
    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Ljava/io/IOException;

    throw v7

    .line 146
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v5    # "invk":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v2

    .line 147
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Ljava/io/IOException;

    throw v7
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v1, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 235
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 236
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No extension found with name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :cond_0
    iget-object v1, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    return-void
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lsun/security/x509/CertificateExtensions;->encode(Ljava/io/OutputStream;Z)V

    .line 162
    return-void
.end method

.method public encode(Ljava/io/OutputStream;Z)V
    .locals 9
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "isCertReq"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 175
    .local v1, "extOut":Lsun/security/util/DerOutputStream;
    iget-object v6, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    .line 176
    .local v0, "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 178
    .local v3, "objs":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v3

    if-ge v2, v6, :cond_2

    .line 179
    aget-object v6, v3, v2

    instance-of v6, v6, Lsun/security/x509/CertAttrSet;

    if-eqz v6, :cond_0

    .line 180
    aget-object v6, v3, v2

    check-cast v6, Lsun/security/x509/CertAttrSet;

    invoke-interface {v6, v1}, Lsun/security/x509/CertAttrSet;->encode(Ljava/io/OutputStream;)V

    .line 178
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    :cond_0
    aget-object v6, v3, v2

    instance-of v6, v6, Lsun/security/x509/Extension;

    if-eqz v6, :cond_1

    .line 182
    aget-object v6, v3, v2

    check-cast v6, Lsun/security/x509/Extension;

    invoke-virtual {v6, v1}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    goto :goto_1

    .line 184
    :cond_1
    new-instance v6, Ljava/security/cert/CertificateException;

    const-string/jumbo v7, "Illegal extension object"

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 187
    :cond_2
    new-instance v4, Lsun/security/util/DerOutputStream;

    invoke-direct {v4}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 188
    .local v4, "seq":Lsun/security/util/DerOutputStream;
    const/16 v6, 0x30

    invoke-virtual {v4, v6, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 191
    if-nez p2, :cond_3

    .line 192
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 193
    .local v5, "tmp":Lsun/security/util/DerOutputStream;
    const/16 v6, -0x80

    const/4 v7, 0x1

    const/4 v8, 0x3

    invoke-static {v6, v7, v8}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v6

    invoke-virtual {v5, v6, v4}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 198
    :goto_2
    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    .line 199
    return-void

    .line 196
    .end local v5    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_3
    move-object v5, v4

    .restart local v5    # "tmp":Lsun/security/util/DerOutputStream;
    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 292
    if-ne p0, p1, :cond_0

    .line 293
    const/4 v7, 0x1

    .line 318
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v7

    .line 294
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    instance-of v7, p1, Lsun/security/x509/CertificateExtensions;

    if-nez v7, :cond_1

    move v7, v8

    .line 295
    goto :goto_0

    :cond_1
    move-object v7, p1

    .line 296
    check-cast v7, Lsun/security/x509/CertificateExtensions;

    .line 297
    invoke-virtual {v7}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v4

    .line 298
    .local v4, "otherC":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    invoke-interface {v4}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 300
    .local v3, "objs":[Ljava/lang/Object;
    array-length v2, v3

    .line 301
    .local v2, "len":I
    iget-object v7, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->size()I

    move-result v7

    if-eq v2, v7, :cond_2

    move v7, v8

    .line 302
    goto :goto_0

    .line 305
    :cond_2
    const/4 v1, 0x0

    .line 306
    .local v1, "key":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_7

    .line 307
    aget-object v7, v3, v0

    instance-of v7, v7, Lsun/security/x509/CertAttrSet;

    if-eqz v7, :cond_3

    .line 308
    aget-object v7, v3, v0

    check-cast v7, Lsun/security/x509/CertAttrSet;

    invoke-interface {v7}, Lsun/security/x509/CertAttrSet;->getName()Ljava/lang/String;

    move-result-object v1

    .line 309
    :cond_3
    aget-object v5, v3, v0

    check-cast v5, Lsun/security/x509/Extension;

    .line 310
    .local v5, "otherExt":Lsun/security/x509/Extension;
    if-nez v1, :cond_4

    .line 311
    invoke-virtual {v5}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    :cond_4
    iget-object v7, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Hashtable;

    invoke-virtual {v7, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/security/x509/Extension;

    .line 313
    .local v6, "thisExt":Lsun/security/x509/Extension;
    if-nez v6, :cond_5

    move v7, v8

    .line 314
    goto :goto_0

    .line 315
    :cond_5
    invoke-virtual {v6, v5}, Lsun/security/x509/Extension;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    move v7, v8

    .line 316
    goto :goto_0

    .line 306
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 318
    .end local v5    # "otherExt":Lsun/security/x509/Extension;
    .end local v6    # "thisExt":Lsun/security/x509/Extension;
    :cond_7
    invoke-virtual {p0}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    move-result-object v7

    check-cast p1, Lsun/security/x509/CertificateExtensions;

    .line 319
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    move-result-object v8

    .line 318
    invoke-interface {v7, v8}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v1, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 222
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 223
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No extension found with name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :cond_0
    return-object v0
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
    .line 254
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Hashtable;

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
    .line 246
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    const-string/jumbo v0, "extensions"

    return-object v0
.end method

.method public getUnparseableExtensions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/x509/Extension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->unparseableExtensions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 259
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 261
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->unparseableExtensions:Ljava/util/Map;

    goto :goto_0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lsun/security/x509/CertificateExtensions;->unsupportedCritExt:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
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
    .line 208
    instance-of v0, p2, Lsun/security/x509/Extension;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Hashtable;

    check-cast p2, Lsun/security/x509/Extension;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    return-void

    .line 211
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Unknown extension type."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lsun/security/x509/CertificateExtensions;->map:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
