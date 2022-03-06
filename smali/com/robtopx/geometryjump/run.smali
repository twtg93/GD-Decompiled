.class public Lcom/robtopx/geometryjump/run;
.super Ljava/lang/Object;
.source "run.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "native-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getiIndStringa(Ljava/lang/String;)J
.end method

.method public static runMod()V
    .locals 32

    .prologue
    .line 31
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    .line 33
    .local v13, "id":I
    const-string/jumbo v17, "libcocos2dcpp.so"

    .line 39
    .local v17, "lib":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/robtopx/geometryjump/memoryTools;->findLocation(ILjava/lang/String;)J

    move-result-wide v18

    .line 43
    .local v18, "libAddr2":J
    new-instance v29, Ljava/io/File;

    sget-object v30, Lcom/robtopx/geometryjump/memoryTools;->folder:Ljava/lang/String;

    invoke-direct/range {v29 .. v30}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->length()J

    move-result-wide v24

    .line 45
    .local v24, "size":J
    move-wide/from16 v0, v18

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Lcom/robtopx/geometryjump/memoryTools;->mprotect(JJ)I

    .line 47
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "MEDIA_PATH":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "Android/data/com.robtopx.geometryjump/.files/.data"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->mkdirs()Z

    .line 51
    const/4 v14, 0x0

    .line 52
    .local v14, "input":Ljava/util/Scanner;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v20, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v15, Ljava/util/Scanner;

    invoke-direct {v15, v11}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    .end local v14    # "input":Ljava/util/Scanner;
    .local v15, "input":Ljava/util/Scanner;
    :goto_0
    :try_start_1
    invoke-virtual {v15}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v29

    if-eqz v29, :cond_1

    .line 57
    invoke-virtual {v15}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v27

    .line 58
    .local v27, "v":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/robtopx/geometryjump/AESenc;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 59
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 61
    .end local v27    # "v":Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v14, v15

    .line 62
    .end local v15    # "input":Ljava/util/Scanner;
    .local v10, "e":Ljava/io/FileNotFoundException;
    .restart local v14    # "input":Ljava/util/Scanner;
    :goto_1
    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 69
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_2
    move-wide/from16 v0, v18

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Lcom/robtopx/geometryjump/memoryTools;->createByteBuffer(JJ)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 70
    .local v5, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v12, 0x0

    .local v12, "g":I
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v12, v0, :cond_4

    .line 74
    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    const-string/jumbo v30, "-"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 75
    .local v22, "part":[Ljava/lang/String;
    const/16 v29, 0x0

    aget-object v29, v22, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 77
    .local v8, "cs":I
    if-nez v8, :cond_2

    .line 78
    const/16 v29, 0x1

    aget-object v29, v22, v29

    const/16 v30, 0x10

    invoke-static/range {v29 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v21

    .line 80
    .local v21, "offSet":I
    const/16 v29, 0x2

    aget-object v29, v22, v29

    move/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1, v5}, Lcom/robtopx/geometryjump/memoryTools;->write(ILjava/lang/String;Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 70
    .end local v21    # "offSet":I
    :cond_0
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .end local v5    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v8    # "cs":I
    .end local v12    # "g":I
    .end local v14    # "input":Ljava/util/Scanner;
    .end local v22    # "part":[Ljava/lang/String;
    .restart local v15    # "input":Ljava/util/Scanner;
    :cond_1
    move-object v14, v15

    .line 65
    .end local v15    # "input":Ljava/util/Scanner;
    .restart local v14    # "input":Ljava/util/Scanner;
    goto :goto_2

    .line 63
    :catch_1
    move-exception v10

    .line 64
    .local v10, "e":Ljava/lang/Exception;
    :goto_5
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 81
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v5    # "byteBuffer":Ljava/nio/ByteBuffer;
    .restart local v8    # "cs":I
    .restart local v12    # "g":I
    .restart local v22    # "part":[Ljava/lang/String;
    :cond_2
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v8, v0, :cond_0

    .line 82
    const/16 v29, 0x1

    :try_start_3
    aget-object v29, v22, v29

    const/16 v30, 0x10

    invoke-static/range {v29 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v21

    .line 83
    .restart local v21    # "offSet":I
    const/16 v29, 0x2

    aget-object v29, v22, v29

    const/16 v30, 0x10

    invoke-static/range {v29 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 84
    .local v9, "daRimuovere":I
    const/16 v29, 0x3

    aget-object v26, v22, v29

    .line 85
    .local v26, "text":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/robtopx/geometryjump/run;->getiIndStringa(Ljava/lang/String;)J

    move-result-wide v6

    .line 87
    .local v6, "a":J
    sub-long v6, v6, v18

    .line 89
    int-to-long v0, v9

    move-wide/from16 v30, v0

    sub-long v6, v6, v30

    .line 91
    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v28

    .line 92
    .local v28, "val":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v28

    .line 93
    const-string/jumbo v23, ""

    .line 96
    .local v23, "temp":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v29

    add-int/lit8 v16, v29, -0x1

    .local v16, "k":I
    :goto_6
    if-lez v16, :cond_3

    .line 97
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toCharArray()[C

    move-result-object v30

    add-int/lit8 v31, v16, -0x1

    aget-char v30, v30, v31

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toCharArray()[C

    move-result-object v30

    aget-char v30, v30, v16

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 96
    add-int/lit8 v16, v16, -0x2

    goto :goto_6

    .line 100
    :cond_3
    move/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1, v5}, Lcom/robtopx/geometryjump/memoryTools;->write(ILjava/lang/String;Ljava/nio/ByteBuffer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4

    .line 115
    .end local v5    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v6    # "a":J
    .end local v8    # "cs":I
    .end local v9    # "daRimuovere":I
    .end local v12    # "g":I
    .end local v16    # "k":I
    .end local v21    # "offSet":I
    .end local v22    # "part":[Ljava/lang/String;
    .end local v23    # "temp":Ljava/lang/String;
    .end local v26    # "text":Ljava/lang/String;
    .end local v28    # "val":Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 116
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_4
    return-void

    .line 63
    .end local v14    # "input":Ljava/util/Scanner;
    .restart local v15    # "input":Ljava/util/Scanner;
    :catch_3
    move-exception v10

    move-object v14, v15

    .end local v15    # "input":Ljava/util/Scanner;
    .restart local v14    # "input":Ljava/util/Scanner;
    goto/16 :goto_5

    .line 61
    :catch_4
    move-exception v10

    goto/16 :goto_1
.end method
