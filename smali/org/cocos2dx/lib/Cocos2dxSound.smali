.class public Lorg/cocos2dx/lib/Cocos2dxSound;
.super Ljava/lang/Object;
.source "Cocos2dxSound.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;,
        Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;
    }
.end annotation


# static fields
.field private static final INVALID_SOUND_ID:I = -0x1

.field private static final INVALID_STREAM_ID:I = -0x1

.field public static final MAX_SIMULTANEOUS_STREAMS_DEFAULT:I = 0x5

.field public static final MAX_SIMULTANEOUS_STREAMS_I9100:I = 0x3

.field private static final SOUND_PRIORITY:I = 0x1

.field private static final SOUND_QUALITY:I = 0x5

.field private static final SOUND_RATE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "Cocos2dxSound"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEffecToPlayWhenLoadedArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftVolume:F

.field private final mPathSoundIDMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPathStreamIDsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRightVolume:F

.field private mSemaphore:Ljava/util/concurrent/Semaphore;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStreamIdSyn:I

.field private simultaneousStreams:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "simultaneousStreams"    # I

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mEffecToPlayWhenLoadedArray:Ljava/util/ArrayList;

    .line 81
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mContext:Landroid/content/Context;

    .line 82
    invoke-direct {p0, p2}, Lorg/cocos2dx/lib/Cocos2dxSound;->initData(I)V

    .line 83
    return-void
.end method

.method static synthetic access$0(Lorg/cocos2dx/lib/Cocos2dxSound;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mEffecToPlayWhenLoadedArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lorg/cocos2dx/lib/Cocos2dxSound;Ljava/lang/String;IZFFF)I
    .locals 1

    .prologue
    .line 290
    invoke-direct/range {p0 .. p6}, Lorg/cocos2dx/lib/Cocos2dxSound;->doPlayEffect(Ljava/lang/String;IZFFF)I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lorg/cocos2dx/lib/Cocos2dxSound;I)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mStreamIdSyn:I

    return-void
.end method

.method static synthetic access$3(Lorg/cocos2dx/lib/Cocos2dxSound;)Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method private doPlayEffect(Ljava/lang/String;IZFFF)I
    .locals 12
    .param p1, "pPath"    # Ljava/lang/String;
    .param p2, "soundId"    # I
    .param p3, "pLoop"    # Z
    .param p4, "pitch"    # F
    .param p5, "pan"    # F
    .param p6, "gain"    # F

    .prologue
    .line 292
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v5, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mLeftVolume:F

    mul-float v5, v5, p6

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v11, v11, p5

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    mul-float/2addr v5, v9

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 293
    .local v2, "leftVolume":F
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v5, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mRightVolume:F

    mul-float v5, v5, p6

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    add-float v11, v11, p5

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    mul-float/2addr v5, v9

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 294
    .local v3, "rightVolume":F
    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v5, v5, p4

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 296
    .local v6, "soundRate":F
    const/4 v4, 0x1

    .line 297
    .local v4, "prio":I
    if-eqz p3, :cond_0

    const/4 v4, 0x2

    .line 300
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    if-eqz p3, :cond_2

    const/4 v5, -0x1

    :goto_0
    move v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 304
    .local v7, "streamID":I
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 305
    .local v8, "streamIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v8, :cond_1

    .line 306
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "streamIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .restart local v8    # "streamIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    return v7

    .line 300
    .end local v7    # "streamID":I
    .end local v8    # "streamIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private initData(I)V
    .locals 4
    .param p1, "simultaneousStreams"    # I

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 86
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    const/4 v2, 0x5

    invoke-direct {v0, p1, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    .line 87
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;-><init>(Lorg/cocos2dx/lib/Cocos2dxSound;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 89
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mLeftVolume:F

    .line 90
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->simultaneousStreams:I

    .line 91
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mRightVolume:F

    .line 93
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 94
    return-void
.end method


# virtual methods
.method public createSoundIDFromAsset(Ljava/lang/String;)I
    .locals 5
    .param p1, "pPath"    # Ljava/lang/String;

    .prologue
    .line 269
    const/4 v1, -0x1

    .line 272
    .local v1, "soundID":I
    :try_start_0
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    .line 283
    :goto_0
    if-nez v1, :cond_0

    .line 284
    const/4 v1, -0x1

    .line 287
    :cond_0
    return v1

    .line 275
    :cond_1
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    .line 279
    const-string v2, "Cocos2dxSound"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public end()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 257
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 258
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 259
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 260
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mEffecToPlayWhenLoadedArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 262
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mLeftVolume:F

    .line 263
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mRightVolume:F

    .line 265
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->simultaneousStreams:I

    invoke-direct {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->initData(I)V

    .line 266
    return-void
.end method

.method public getEffectsVolume()F
    .locals 2

    .prologue
    .line 230
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mLeftVolume:F

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mRightVolume:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public pauseAllEffects()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoPause()V

    .line 196
    return-void
.end method

.method public pauseEffect(I)V
    .locals 1
    .param p1, "pStreamID"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->pause(I)V

    .line 188
    return-void
.end method

.method public playEffect(Ljava/lang/String;ZFFF)I
    .locals 13
    .param p1, "pPath"    # Ljava/lang/String;
    .param p2, "pLoop"    # Z
    .param p3, "pitch"    # F
    .param p4, "pan"    # F
    .param p5, "gain"    # F

    .prologue
    .line 141
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 142
    .local v9, "soundID":Ljava/lang/Integer;
    const/4 v10, -0x1

    .line 144
    .local v10, "streamID":I
    if-eqz v9, :cond_0

    .line 146
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxSound;->doPlayEffect(Ljava/lang/String;IZFFF)I

    move-result v10

    :goto_0
    move v0, v10

    .line 171
    :goto_1
    return v0

    .line 149
    :cond_0
    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxSound;->preloadEffect(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 150
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 152
    const/4 v0, -0x1

    goto :goto_1

    .line 156
    :cond_1
    iget-object v11, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    monitor-enter v11

    .line 158
    :try_start_0
    iget-object v12, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mEffecToPlayWhenLoadedArray:Ljava/util/ArrayList;

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;-><init>(Lorg/cocos2dx/lib/Cocos2dxSound;Ljava/lang/String;IZFFF)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :try_start_1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 164
    iget v10, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mStreamIdSyn:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :try_start_2
    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 165
    :catch_0
    move-exception v8

    .line 166
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, -0x1

    goto :goto_1
.end method

.method public preloadEffect(Ljava/lang/String;)I
    .locals 3
    .param p1, "pPath"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 111
    .local v0, "soundID":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxSound;->createSoundIDFromAsset(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 115
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public resumeAllEffects()V
    .locals 5

    .prologue
    .line 201
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 202
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 203
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 210
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    :cond_1
    return-void

    .line 204
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 205
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 206
    .local v2, "pStreamID":I
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v3, v2}, Landroid/media/SoundPool;->resume(I)V

    goto :goto_0
.end method

.method public resumeEffect(I)V
    .locals 1
    .param p1, "pStreamID"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->resume(I)V

    .line 192
    return-void
.end method

.method public setEffectsVolume(F)V
    .locals 7
    .param p1, "pVolume"    # F

    .prologue
    .line 235
    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    .line 236
    const/4 p1, 0x0

    .line 238
    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    .line 239
    const/high16 p1, 0x3f800000    # 1.0f

    .line 242
    :cond_1
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mRightVolume:F

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mLeftVolume:F

    .line 245
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 246
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 247
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 254
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    :cond_3
    return-void

    .line 248
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 249
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 250
    .local v2, "pStreamID":I
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    iget v5, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mLeftVolume:F

    iget v6, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mRightVolume:F

    invoke-virtual {v3, v2, v5, v6}, Landroid/media/SoundPool;->setVolume(IFF)V

    goto :goto_0
.end method

.method public stopAllEffects()V
    .locals 5

    .prologue
    .line 215
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 216
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 217
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 226
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 227
    return-void

    .line 218
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 219
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 220
    .local v2, "pStreamID":I
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v3, v2}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_0
.end method

.method public stopEffect(I)V
    .locals 4
    .param p1, "pStreamID"    # I

    .prologue
    .line 175
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, p1}, Landroid/media/SoundPool;->stop(I)V

    .line 178
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 184
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 179
    .local v0, "pPath":Ljava/lang/String;
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public unloadEffect(Ljava/lang/String;)V
    .locals 6
    .param p1, "pPath"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 125
    .local v2, "streamIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 130
    :cond_0
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 134
    .local v1, "soundID":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 135
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/SoundPool;->unload(I)Z

    .line 136
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_1
    return-void

    .line 126
    .end local v1    # "soundID":Ljava/lang/Integer;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 127
    .local v0, "pStreamID":Ljava/lang/Integer;
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_0
.end method
