.class public Lorg/cocos2dx/lib/Cocos2dxHelper;
.super Ljava/lang/Object;
.source "Cocos2dxHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;
    }
.end annotation


# static fields
.field private static final PREFS_NAME:Ljava/lang/String; = "Cocos2dxPrefsFile"

.field private static sAccelerometerEnabled:Z

.field private static sAssetManager:Landroid/content/res/AssetManager;

.field private static sCocos2dxAccelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

.field private static sCocos2dxHelperListener:Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;

.field private static sContext:Landroid/content/Context;

.field private static sFileDirectory:Ljava/lang/String;

.field private static sPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0([B)V
    .locals 0

    .prologue
    .line 101
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->nativeSetEditTextDialogResult([B)V

    return-void
.end method

.method public static disableAccelerometer()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    sput-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sAccelerometerEnabled:Z

    .line 135
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxAccelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->disable()V

    .line 136
    return-void
.end method

.method public static enableAccelerometer()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    sput-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sAccelerometerEnabled:Z

    .line 125
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxAccelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->enable()V

    .line 126
    return-void
.end method

.method public static end()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public static getAssetManager()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sAssetManager:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public static getBackgroundMusicTime()F
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public static getBackgroundMusicVolume()F
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public static getBoolForKey(Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 299
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v2, "Cocos2dxPrefsFile"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 300
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getCocos2dxPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getCocos2dxWritablePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sFileDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDPI()I
    .locals 5

    .prologue
    .line 277
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 279
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 280
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 281
    .local v2, "wm":Landroid/view/WindowManager;
    if-eqz v2, :cond_0

    .line 283
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 284
    .local v0, "d":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 287
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x43200000    # 160.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 291
    .end local v0    # "d":Landroid/view/Display;
    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getDoubleForKey(Ljava/lang/String;D)D
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # D

    .prologue
    .line 315
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v2, "Cocos2dxPrefsFile"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 316
    .local v0, "settings":Landroid/content/SharedPreferences;
    double-to-float v1, p1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    float-to-double v2, v1

    return-wide v2
.end method

.method public static getEffectsVolume()F
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public static getFloatForKey(Ljava/lang/String;F)F
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # F

    .prologue
    .line 309
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v2, "Cocos2dxPrefsFile"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 310
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public static getIntegerForKey(Ljava/lang/String;I)I
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 304
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v2, "Cocos2dxPrefsFile"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 305
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getStringForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 320
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v2, "Cocos2dxPrefsFile"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 321
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static init(Landroid/content/Context;Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;)V
    .locals 2
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pCocos2dxHelperListener"    # Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 66
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    .line 67
    sput-object p1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxHelperListener:Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;

    .line 69
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sPackageName:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sFileDirectory:Ljava/lang/String;

    .line 71
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->nativeSetApkPath(Ljava/lang/String;)V

    .line 73
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;-><init>(Landroid/content/Context;)V

    sput-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxAccelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    sput-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sAssetManager:Landroid/content/res/AssetManager;

    .line 83
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->setContext(Landroid/content/Context;)V

    .line 84
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxETCLoader;->setContext(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method public static isBackgroundMusicPlaying()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method private static native nativeSetApkPath(Ljava/lang/String;)V
.end method

.method private static native nativeSetEditTextDialogResult([B)V
.end method

.method public static onPause()V
    .locals 1

    .prologue
    .line 243
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sAccelerometerEnabled:Z

    if-eqz v0, :cond_0

    .line 244
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxAccelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->disable()V

    .line 246
    :cond_0
    return-void
.end method

.method public static onResume()V
    .locals 1

    .prologue
    .line 237
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sAccelerometerEnabled:Z

    if-eqz v0, :cond_0

    .line 238
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxAccelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->enable()V

    .line 240
    :cond_0
    return-void
.end method

.method public static pauseAllEffects()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method public static pauseBackgroundMusic()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public static pauseEffect(I)V
    .locals 0
    .param p0, "soundId"    # I

    .prologue
    .line 200
    return-void
.end method

.method public static playBackgroundMusic(Ljava/lang/String;Z)V
    .locals 0
    .param p0, "pPath"    # Ljava/lang/String;
    .param p1, "isLoop"    # Z

    .prologue
    .line 144
    return-void
.end method

.method public static playEffect(Ljava/lang/String;ZFFF)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "isLoop"    # Z
    .param p2, "pitch"    # F
    .param p3, "pan"    # F
    .param p4, "gain"    # F

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public static preloadBackgroundMusic(Ljava/lang/String;)V
    .locals 0
    .param p0, "pPath"    # Ljava/lang/String;

    .prologue
    .line 140
    return-void
.end method

.method public static preloadEffect(Ljava/lang/String;)V
    .locals 0
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 187
    return-void
.end method

.method public static resumeAllEffects()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public static resumeBackgroundMusic()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public static resumeEffect(I)V
    .locals 0
    .param p0, "soundId"    # I

    .prologue
    .line 196
    return-void
.end method

.method public static rewindBackgroundMusic()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public static setAccelerometerInterval(F)V
    .locals 1
    .param p0, "interval"    # F

    .prologue
    .line 130
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxAccelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->setInterval(F)V

    .line 131
    return-void
.end method

.method public static setBackgroundMusicTime(F)V
    .locals 0
    .param p0, "time"    # F

    .prologue
    .line 164
    return-void
.end method

.method public static setBackgroundMusicVolume(F)V
    .locals 0
    .param p0, "volume"    # F

    .prologue
    .line 183
    return-void
.end method

.method public static setBoolForKey(Ljava/lang/String;Z)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    .line 325
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string v3, "Cocos2dxPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 326
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 327
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 328
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 329
    return-void
.end method

.method public static setDoubleForKey(Ljava/lang/String;D)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # D

    .prologue
    .line 347
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string v3, "Cocos2dxPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 348
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 349
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    double-to-float v2, p1

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 350
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 351
    return-void
.end method

.method public static setEditTextDialogResult(Ljava/lang/String;)V
    .locals 3
    .param p0, "pResult"    # Ljava/lang/String;

    .prologue
    .line 262
    :try_start_0
    const-string v1, "UTF8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 264
    .local v0, "bytesUTF8":[B
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxHelperListener:Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;

    new-instance v2, Lorg/cocos2dx/lib/Cocos2dxHelper$1;

    invoke-direct {v2, v0}, Lorg/cocos2dx/lib/Cocos2dxHelper$1;-><init>([B)V

    invoke-interface {v1, v2}, Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;->runOnGLThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v0    # "bytesUTF8":[B
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setEffectsVolume(F)V
    .locals 0
    .param p0, "volume"    # F

    .prologue
    .line 213
    return-void
.end method

.method public static setFloatForKey(Ljava/lang/String;F)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # F

    .prologue
    .line 339
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string v3, "Cocos2dxPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 340
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 341
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 342
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 343
    return-void
.end method

.method public static setIntegerForKey(Ljava/lang/String;I)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 332
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string v3, "Cocos2dxPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 333
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 334
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 335
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 336
    return-void
.end method

.method public static setStringForKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 354
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string v3, "Cocos2dxPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 355
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 356
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 357
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 358
    return-void
.end method

.method private static showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "pTitle"    # Ljava/lang/String;
    .param p1, "pMessage"    # Ljava/lang/String;

    .prologue
    .line 253
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxHelperListener:Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;

    invoke-interface {v0, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method private static showEditTextDialog(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 7
    .param p0, "pTitle"    # Ljava/lang/String;
    .param p1, "pMessage"    # Ljava/lang/String;
    .param p2, "pInputMode"    # I
    .param p3, "pInputFlag"    # I
    .param p4, "pReturnType"    # I
    .param p5, "pMaxLength"    # I

    .prologue
    .line 257
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxHelperListener:Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;->showEditTextDialog(Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 258
    return-void
.end method

.method public static stopAllEffects()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public static stopBackgroundMusic()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public static stopEffect(I)V
    .locals 0
    .param p0, "soundId"    # I

    .prologue
    .line 204
    return-void
.end method

.method public static terminateProcess()V
    .locals 1

    .prologue
    .line 249
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 250
    return-void
.end method

.method public static unloadEffect(Ljava/lang/String;)V
    .locals 0
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 217
    return-void
.end method
