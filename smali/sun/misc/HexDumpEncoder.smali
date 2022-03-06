.class public Lsun/misc/HexDumpEncoder;
.super Lsun/misc/CharacterEncoder;
.source "HexDumpEncoder.java"


# instance fields
.field private currentByte:I

.field private offset:I

.field private thisLine:[B

.field private thisLineLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lsun/misc/CharacterEncoder;-><init>()V

    .line 52
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lsun/misc/HexDumpEncoder;->thisLine:[B

    return-void
.end method

.method static hexDigit(Ljava/io/PrintStream;B)V
    .locals 3
    .param p0, "p"    # Ljava/io/PrintStream;
    .param p1, "x"    # B

    .prologue
    const/16 v2, 0x9

    .line 57
    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    int-to-char v0, v1

    .line 58
    .local v0, "c":C
    if-le v0, v2, :cond_0

    .line 59
    add-int/lit8 v1, v0, -0xa

    add-int/lit8 v1, v1, 0x41

    int-to-char v0, v1

    .line 62
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->write(I)V

    .line 63
    and-int/lit8 v1, p1, 0xf

    int-to-char v0, v1

    .line 64
    if-le v0, v2, :cond_1

    .line 65
    add-int/lit8 v1, v0, -0xa

    add-int/lit8 v1, v1, 0x41

    int-to-char v0, v1

    .line 68
    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->write(I)V

    .line 69
    return-void

    .line 61
    :cond_0
    add-int/lit8 v1, v0, 0x30

    int-to-char v0, v1

    goto :goto_0

    .line 67
    :cond_1
    add-int/lit8 v1, v0, 0x30

    int-to-char v0, v1

    goto :goto_1
.end method


# virtual methods
.method protected bytesPerAtom()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method protected bytesPerLine()I
    .locals 1

    .prologue
    .line 76
    const/16 v0, 0x10

    return v0
.end method

.method protected encodeAtom(Ljava/io/OutputStream;[BII)V
    .locals 3
    .param p1, "o"    # Ljava/io/OutputStream;
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lsun/misc/HexDumpEncoder;->thisLine:[B

    iget v1, p0, Lsun/misc/HexDumpEncoder;->currentByte:I

    aget-byte v2, p2, p3

    aput-byte v2, v0, v1

    .line 94
    iget-object v0, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    aget-byte v1, p2, p3

    invoke-static {v0, v1}, Lsun/misc/HexDumpEncoder;->hexDigit(Ljava/io/PrintStream;B)V

    .line 95
    iget-object v0, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 96
    iget v0, p0, Lsun/misc/HexDumpEncoder;->currentByte:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/misc/HexDumpEncoder;->currentByte:I

    .line 97
    iget v0, p0, Lsun/misc/HexDumpEncoder;->currentByte:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method

.method protected encodeBufferPrefix(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "o"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lsun/misc/HexDumpEncoder;->offset:I

    .line 81
    invoke-super {p0, p1}, Lsun/misc/CharacterEncoder;->encodeBufferPrefix(Ljava/io/OutputStream;)V

    .line 82
    return-void
.end method

.method protected encodeLinePrefix(Ljava/io/OutputStream;I)V
    .locals 2
    .param p1, "o"    # Ljava/io/OutputStream;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    iget v1, p0, Lsun/misc/HexDumpEncoder;->offset:I

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lsun/misc/HexDumpEncoder;->hexDigit(Ljava/io/PrintStream;B)V

    .line 86
    iget-object v0, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    iget v1, p0, Lsun/misc/HexDumpEncoder;->offset:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lsun/misc/HexDumpEncoder;->hexDigit(Ljava/io/PrintStream;B)V

    .line 87
    iget-object v0, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lsun/misc/HexDumpEncoder;->currentByte:I

    .line 89
    iput p2, p0, Lsun/misc/HexDumpEncoder;->thisLineLength:I

    .line 90
    return-void
.end method

.method protected encodeLineSuffix(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "o"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x10

    .line 102
    iget v1, p0, Lsun/misc/HexDumpEncoder;->thisLineLength:I

    if-ge v1, v3, :cond_1

    .line 103
    iget v0, p0, Lsun/misc/HexDumpEncoder;->thisLineLength:I

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 104
    iget-object v1, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string/jumbo v2, "   "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 105
    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 106
    iget-object v1, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 103
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Lsun/misc/HexDumpEncoder;->thisLineLength:I

    if-ge v0, v1, :cond_4

    .line 111
    iget-object v1, p0, Lsun/misc/HexDumpEncoder;->thisLine:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x20

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lsun/misc/HexDumpEncoder;->thisLine:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x7a

    if-le v1, v2, :cond_3

    .line 112
    :cond_2
    iget-object v1, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 110
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 114
    :cond_3
    iget-object v1, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    iget-object v2, p0, Lsun/misc/HexDumpEncoder;->thisLine:[B

    aget-byte v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->write(I)V

    goto :goto_2

    .line 117
    :cond_4
    iget-object v1, p0, Lsun/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 118
    iget v1, p0, Lsun/misc/HexDumpEncoder;->offset:I

    iget v2, p0, Lsun/misc/HexDumpEncoder;->thisLineLength:I

    add-int/2addr v1, v2

    iput v1, p0, Lsun/misc/HexDumpEncoder;->offset:I

    .line 119
    return-void
.end method
