.class public Lsun/security/util/ManifestEntryVerifier;
.super Ljava/lang/Object;
.source "ManifestEntryVerifier.java"


# static fields
.field private static final debug:Lsun/security/util/Debug;

.field private static final hexc:[C


# instance fields
.field createdDigests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field private decoder:Lsun/misc/BASE64Decoder;

.field digests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field private entry:Ljava/util/jar/JarEntry;

.field private man:Ljava/util/jar/Manifest;

.field manifestHashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private signers:[Ljava/security/CodeSigner;

.field private skip:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "jar"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/util/ManifestEntryVerifier;->debug:Lsun/security/util/Debug;

    .line 230
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lsun/security/util/ManifestEntryVerifier;->hexc:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>(Ljava/util/jar/Manifest;)V
    .locals 2
    .param p1, "man"    # Ljava/util/jar/Manifest;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v1, p0, Lsun/security/util/ManifestEntryVerifier;->decoder:Lsun/misc/BASE64Decoder;

    .line 67
    iput-object v1, p0, Lsun/security/util/ManifestEntryVerifier;->name:Ljava/lang/String;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/util/ManifestEntryVerifier;->skip:Z

    .line 74
    iput-object v1, p0, Lsun/security/util/ManifestEntryVerifier;->signers:[Ljava/security/CodeSigner;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lsun/security/util/ManifestEntryVerifier;->createdDigests:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/security/util/ManifestEntryVerifier;->digests:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/security/util/ManifestEntryVerifier;->manifestHashes:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Lsun/misc/BASE64Decoder;

    invoke-direct {v0}, Lsun/misc/BASE64Decoder;-><init>()V

    iput-object v0, p0, Lsun/security/util/ManifestEntryVerifier;->decoder:Lsun/misc/BASE64Decoder;

    .line 85
    iput-object p1, p0, Lsun/security/util/ManifestEntryVerifier;->man:Ljava/util/jar/Manifest;

    .line 86
    return-void
.end method

.method static toHex([B)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B

    .prologue
    .line 240
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 242
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 243
    sget-object v2, Lsun/security/util/ManifestEntryVerifier;->hexc:[C

    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 244
    sget-object v2, Lsun/security/util/ManifestEntryVerifier;->hexc:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getEntry()Ljava/util/jar/JarEntry;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lsun/security/util/ManifestEntryVerifier;->entry:Ljava/util/jar/JarEntry;

    return-object v0
.end method

.method public setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/util/jar/JarEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 97
    iget-object v5, p0, Lsun/security/util/ManifestEntryVerifier;->digests:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 98
    iget-object v5, p0, Lsun/security/util/ManifestEntryVerifier;->manifestHashes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 99
    iput-object p1, p0, Lsun/security/util/ManifestEntryVerifier;->name:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lsun/security/util/ManifestEntryVerifier;->entry:Ljava/util/jar/JarEntry;

    .line 102
    const/4 v5, 0x1

    iput-boolean v5, p0, Lsun/security/util/ManifestEntryVerifier;->skip:Z

    .line 103
    const/4 v5, 0x0

    iput-object v5, p0, Lsun/security/util/ManifestEntryVerifier;->signers:[Ljava/security/CodeSigner;

    .line 105
    iget-object v5, p0, Lsun/security/util/ManifestEntryVerifier;->man:Ljava/util/jar/Manifest;

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    .line 153
    :cond_0
    return-void

    .line 112
    :cond_1
    iget-object v5, p0, Lsun/security/util/ManifestEntryVerifier;->man:Ljava/util/jar/Manifest;

    invoke-virtual {v5, p1}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v1

    .line 113
    .local v1, "attr":Ljava/util/jar/Attributes;
    if-nez v1, :cond_2

    .line 117
    iget-object v5, p0, Lsun/security/util/ManifestEntryVerifier;->man:Ljava/util/jar/Manifest;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "./"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v1

    .line 118
    if-nez v1, :cond_2

    .line 119
    iget-object v5, p0, Lsun/security/util/ManifestEntryVerifier;->man:Ljava/util/jar/Manifest;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v1

    .line 120
    if-eqz v1, :cond_0

    .line 125
    :cond_2
    invoke-virtual {v1}, Ljava/util/jar/Attributes;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 126
    .local v4, "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "key":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "-DIGEST"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 130
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x7

    invoke-virtual {v3, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "algorithm":Ljava/lang/String;
    iget-object v5, p0, Lsun/security/util/ManifestEntryVerifier;->createdDigests:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/MessageDigest;

    .line 134
    .local v2, "digest":Ljava/security/MessageDigest;
    if-nez v2, :cond_4

    .line 137
    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 138
    iget-object v5, p0, Lsun/security/util/ManifestEntryVerifier;->createdDigests:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_4
    :goto_1
    if-eqz v2, :cond_3

    .line 145
    iput-boolean v9, p0, Lsun/security/util/ManifestEntryVerifier;->skip:Z

    .line 146
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 147
    iget-object v5, p0, Lsun/security/util/ManifestEntryVerifier;->digests:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v7, p0, Lsun/security/util/ManifestEntryVerifier;->manifestHashes:Ljava/util/ArrayList;

    iget-object v8, p0, Lsun/security/util/ManifestEntryVerifier;->decoder:Lsun/misc/BASE64Decoder;

    .line 149
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, Lsun/misc/BASE64Decoder;->decodeBuffer(Ljava/lang/String;)[B

    move-result-object v5

    .line 148
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public update(B)V
    .locals 2
    .param p1, "buffer"    # B

    .prologue
    .line 159
    iget-boolean v1, p0, Lsun/security/util/ManifestEntryVerifier;->skip:Z

    if-eqz v1, :cond_1

    .line 164
    :cond_0
    return-void

    .line 161
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/security/util/ManifestEntryVerifier;->digests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 162
    iget-object v1, p0, Lsun/security/util/ManifestEntryVerifier;->digests:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/MessageDigest;

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update(B)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public update([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 170
    iget-boolean v1, p0, Lsun/security/util/ManifestEntryVerifier;->skip:Z

    if-eqz v1, :cond_1

    .line 175
    :cond_0
    return-void

    .line 172
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/security/util/ManifestEntryVerifier;->digests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 173
    iget-object v1, p0, Lsun/security/util/ManifestEntryVerifier;->digests:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/MessageDigest;

    invoke-virtual {v1, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public verify(Ljava/util/Hashtable;Ljava/util/Hashtable;)[Ljava/security/CodeSigner;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/CodeSigner;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/CodeSigner;",
            ">;)[",
            "Ljava/security/CodeSigner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/jar/JarException;
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "verifiedSigners":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    .local p2, "sigFileSigners":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    iget-boolean v4, p0, Lsun/security/util/ManifestEntryVerifier;->skip:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 226
    :goto_0
    return-object v4

    .line 199
    :cond_0
    iget-object v4, p0, Lsun/security/util/ManifestEntryVerifier;->signers:[Ljava/security/CodeSigner;

    if-eqz v4, :cond_1

    .line 200
    iget-object v4, p0, Lsun/security/util/ManifestEntryVerifier;->signers:[Ljava/security/CodeSigner;

    goto :goto_0

    .line 202
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lsun/security/util/ManifestEntryVerifier;->digests:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 204
    iget-object v4, p0, Lsun/security/util/ManifestEntryVerifier;->digests:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    .line 205
    .local v0, "digest":Ljava/security/MessageDigest;
    iget-object v4, p0, Lsun/security/util/ManifestEntryVerifier;->manifestHashes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 206
    .local v2, "manHash":[B
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 208
    .local v3, "theHash":[B
    sget-object v4, Lsun/security/util/ManifestEntryVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_2

    .line 209
    sget-object v4, Lsun/security/util/ManifestEntryVerifier;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Manifest Entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lsun/security/util/ManifestEntryVerifier;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " digest="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 210
    invoke-virtual {v0}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 209
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 211
    sget-object v4, Lsun/security/util/ManifestEntryVerifier;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  manifest "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lsun/security/util/ManifestEntryVerifier;->toHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 212
    sget-object v4, Lsun/security/util/ManifestEntryVerifier;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  computed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lsun/security/util/ManifestEntryVerifier;->toHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 213
    sget-object v4, Lsun/security/util/ManifestEntryVerifier;->debug:Lsun/security/util/Debug;

    invoke-virtual {v4}, Lsun/security/util/Debug;->println()V

    .line 216
    :cond_2
    invoke-static {v3, v2}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v4

    if-nez v4, :cond_3

    .line 217
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " digest error for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lsun/security/util/ManifestEntryVerifier;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 202
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 222
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "manHash":[B
    .end local v3    # "theHash":[B
    :cond_4
    iget-object v4, p0, Lsun/security/util/ManifestEntryVerifier;->name:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/security/CodeSigner;

    iput-object v4, p0, Lsun/security/util/ManifestEntryVerifier;->signers:[Ljava/security/CodeSigner;

    .line 223
    iget-object v4, p0, Lsun/security/util/ManifestEntryVerifier;->signers:[Ljava/security/CodeSigner;

    if-eqz v4, :cond_5

    .line 224
    iget-object v4, p0, Lsun/security/util/ManifestEntryVerifier;->name:Ljava/lang/String;

    iget-object v5, p0, Lsun/security/util/ManifestEntryVerifier;->signers:[Ljava/security/CodeSigner;

    invoke-virtual {p1, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_5
    iget-object v4, p0, Lsun/security/util/ManifestEntryVerifier;->signers:[Ljava/security/CodeSigner;

    goto/16 :goto_0
.end method
