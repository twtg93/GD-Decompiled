.class public Lsun/security/util/PathList;
.super Ljava/lang/Object;
.source "PathList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pathTo"    # Ljava/lang/String;
    .param p1, "pathFrom"    # Ljava/lang/String;

    .prologue
    .line 47
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object p0, p1

    .line 52
    .end local p0    # "pathTo":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .line 49
    .restart local p0    # "pathTo":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static fileToURL(Ljava/io/File;)Ljava/net/URL;
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 91
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 95
    .local v1, "name":Ljava/lang/String;
    :goto_0
    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 96
    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    :cond_1
    :try_start_1
    new-instance v2, Ljava/net/URL;

    const-string/jumbo v3, "file"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 92
    .end local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 105
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 106
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "file"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static pathToURLs(Ljava/lang/String;)[Ljava/net/URL;
    .locals 9
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 64
    new-instance v2, Ljava/util/StringTokenizer;

    sget-object v6, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v2, p0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .local v2, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v6

    new-array v5, v6, [Ljava/net/URL;

    .line 66
    .local v5, "urls":[Ljava/net/URL;
    const/4 v0, 0x0

    .line 67
    .local v0, "count":I
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 68
    new-instance v6, Ljava/io/File;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lsun/security/util/PathList;->fileToURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v4

    .line 69
    .local v4, "url":Ljava/net/URL;
    if-eqz v4, :cond_0

    .line 70
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    aput-object v4, v5, v0

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_0

    .line 73
    .end local v4    # "url":Ljava/net/URL;
    :cond_1
    array-length v6, v5

    if-eq v6, v0, :cond_2

    .line 74
    new-array v3, v0, [Ljava/net/URL;

    .line 75
    .local v3, "tmp":[Ljava/net/URL;
    invoke-static {v5, v8, v3, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    move-object v5, v3

    .line 78
    .end local v3    # "tmp":[Ljava/net/URL;
    :cond_2
    return-object v5
.end method
