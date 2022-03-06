.class public Lsun/security/x509/AVA;
.super Ljava/lang/Object;
.source "AVA.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# static fields
.field static final DEFAULT:I = 0x1

.field private static final PRESERVE_OLD_DC_ENCODING:Z

.field static final RFC1779:I = 0x2

.field static final RFC2253:I = 0x3

.field private static final debug:Lsun/security/util/Debug;

.field private static final hexDigits:Ljava/lang/String; = "0123456789ABCDEF"

.field private static final specialChars:Ljava/lang/String; = ",+=\n<>#;"

.field private static final specialChars2253:Ljava/lang/String; = ",+\"\\<>;"

.field private static final specialCharsAll:Ljava/lang/String; = ",=\n+<>#;\\\" "


# instance fields
.field final oid:Lsun/security/util/ObjectIdentifier;

.field final value:Lsun/security/util/DerValue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    const-string/jumbo v0, "x509"

    const-string/jumbo v1, "\t[AVA]"

    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AVA;->debug:Lsun/security/util/Debug;

    .line 78
    new-instance v0, Lsun/security/action/GetBooleanAction;

    const-string/jumbo v1, "com.sun.security.preserveOldDCEncoding"

    invoke-direct {v0, v1}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lsun/security/x509/AVA;->PRESERVE_OLD_DC_ENCODING:Z

    .line 78
    return-void
.end method

.method constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;I)V

    .line 144
    return-void
.end method

.method constructor <init>(Ljava/io/Reader;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;ILjava/util/Map;)V

    .line 167
    return-void
.end method

.method constructor <init>(Ljava/io/Reader;ILjava/util/Map;)V
    .locals 5
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v4, 0x20

    const/4 v3, 0x3

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v1, "temp":Ljava/lang/StringBuilder;
    :goto_0
    const-string/jumbo v2, "Incorrect AVA format"

    invoke-static {p1, v2}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v0

    .line 197
    .local v0, "c":I
    const/16 v2, 0x3d

    if-ne v0, v2, :cond_0

    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lsun/security/x509/AVAKeyword;->getOID(Ljava/lang/String;ILjava/util/Map;)Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    .line 210
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 211
    if-ne p2, v3, :cond_1

    .line 213
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    .line 214
    if-ne v0, v4, :cond_2

    .line 215
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Incorrect AVA RFC2253 format - leading space must be escaped"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 200
    :cond_0
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    .line 222
    if-eq v0, v4, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    .line 224
    :cond_2
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 226
    new-instance v2, Lsun/security/util/DerValue;

    const-string/jumbo v3, ""

    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    .line 237
    :goto_1
    return-void

    .line 230
    :cond_3
    const/16 v2, 0x23

    if-ne v0, v2, :cond_4

    .line 231
    invoke-static {p1, p2}, Lsun/security/x509/AVA;->parseHexString(Ljava/io/Reader;I)Lsun/security/util/DerValue;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    goto :goto_1

    .line 232
    :cond_4
    const/16 v2, 0x22

    if-ne v0, v2, :cond_5

    if-eq p2, v3, :cond_5

    .line 233
    invoke-direct {p0, p1, v1}, Lsun/security/x509/AVA;->parseQuotedString(Ljava/io/Reader;Ljava/lang/StringBuilder;)Lsun/security/util/DerValue;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    goto :goto_1

    .line 235
    :cond_5
    invoke-direct {p0, p1, v0, p2, v1}, Lsun/security/x509/AVA;->parseString(Ljava/io/Reader;IILjava/lang/StringBuilder;)Lsun/security/util/DerValue;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    goto :goto_1
.end method

.method constructor <init>(Ljava/io/Reader;Ljava/util/Map;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    .local p2, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;ILjava/util/Map;)V

    .line 157
    return-void
.end method

.method constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 632
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/DerValue;)V

    .line 633
    return-void
.end method

.method constructor <init>(Lsun/security/util/DerValue;)V
    .locals 3
    .param p1, "derval"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    iget-byte v0, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    .line 620
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "AVA not a sequence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_0
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    .line 623
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    .line 625
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AVA, extra bytes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 627
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_1
    return-void
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "type"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "val"    # Lsun/security/util/DerValue;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 129
    :cond_1
    iput-object p1, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    .line 130
    iput-object p2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    .line 131
    return-void
.end method

.method private static getEmbeddedHexPair(ILjava/io/Reader;)Ljava/lang/Byte;
    .locals 6
    .param p0, "c1"    # I
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x10

    .line 532
    const-string/jumbo v3, "0123456789ABCDEF"

    int-to-char v4, p0

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_1

    .line 533
    const-string/jumbo v3, "unexpected EOF - escaped hex value must include two valid digits"

    invoke-static {p1, v3}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v0

    .line 536
    .local v0, "c2":I
    const-string/jumbo v3, "0123456789ABCDEF"

    int-to-char v4, v0

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_0

    .line 537
    int-to-char v3, p0

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 538
    .local v1, "hi":I
    int-to-char v3, v0

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 539
    .local v2, "lo":I
    new-instance v3, Ljava/lang/Byte;

    shl-int/lit8 v4, v1, 0x4

    add-int/2addr v4, v2

    int-to-byte v4, v4

    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    .line 545
    .end local v0    # "c2":I
    .end local v1    # "hi":I
    .end local v2    # "lo":I
    :goto_0
    return-object v3

    .line 541
    .restart local v0    # "c2":I
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "escaped hex value must include two valid digits"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 545
    .end local v0    # "c2":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 550
    .local p0, "hexList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 551
    .local v2, "n":I
    new-array v0, v2, [B

    .line 552
    .local v0, "hexBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 553
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v0, v1

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 555
    :cond_0
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3
.end method

.method private static isDerString(Lsun/security/util/DerValue;Z)Z
    .locals 3
    .param p0, "value"    # Lsun/security/util/DerValue;
    .param p1, "canonical"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1022
    if-eqz p1, :cond_0

    .line 1023
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 1040
    :goto_0
    :sswitch_0
    return v0

    .line 1031
    :cond_0
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    sparse-switch v2, :sswitch_data_1

    move v0, v1

    .line 1040
    goto :goto_0

    .line 1023
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0x13 -> :sswitch_0
    .end sparse-switch

    .line 1031
    :sswitch_data_1
    .sparse-switch
        0xc -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1b -> :sswitch_0
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method private static isTerminator(II)Z
    .locals 3
    .param p0, "ch"    # I
    .param p1, "format"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 559
    sparse-switch p0, :sswitch_data_0

    move v0, v1

    .line 568
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 566
    :sswitch_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 559
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_1
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method private static parseHexString(Ljava/io/Reader;I)Lsun/security/util/DerValue;
    .locals 8
    .param p0, "in"    # Ljava/io/Reader;
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 276
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 277
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .line 278
    .local v0, "b":B
    const/4 v3, 0x0

    .line 280
    .local v3, "cNdx":I
    :goto_0
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v2

    .line 282
    .local v2, "c":I
    invoke-static {v2, p1}, Lsun/security/x509/AVA;->isTerminator(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 303
    if-nez v3, :cond_3

    .line 304
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "AVA parse, zero hex digits"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 286
    :cond_0
    const-string/jumbo v5, "0123456789ABCDEF"

    int-to-char v6, v2

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 288
    .local v4, "cVal":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 289
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AVA parse, invalid hex digit: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-char v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 293
    :cond_1
    rem-int/lit8 v5, v3, 0x2

    if-ne v5, v7, :cond_2

    .line 294
    mul-int/lit8 v5, v0, 0x10

    int-to-byte v6, v4

    add-int/2addr v5, v6

    int-to-byte v0, v5

    .line 295
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 299
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 300
    goto :goto_0

    .line 297
    :cond_2
    int-to-byte v0, v4

    goto :goto_1

    .line 308
    .end local v4    # "cVal":I
    :cond_3
    rem-int/lit8 v5, v3, 0x2

    if-ne v5, v7, :cond_4

    .line 309
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "AVA parse, odd number of hex digits"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 312
    :cond_4
    new-instance v5, Lsun/security/util/DerValue;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lsun/security/util/DerValue;-><init>([B)V

    return-object v5
.end method

.method private parseQuotedString(Ljava/io/Reader;Ljava/lang/StringBuilder;)Lsun/security/util/DerValue;
    .locals 9
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "temp"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x5c

    const/16 v7, 0x22

    .line 323
    const-string/jumbo v5, "Quoted string did not end in quote"

    invoke-static {p1, v5}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v0

    .line 325
    .local v0, "c":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v1, "embeddedHex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v4, 0x1

    .line 327
    .local v4, "isPrintableString":Z
    :goto_0
    if-eq v0, v7, :cond_3

    .line 328
    if-ne v0, v8, :cond_1

    .line 329
    const-string/jumbo v5, "Quoted string did not end in quote"

    invoke-static {p1, v5}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v0

    .line 332
    const/4 v2, 0x0

    .line 333
    .local v2, "hexByte":Ljava/lang/Byte;
    invoke-static {v0, p1}, Lsun/security/x509/AVA;->getEmbeddedHexPair(ILjava/io/Reader;)Ljava/lang/Byte;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 336
    const/4 v4, 0x0

    .line 340
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    .line 342
    goto :goto_0

    .line 345
    :cond_0
    if-eq v0, v8, :cond_1

    if-eq v0, v7, :cond_1

    const-string/jumbo v5, ",+=\n<>#;"

    int-to-char v6, v0

    .line 346
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_1

    .line 347
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid escaped character in AVA: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 354
    .end local v2    # "hexByte":Ljava/lang/Byte;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 355
    invoke-static {v1}, Lsun/security/x509/AVA;->getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, "hexString":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 361
    .end local v3    # "hexString":Ljava/lang/String;
    :cond_2
    int-to-char v5, v0

    invoke-static {v5}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v5

    and-int/2addr v4, v5

    .line 362
    int-to-char v5, v0

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    const-string/jumbo v5, "Quoted string did not end in quote"

    invoke-static {p1, v5}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 367
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 368
    invoke-static {v1}, Lsun/security/x509/AVA;->getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 369
    .restart local v3    # "hexString":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 374
    .end local v3    # "hexString":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    .line 375
    const/16 v5, 0xa

    if-eq v0, v5, :cond_4

    const/16 v5, 0x20

    if-eq v0, v5, :cond_4

    .line 376
    const/4 v5, -0x1

    if-eq v0, v5, :cond_5

    .line 377
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "AVA had characters other than whitespace after terminating quote"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 383
    :cond_5
    iget-object v5, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    sget-object v6, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5, v6}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    sget-object v6, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    .line 384
    invoke-virtual {v5, v6}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-boolean v5, Lsun/security/x509/AVA;->PRESERVE_OLD_DC_ENCODING:Z

    if-nez v5, :cond_7

    .line 387
    :cond_6
    new-instance v5, Lsun/security/util/DerValue;

    const/16 v6, 0x16

    .line 388
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lsun/security/util/DerValue;-><init>(BLjava/lang/String;)V

    .line 392
    :goto_1
    return-object v5

    .line 389
    :cond_7
    if-eqz v4, :cond_8

    .line 390
    new-instance v5, Lsun/security/util/DerValue;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 392
    :cond_8
    new-instance v5, Lsun/security/util/DerValue;

    const/16 v6, 0xc

    .line 393
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lsun/security/util/DerValue;-><init>(BLjava/lang/String;)V

    goto :goto_1
.end method

.method private parseString(Ljava/io/Reader;IILjava/lang/StringBuilder;)Lsun/security/util/DerValue;
    .locals 11
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "c"    # I
    .param p3, "format"    # I
    .param p4, "temp"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v0, "embeddedHex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v5, 0x1

    .line 402
    .local v5, "isPrintableString":Z
    const/4 v1, 0x0

    .line 403
    .local v1, "escape":Z
    const/4 v6, 0x1

    .line 404
    .local v6, "leadingChar":Z
    const/4 v7, 0x0

    .line 406
    .local v7, "spaceCount":I
    :cond_0
    const/4 v1, 0x0

    .line 407
    const/16 v8, 0x5c

    if-ne p2, v8, :cond_7

    .line 408
    const/4 v1, 0x1

    .line 409
    const-string/jumbo v8, "Invalid trailing backslash"

    invoke-static {p1, v8}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result p2

    .line 412
    const/4 v2, 0x0

    .line 413
    .local v2, "hexByte":Ljava/lang/Byte;
    invoke-static {p2, p1}, Lsun/security/x509/AVA;->getEmbeddedHexPair(ILjava/io/Reader;)Ljava/lang/Byte;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 416
    const/4 v5, 0x0

    .line 420
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result p2

    .line 422
    const/4 v6, 0x0

    .line 501
    .end local v2    # "hexByte":Ljava/lang/Byte;
    :goto_0
    invoke-static {p2, p3}, Lsun/security/x509/AVA;->isTerminator(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 503
    const/4 v8, 0x3

    if-ne p3, v8, :cond_d

    if-lez v7, :cond_d

    .line 504
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Incorrect AVA RFC2253 format - trailing space must be escaped"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 427
    .restart local v2    # "hexByte":Ljava/lang/Byte;
    :cond_1
    const/4 v8, 0x1

    if-ne p3, v8, :cond_2

    const-string/jumbo v8, ",=\n+<>#;\\\" "

    int-to-char v9, p2

    .line 428
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    :cond_2
    const/4 v8, 0x2

    if-ne p3, v8, :cond_4

    const-string/jumbo v8, ",+=\n<>#;"

    int-to-char v9, p2

    .line 430
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    const/16 v8, 0x5c

    if-eq p2, v8, :cond_4

    const/16 v8, 0x22

    if-eq p2, v8, :cond_4

    .line 433
    :cond_3
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid escaped character in AVA: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-char v10, p2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 437
    :cond_4
    const/4 v8, 0x3

    if-ne p3, v8, :cond_8

    .line 438
    const/16 v8, 0x20

    if-ne p2, v8, :cond_5

    .line 440
    if-nez v6, :cond_8

    invoke-static {p1}, Lsun/security/x509/AVA;->trailingSpace(Ljava/io/Reader;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 441
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Invalid escaped space character in AVA.  Only a leading or trailing space character can be escaped."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 446
    :cond_5
    const/16 v8, 0x23

    if-ne p2, v8, :cond_6

    .line 448
    if-nez v6, :cond_8

    .line 449
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Invalid escaped \'#\' character in AVA.  Only a leading \'#\' can be escaped."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 453
    :cond_6
    const-string/jumbo v8, ",+\"\\<>;"

    int-to-char v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_8

    .line 454
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid escaped character in AVA: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-char v10, p2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 463
    .end local v2    # "hexByte":Ljava/lang/Byte;
    :cond_7
    const/4 v8, 0x3

    if-ne p3, v8, :cond_8

    .line 464
    const-string/jumbo v8, ",+\"\\<>;"

    int-to-char v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_8

    .line 465
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Character \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-char v10, p2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\' in AVA appears without escape"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 473
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_a

    .line 475
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_9

    .line 476
    const-string/jumbo v8, " "

    invoke-virtual {p4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 478
    :cond_9
    const/4 v7, 0x0

    .line 480
    invoke-static {v0}, Lsun/security/x509/AVA;->getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 481
    .local v3, "hexString":Ljava/lang/String;
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 486
    .end local v3    # "hexString":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_a
    int-to-char v8, p2

    invoke-static {v8}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v8

    and-int/2addr v5, v8

    .line 487
    const/16 v8, 0x20

    if-ne p2, v8, :cond_b

    if-nez v1, :cond_b

    .line 490
    add-int/lit8 v7, v7, 0x1

    .line 499
    :goto_2
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result p2

    .line 500
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 493
    :cond_b
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v7, :cond_c

    .line 494
    const-string/jumbo v8, " "

    invoke-virtual {p4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 496
    :cond_c
    const/4 v7, 0x0

    .line 497
    int-to-char v8, p2

    invoke-virtual {p4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 509
    .end local v4    # "i":I
    :cond_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_e

    .line 510
    invoke-static {v0}, Lsun/security/x509/AVA;->getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 511
    .restart local v3    # "hexString":Ljava/lang/String;
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 517
    .end local v3    # "hexString":Ljava/lang/String;
    :cond_e
    iget-object v8, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    sget-object v9, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v8, v9}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v8

    if-nez v8, :cond_f

    iget-object v8, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    sget-object v9, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    .line 518
    invoke-virtual {v8, v9}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v8

    if-eqz v8, :cond_10

    sget-boolean v8, Lsun/security/x509/AVA;->PRESERVE_OLD_DC_ENCODING:Z

    if-nez v8, :cond_10

    .line 521
    :cond_f
    new-instance v8, Lsun/security/util/DerValue;

    const/16 v9, 0x16

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lsun/security/util/DerValue;-><init>(BLjava/lang/String;)V

    .line 525
    :goto_4
    return-object v8

    .line 522
    :cond_10
    if-eqz v5, :cond_11

    .line 523
    new-instance v8, Lsun/security/util/DerValue;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 525
    :cond_11
    new-instance v8, Lsun/security/util/DerValue;

    const/16 v9, 0xc

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lsun/security/util/DerValue;-><init>(BLjava/lang/String;)V

    goto :goto_4
.end method

.method private static readChar(Ljava/io/Reader;Ljava/lang/String;)I
    .locals 2
    .param p0, "in"    # Ljava/io/Reader;
    .param p1, "errMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 573
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 574
    .local v0, "c":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 575
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 577
    :cond_0
    return v0
.end method

.method private toKeyword(ILjava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 683
    .local p2, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-static {v0, p1, p2}, Lsun/security/x509/AVAKeyword;->getKeyword(Lsun/security/util/ObjectIdentifier;ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toKeywordValueString(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 1055
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v15, 0x28

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1057
    .local v10, "retval":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    const-string/jumbo v15, "="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    invoke-virtual {v15}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v13

    .line 1063
    .local v13, "valStr":Ljava/lang/String;
    if-nez v13, :cond_0

    .line 1070
    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    invoke-virtual {v15}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v2

    .line 1072
    .local v2, "data":[B
    const/16 v15, 0x23

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1073
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v15, v2

    if-ge v6, v15, :cond_f

    .line 1074
    const-string/jumbo v15, "0123456789ABCDEF"

    aget-byte v16, v2, v6

    shr-int/lit8 v16, v16, 0x4

    and-int/lit8 v16, v16, 0xf

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1075
    const-string/jumbo v15, "0123456789ABCDEF"

    aget-byte v16, v2, v6

    and-int/lit8 v16, v16, 0xf

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1073
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1080
    .end local v2    # "data":[B
    .end local v6    # "i":I
    :cond_0
    const/4 v9, 0x0

    .line 1081
    .local v9, "quoteNeeded":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1082
    .local v11, "sbuffer":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 1083
    .local v8, "previousWhite":Z
    const-string/jumbo v4, ",+=\n<>#;\\\""

    .line 1090
    .local v4, "escapees":Ljava/lang/String;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v6, v15, :cond_c

    .line 1091
    invoke-virtual {v13, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1092
    .local v1, "c":C
    invoke-static {v1}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v15

    if-nez v15, :cond_1

    const-string/jumbo v15, ",+=\n<>#;\\\""

    .line 1093
    invoke-virtual {v15, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-ltz v15, :cond_a

    .line 1096
    :cond_1
    if-nez v9, :cond_4

    if-nez v6, :cond_2

    const/16 v15, 0x20

    if-eq v1, v15, :cond_3

    const/16 v15, 0xa

    if-eq v1, v15, :cond_3

    :cond_2
    const-string/jumbo v15, ",+=\n<>#;\\\""

    .line 1098
    invoke-virtual {v15, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-ltz v15, :cond_4

    .line 1099
    :cond_3
    const/4 v9, 0x1

    .line 1103
    :cond_4
    const/16 v15, 0x20

    if-eq v1, v15, :cond_8

    const/16 v15, 0xa

    if-eq v1, v15, :cond_8

    .line 1105
    const/16 v15, 0x22

    if-eq v1, v15, :cond_5

    const/16 v15, 0x5c

    if-ne v1, v15, :cond_6

    .line 1106
    :cond_5
    const/16 v15, 0x5c

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1108
    :cond_6
    const/4 v8, 0x0

    .line 1116
    :goto_2
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1090
    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1110
    :cond_8
    if-nez v9, :cond_9

    if-eqz v8, :cond_9

    .line 1111
    const/4 v9, 0x1

    .line 1113
    :cond_9
    const/4 v8, 0x1

    goto :goto_2

    .line 1118
    :cond_a
    sget-object v15, Lsun/security/x509/AVA;->debug:Lsun/security/util/Debug;

    if-eqz v15, :cond_b

    const-string/jumbo v15, "ava"

    invoke-static {v15}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 1123
    const/4 v8, 0x0

    .line 1127
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "UTF8"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    .line 1128
    .local v14, "valueBytes":[B
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_4
    array-length v15, v14

    if-ge v7, v15, :cond_7

    .line 1129
    const/16 v15, 0x5c

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1130
    aget-byte v15, v14, v7

    ushr-int/lit8 v15, v15, 0x4

    and-int/lit8 v15, v15, 0xf

    const/16 v16, 0x10

    .line 1131
    invoke-static/range {v15 .. v16}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    .line 1132
    .local v5, "hexChar":C
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1133
    aget-byte v15, v14, v7

    and-int/lit8 v15, v15, 0xf

    const/16 v16, 0x10

    .line 1134
    invoke-static/range {v15 .. v16}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    .line 1135
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1128
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1141
    .end local v5    # "hexChar":C
    .end local v7    # "j":I
    .end local v14    # "valueBytes":[B
    :cond_b
    const/4 v8, 0x0

    .line 1142
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1161
    .end local v1    # "c":C
    .end local v4    # "escapees":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v8    # "previousWhite":Z
    .end local v9    # "quoteNeeded":Z
    .end local v11    # "sbuffer":Ljava/lang/StringBuilder;
    .end local v13    # "valStr":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1162
    .local v3, "e":Ljava/io/IOException;
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v16, "DER Value conversion"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1147
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "escapees":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v8    # "previousWhite":Z
    .restart local v9    # "quoteNeeded":Z
    .restart local v11    # "sbuffer":Ljava/lang/StringBuilder;
    .restart local v13    # "valStr":Ljava/lang/String;
    :cond_c
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_e

    .line 1148
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v12

    .line 1149
    .local v12, "trailChar":C
    const/16 v15, 0x20

    if-eq v12, v15, :cond_d

    const/16 v15, 0xa

    if-ne v12, v15, :cond_e

    .line 1150
    :cond_d
    const/4 v9, 0x1

    .line 1155
    .end local v12    # "trailChar":C
    :cond_e
    if-eqz v9, :cond_10

    .line 1156
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1165
    .end local v4    # "escapees":Ljava/lang/String;
    .end local v8    # "previousWhite":Z
    .end local v9    # "quoteNeeded":Z
    .end local v11    # "sbuffer":Ljava/lang/StringBuilder;
    :cond_f
    :goto_5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    return-object v15

    .line 1158
    .restart local v4    # "escapees":Ljava/lang/String;
    .restart local v8    # "previousWhite":Z
    .restart local v9    # "quoteNeeded":Z
    .restart local v11    # "sbuffer":Ljava/lang/StringBuilder;
    :cond_10
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5
.end method

.method private static trailingSpace(Ljava/io/Reader;)Z
    .locals 5
    .param p0, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 582
    const/4 v2, 0x0

    .line 584
    .local v2, "trailing":Z
    invoke-virtual {p0}, Ljava/io/Reader;->markSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 586
    const/4 v3, 0x1

    .line 612
    :goto_0
    return v3

    .line 591
    :cond_0
    const/16 v3, 0x270f

    invoke-virtual {p0, v3}, Ljava/io/Reader;->mark(I)V

    .line 593
    :cond_1
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v1

    .line 594
    .local v1, "nextChar":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 595
    const/4 v2, 0x1

    .line 611
    :goto_1
    invoke-virtual {p0}, Ljava/io/Reader;->reset()V

    move v3, v2

    .line 612
    goto :goto_0

    .line 597
    :cond_2
    if-eq v1, v4, :cond_1

    .line 599
    const/16 v3, 0x5c

    if-ne v1, v3, :cond_3

    .line 600
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 601
    .local v0, "followingChar":I
    if-eq v0, v4, :cond_1

    .line 602
    const/4 v2, 0x0

    .line 603
    goto :goto_1

    .line 606
    .end local v0    # "followingChar":I
    :cond_3
    const/4 v2, 0x0

    .line 607
    goto :goto_1
.end method


# virtual methods
.method public derEncode(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 673
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 674
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 676
    .local v1, "tmp2":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 677
    iget-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    invoke-virtual {v2, v0}, Lsun/security/util/DerValue;->encode(Lsun/security/util/DerOutputStream;)V

    .line 678
    const/16 v2, 0x30

    invoke-virtual {v1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 679
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 680
    return-void
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 0
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 660
    invoke-virtual {p0, p1}, Lsun/security/x509/AVA;->derEncode(Ljava/io/OutputStream;)V

    .line 661
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 636
    if-ne p0, p1, :cond_0

    .line 637
    const/4 v1, 0x1

    .line 643
    :goto_0
    return v1

    .line 639
    :cond_0
    instance-of v1, p1, Lsun/security/x509/AVA;

    if-nez v1, :cond_1

    .line 640
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 642
    check-cast v0, Lsun/security/x509/AVA;

    .line 643
    .local v0, "other":Lsun/security/x509/AVA;
    invoke-virtual {p0}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v1

    .line 644
    invoke-virtual {v0}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getDerValue()Lsun/security/util/DerValue;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    return-object v0
.end method

.method public getObjectIdentifier()Lsun/security/util/ObjectIdentifier;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 261
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    invoke-virtual {v2}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 263
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "AVA string is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AVA error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 265
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "s":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method hasRFC2253Keyword()Z
    .locals 2

    .prologue
    .line 1046
    iget-object v0, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lsun/security/x509/AVAKeyword;->hasKeyword(Lsun/security/util/ObjectIdentifier;I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 653
    invoke-virtual {p0}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toRFC1779String()Ljava/lang/String;
    .locals 1

    .prologue
    .line 701
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/security/x509/AVA;->toRFC1779String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toRFC1779String(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 711
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lsun/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/AVA;->toKeywordValueString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toRFC2253CanonicalString()Ljava/lang/String;
    .locals 15

    .prologue
    .line 884
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v13, 0x28

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 885
    .local v10, "typeAndValue":Ljava/lang/StringBuilder;
    const/4 v13, 0x3

    .line 886
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v14

    invoke-direct {p0, v13, v14}, Lsun/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    const/16 v13, 0x3d

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 898
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    const/16 v14, 0x30

    if-lt v13, v14, :cond_0

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    const/16 v14, 0x39

    if-le v13, v14, :cond_1

    :cond_0
    iget-object v13, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    const/4 v14, 0x1

    .line 899
    invoke-static {v13, v14}, Lsun/security/x509/AVA;->isDerString(Lsun/security/util/DerValue;Z)Z

    move-result v13

    if-nez v13, :cond_2

    .line 901
    :cond_1
    const/4 v3, 0x0

    .line 903
    .local v3, "data":[B
    :try_start_0
    iget-object v13, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    invoke-virtual {v13}, Lsun/security/util/DerValue;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 907
    const/16 v13, 0x23

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 908
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_0
    array-length v13, v3

    if-ge v7, v13, :cond_c

    .line 909
    aget-byte v0, v3, v7

    .line 910
    .local v0, "b":B
    ushr-int/lit8 v13, v0, 0x4

    and-int/lit8 v13, v13, 0xf

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Character;->forDigit(II)C

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 911
    and-int/lit8 v13, v0, 0xf

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Character;->forDigit(II)C

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 908
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 904
    .end local v0    # "b":B
    .end local v7    # "j":I
    :catch_0
    move-exception v6

    .line 905
    .local v6, "ie":Ljava/io/IOException;
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "DER Value conversion"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 922
    .end local v3    # "data":[B
    .end local v6    # "ie":Ljava/io/IOException;
    :cond_2
    const/4 v11, 0x0

    .line 924
    .local v11, "valStr":Ljava/lang/String;
    :try_start_1
    new-instance v11, Ljava/lang/String;

    .end local v11    # "valStr":Ljava/lang/String;
    iget-object v13, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    invoke-virtual {v13}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v13

    const-string/jumbo v14, "UTF8"

    invoke-direct {v11, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 947
    .restart local v11    # "valStr":Ljava/lang/String;
    const-string/jumbo v4, ",+<>;\"\\"

    .line 948
    .local v4, "escapees":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 949
    .local v9, "sbuffer":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 951
    .local v8, "previousWhite":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v5, v13, :cond_b

    .line 952
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 954
    .local v1, "c":C
    invoke-static {v1}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v13

    if-nez v13, :cond_3

    const-string/jumbo v13, ",+<>;\"\\"

    .line 955
    invoke-virtual {v13, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-gez v13, :cond_3

    if-nez v5, :cond_9

    const/16 v13, 0x23

    if-ne v1, v13, :cond_9

    .line 959
    :cond_3
    if-nez v5, :cond_4

    const/16 v13, 0x23

    if-eq v1, v13, :cond_5

    :cond_4
    const-string/jumbo v13, ",+<>;\"\\"

    invoke-virtual {v13, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-ltz v13, :cond_6

    .line 960
    :cond_5
    const/16 v13, 0x5c

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 964
    :cond_6
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v13

    if-nez v13, :cond_8

    .line 965
    const/4 v8, 0x0

    .line 966
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 951
    :cond_7
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 925
    .end local v1    # "c":C
    .end local v4    # "escapees":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v8    # "previousWhite":Z
    .end local v9    # "sbuffer":Ljava/lang/StringBuilder;
    .end local v11    # "valStr":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 926
    .restart local v6    # "ie":Ljava/io/IOException;
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "DER Value conversion"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 968
    .end local v6    # "ie":Ljava/io/IOException;
    .restart local v1    # "c":C
    .restart local v4    # "escapees":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v8    # "previousWhite":Z
    .restart local v9    # "sbuffer":Ljava/lang/StringBuilder;
    .restart local v11    # "valStr":Ljava/lang/String;
    :cond_8
    if-nez v8, :cond_7

    .line 970
    const/4 v8, 0x1

    .line 971
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 978
    :cond_9
    sget-object v13, Lsun/security/x509/AVA;->debug:Lsun/security/util/Debug;

    if-eqz v13, :cond_a

    const-string/jumbo v13, "ava"

    invoke-static {v13}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 983
    const/4 v8, 0x0

    .line 985
    const/4 v12, 0x0

    .line 987
    .local v12, "valueBytes":[B
    :try_start_2
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "UTF8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v12

    .line 992
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_3
    array-length v13, v12

    if-ge v7, v13, :cond_7

    .line 993
    const/16 v13, 0x5c

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 994
    aget-byte v13, v12, v7

    ushr-int/lit8 v13, v13, 0x4

    and-int/lit8 v13, v13, 0xf

    const/16 v14, 0x10

    .line 995
    invoke-static {v13, v14}, Ljava/lang/Character;->forDigit(II)C

    move-result v13

    .line 994
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 996
    aget-byte v13, v12, v7

    and-int/lit8 v13, v13, 0xf

    const/16 v14, 0x10

    .line 997
    invoke-static {v13, v14}, Ljava/lang/Character;->forDigit(II)C

    move-result v13

    .line 996
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 992
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 988
    .end local v7    # "j":I
    :catch_2
    move-exception v6

    .line 989
    .restart local v6    # "ie":Ljava/io/IOException;
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "DER Value conversion"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1003
    .end local v6    # "ie":Ljava/io/IOException;
    .end local v12    # "valueBytes":[B
    :cond_a
    const/4 v8, 0x0

    .line 1004
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1009
    .end local v1    # "c":C
    :cond_b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    .end local v4    # "escapees":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v8    # "previousWhite":Z
    .end local v9    # "sbuffer":Ljava/lang/StringBuilder;
    .end local v11    # "valStr":Ljava/lang/String;
    :cond_c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1013
    .local v2, "canon":Ljava/lang/String;
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v13}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1015
    return-object v2
.end method

.method public toRFC2253String()Ljava/lang/String;
    .locals 1

    .prologue
    .line 720
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/security/x509/AVA;->toRFC2253String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toRFC2253String(Ljava/util/Map;)Ljava/lang/String;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 737
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v15, Ljava/lang/StringBuilder;

    const/16 v18, 0x64

    move/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 738
    .local v15, "typeAndValue":Ljava/lang/StringBuilder;
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lsun/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    const/16 v18, 0x3d

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 750
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v18

    const/16 v19, 0x30

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v18

    const/16 v19, 0x39

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 751
    invoke-static/range {v18 .. v19}, Lsun/security/x509/AVA;->isDerString(Lsun/security/util/DerValue;Z)Z

    move-result v18

    if-nez v18, :cond_2

    .line 753
    :cond_1
    const/4 v6, 0x0

    .line 755
    .local v6, "data":[B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lsun/security/util/DerValue;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 759
    const/16 v18, 0x23

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 760
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_0
    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_10

    .line 761
    aget-byte v3, v6, v11

    .line 762
    .local v3, "b":B
    ushr-int/lit8 v18, v3, 0x4

    and-int/lit8 v18, v18, 0xf

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->forDigit(II)C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 763
    and-int/lit8 v18, v3, 0xf

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->forDigit(II)C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 760
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 756
    .end local v3    # "b":B
    .end local v11    # "j":I
    :catch_0
    move-exception v10

    .line 757
    .local v10, "ie":Ljava/io/IOException;
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "DER Value conversion"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 774
    .end local v6    # "data":[B
    .end local v10    # "ie":Ljava/io/IOException;
    :cond_2
    const/16 v16, 0x0

    .line 776
    .local v16, "valStr":Ljava/lang/String;
    :try_start_1
    new-instance v16, Ljava/lang/String;

    .end local v16    # "valStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v18

    const-string/jumbo v19, "UTF8"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 803
    .restart local v16    # "valStr":Ljava/lang/String;
    const-string/jumbo v7, ",=+<>#;\"\\"

    .line 804
    .local v7, "escapees":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 806
    .local v13, "sbuffer":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_8

    .line 807
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 808
    .local v4, "c":C
    invoke-static {v4}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v18

    if-nez v18, :cond_3

    const-string/jumbo v18, ",=+<>#;\"\\"

    .line 809
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    if-ltz v18, :cond_6

    .line 812
    :cond_3
    const-string/jumbo v18, ",=+<>#;\"\\"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    if-ltz v18, :cond_4

    .line 813
    const/16 v18, 0x5c

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 817
    :cond_4
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 806
    :cond_5
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 777
    .end local v4    # "c":C
    .end local v7    # "escapees":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v13    # "sbuffer":Ljava/lang/StringBuilder;
    .end local v16    # "valStr":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 778
    .restart local v10    # "ie":Ljava/io/IOException;
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "DER Value conversion"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 819
    .end local v10    # "ie":Ljava/io/IOException;
    .restart local v4    # "c":C
    .restart local v7    # "escapees":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v13    # "sbuffer":Ljava/lang/StringBuilder;
    .restart local v16    # "valStr":Ljava/lang/String;
    :cond_6
    sget-object v18, Lsun/security/x509/AVA;->debug:Lsun/security/util/Debug;

    if-eqz v18, :cond_7

    const-string/jumbo v18, "ava"

    invoke-static/range {v18 .. v18}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 823
    const/16 v17, 0x0

    .line 825
    .local v17, "valueBytes":[B
    :try_start_2
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "UTF8"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v17

    .line 830
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_3
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_5

    .line 831
    const/16 v18, 0x5c

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 832
    aget-byte v18, v17, v11

    ushr-int/lit8 v18, v18, 0x4

    and-int/lit8 v18, v18, 0xf

    const/16 v19, 0x10

    .line 833
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    .line 834
    .local v8, "hexChar":C
    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 835
    aget-byte v18, v17, v11

    and-int/lit8 v18, v18, 0xf

    const/16 v19, 0x10

    .line 836
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    .line 837
    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 830
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 826
    .end local v8    # "hexChar":C
    .end local v11    # "j":I
    :catch_2
    move-exception v10

    .line 827
    .restart local v10    # "ie":Ljava/io/IOException;
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "DER Value conversion"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 842
    .end local v10    # "ie":Ljava/io/IOException;
    .end local v17    # "valueBytes":[B
    :cond_7
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 846
    .end local v4    # "c":C
    :cond_8
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 847
    .local v5, "chars":[C
    new-instance v13, Ljava/lang/StringBuilder;

    .end local v13    # "sbuffer":Ljava/lang/StringBuilder;
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 851
    .restart local v13    # "sbuffer":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .local v12, "lead":I
    :goto_4
    array-length v0, v5

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_9

    .line 852
    aget-char v18, v5, v12

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_d

    aget-char v18, v5, v12

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_d

    .line 857
    :cond_9
    array-length v0, v5

    move/from16 v18, v0

    add-int/lit8 v14, v18, -0x1

    .local v14, "trail":I
    :goto_5
    if-ltz v14, :cond_a

    .line 858
    aget-char v18, v5, v14

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    aget-char v18, v5, v14

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    .line 864
    :cond_a
    const/4 v9, 0x0

    :goto_6
    array-length v0, v5

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_f

    .line 865
    aget-char v4, v5, v9

    .line 866
    .restart local v4    # "c":C
    if-lt v9, v12, :cond_b

    if-le v9, v14, :cond_c

    .line 867
    :cond_b
    const/16 v18, 0x5c

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 869
    :cond_c
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 864
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 851
    .end local v4    # "c":C
    .end local v14    # "trail":I
    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 857
    .restart local v14    # "trail":I
    :cond_e
    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    .line 871
    :cond_f
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    .end local v5    # "chars":[C
    .end local v7    # "escapees":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v12    # "lead":I
    .end local v13    # "sbuffer":Ljava/lang/StringBuilder;
    .end local v14    # "trail":I
    .end local v16    # "valStr":Ljava/lang/String;
    :cond_10
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 691
    const/4 v0, 0x1

    .line 692
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lsun/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/AVA;->toKeywordValueString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    return-object v0
.end method
