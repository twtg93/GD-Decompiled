.class public Lcom/robtopx/geometryjump/XORCrypt;
.super Ljava/lang/Object;
.source "XORCrypt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dec(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "frase"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 10
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/robtopx/geometryjump/XORCrypt;->encrypt(Ljava/lang/String;Ljava/lang/String;)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private static encrypt(Ljava/lang/String;Ljava/lang/String;)[C
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-array v2, v3, [C

    .line 16
    .local v2, "output":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    rem-int v4, v0, v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    xor-int v1, v3, v4

    .line 18
    .local v1, "o":I
    int-to-char v3, v1

    aput-char v3, v2, v0

    .line 16
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20
    .end local v1    # "o":I
    :cond_0
    return-object v2
.end method
