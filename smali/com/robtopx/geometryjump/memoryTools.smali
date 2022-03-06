.class public Lcom/robtopx/geometryjump/memoryTools;
.super Ljava/lang/Object;
.source "memoryTools.java"


# static fields
.field public static folder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, ""

    sput-object v0, Lcom/robtopx/geometryjump/memoryTools;->folder:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "native-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Hex2b(Ljava/lang/String;)[B
    .locals 6
    .param p0, "paramString"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v2, 0x0

    .line 101
    .local v2, "temp":[B
    move-object v1, p0

    .line 102
    .local v1, "str":Ljava/lang/String;
    const-string/jumbo v3, " "

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    const-string/jumbo v3, " "

    const-string/jumbo v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 105
    :cond_0
    if-nez v1, :cond_1

    .line 106
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "hex == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 108
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 109
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected hex string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 111
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    new-array v2, v3, [B

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 115
    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/robtopx/geometryjump/memoryTools;->decodeHexDigit(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/robtopx/geometryjump/memoryTools;->decodeHexDigit(C)I

    move-result v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_3
    return-object v2
.end method

.method public static createByteBuffer(JJ)Ljava/nio/ByteBuffer;
    .locals 8
    .param p0, "paramLong1"    # J
    .param p2, "paramLong2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 73
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 74
    invoke-static {p0, p1, p2, p3}, Lcom/robtopx/geometryjump/memoryTools;->createDirectByteBufferNew(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 78
    :goto_0
    return-object v1

    .line 76
    :cond_0
    const-string/jumbo v1, "java.nio.ReadWriteDirectByteBuffer"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 77
    .local v0, "localConstructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 78
    new-array v1, v6, [Ljava/lang/Object;

    long-to-int v2, p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    long-to-int v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public static createDirectByteBufferNew(JJ)Ljava/nio/ByteBuffer;
    .locals 8
    .param p0, "paramLong1"    # J
    .param p2, "paramLong2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 85
    const-string/jumbo v1, "java.nio.DirectByteBuffer"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 86
    .local v0, "localConstructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 87
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    long-to-int v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method private static decodeHexDigit(C)I
    .locals 3
    .param p0, "paramChar"    # C

    .prologue
    .line 123
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 124
    add-int/lit8 v0, p0, -0x30

    .line 130
    :goto_0
    return v0

    .line 126
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 127
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 129
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    .line 130
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 132
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected hex digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static findLocation(ILjava/lang/String;)J
    .locals 12
    .param p0, "pid"    # I
    .param p1, "libName"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "/proc/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/maps"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 31
    .local v3, "fileLocation":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .local v2, "file":Ljava/io/File;
    const-string/jumbo v5, ""

    .line 33
    .local v5, "text":Ljava/lang/String;
    const/4 v0, 0x0

    .line 34
    .local v0, "a":[Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 37
    .local v6, "t":J
    :try_start_0
    new-instance v4, Ljava/util/Scanner;

    invoke-direct {v4, v2}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 42
    .local v4, "sc":Ljava/util/Scanner;
    :cond_0
    invoke-virtual {v4}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v8

    if-nez v8, :cond_1

    .line 55
    :goto_0
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "LINE = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    const/4 v8, 0x0

    aget-object v8, v0, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v0, v10

    const-string/jumbo v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    .line 60
    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    .line 67
    .end local v4    # "sc":Ljava/util/Scanner;
    :goto_1
    return-wide v6

    .line 46
    .restart local v4    # "sc":Ljava/util/Scanner;
    :cond_1
    invoke-virtual {v4}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v5

    .line 48
    const-string/jumbo v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 50
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v0, v8

    sput-object v8, Lcom/robtopx/geometryjump/memoryTools;->folder:Ljava/lang/String;

    .line 52
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v0, v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    aget-object v8, v0, v8

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    .line 63
    .end local v4    # "sc":Ljava/util/Scanner;
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static native mprotect(JJ)I
.end method

.method public static write(ILjava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p0, "paramInt"    # I
    .param p1, "paramString"    # Ljava/lang/String;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 93
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 94
    invoke-static {p1}, Lcom/robtopx/geometryjump/memoryTools;->Hex2b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 95
    return-void
.end method
