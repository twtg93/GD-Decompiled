.class public Lcom/customRobTop/BaseRobTopActivity;
.super Lcom/customRobTop/DefaultRobTopActivity;
.source "BaseRobTopActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/customRobTop/BaseRobTopActivity$receiverScreen;
    }
.end annotation


# static fields
.field public static final SCREEN_ORIENTATION_LANDSCAPE:I = 0x0

.field public static final SCREEN_ORIENTATION_SENSOR_LANDSCAPE:I = 0x6

.field public static final SCREEN_ORIENTATION_USER_LANDSCAPE:I = 0xb

.field public static final TAG:Ljava/lang/String; = "RobTopBase"

.field public static _EPM:Lcom/customRobTop/EPManager;

.field public static blockBackButton_:Z

.field public static focusState_:Z

.field public static isLoaded_:Z

.field public static isPaused_:Z

.field public static keyboardActive_:Z

.field public static me:Lcom/customRobTop/BaseRobTopActivity;

.field public static receiver_:Landroid/content/BroadcastReceiver;

.field public static shouldResumeSound_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 44
    sput-object v2, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    .line 45
    sput-boolean v0, Lcom/customRobTop/BaseRobTopActivity;->isLoaded_:Z

    .line 47
    sput-boolean v0, Lcom/customRobTop/BaseRobTopActivity;->keyboardActive_:Z

    .line 48
    sput-boolean v0, Lcom/customRobTop/BaseRobTopActivity;->blockBackButton_:Z

    .line 49
    sput-boolean v1, Lcom/customRobTop/BaseRobTopActivity;->focusState_:Z

    .line 51
    sput-boolean v1, Lcom/customRobTop/BaseRobTopActivity;->shouldResumeSound_:Z

    .line 52
    sput-boolean v0, Lcom/customRobTop/BaseRobTopActivity;->isPaused_:Z

    .line 58
    sput-object v2, Lcom/customRobTop/BaseRobTopActivity;->_EPM:Lcom/customRobTop/EPManager;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/customRobTop/DefaultRobTopActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/customRobTop/BaseRobTopActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/customRobTop/BaseRobTopActivity;->setSystemUiVisilityMode()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static admobKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 479
    const-string v0, ""

    return-object v0
.end method

.method public static cacheInterstitial()V
    .locals 0

    .prologue
    .line 448
    return-void
.end method

.method public static cacheRewardedVideo()V
    .locals 0

    .prologue
    .line 464
    return-void
.end method

.method public static cbAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    const-string v0, ""

    return-object v0
.end method

.method public static cbAppSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 491
    const-string v0, ""

    return-object v0
.end method

.method public static disableBanner()V
    .locals 0

    .prologue
    .line 424
    return-void
.end method

.method public static doesFileExist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 500
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 501
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static downloadImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "imageURL"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 505
    return-void
.end method

.method public static enableBanner()V
    .locals 0

    .prologue
    .line 419
    return-void
.end method

.method public static gameServicesIsSignedIn()Z
    .locals 1

    .prologue
    .line 573
    const/4 v0, 0x0

    return v0
.end method

.method public static gameServicesSignIn()V
    .locals 0

    .prologue
    .line 572
    return-void
.end method

.method public static gameServicesSignOut()V
    .locals 0

    .prologue
    .line 574
    return-void
.end method

.method public static getUserID()Ljava/lang/String;
    .locals 12

    .prologue
    .line 287
    sget-object v6, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    invoke-virtual {v6}, Lcom/customRobTop/BaseRobTopActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 290
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, "tmDevice":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 292
    .local v5, "tmSerial":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    invoke-virtual {v7}, Lcom/customRobTop/BaseRobTopActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "android_id"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "androidId":Ljava/lang/String;
    new-instance v2, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v10

    int-to-long v10, v10

    or-long/2addr v8, v10

    invoke-direct {v2, v6, v7, v8, v9}, Ljava/util/UUID;-><init>(JJ)V

    .line 295
    .local v2, "deviceUuid":Ljava/util/UUID;
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "deviceId":Ljava/lang/String;
    return-object v1
.end method

.method public static hasCachedInterstitial()Z
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x0

    return v0
.end method

.method public static hasCachedRewardedVideo()Z
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x0

    return v0
.end method

.method public static isEveryplaySupported()Z
    .locals 1

    .prologue
    .line 587
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->_EPM:Lcom/customRobTop/EPManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->_EPM:Lcom/customRobTop/EPManager;

    invoke-virtual {v0}, Lcom/customRobTop/EPManager;->isEveryplaySupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLowEndDevice()Z
    .locals 1

    .prologue
    .line 586
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->_EPM:Lcom/customRobTop/EPManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->_EPM:Lcom/customRobTop/EPManager;

    invoke-virtual {v0}, Lcom/customRobTop/EPManager;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkAvailable()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 301
    const/4 v2, 0x0

    .line 302
    .local v2, "haveConnectedWifi":Z
    const/4 v1, 0x0

    .line 304
    .local v1, "haveConnectedMobile":Z
    sget-object v6, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    .line 305
    const-string v7, "connectivity"

    .line 304
    invoke-virtual {v6, v7}, Lcom/customRobTop/BaseRobTopActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 306
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    .line 307
    .local v3, "netInfo":[Landroid/net/NetworkInfo;
    array-length v7, v3

    move v6, v5

    :goto_0
    if-lt v6, v7, :cond_0

    .line 315
    if-nez v2, :cond_3

    if-nez v1, :cond_3

    :goto_1
    return v5

    .line 307
    :cond_0
    aget-object v4, v3, v6

    .line 308
    .local v4, "ni":Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "WIFI"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 309
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 310
    const/4 v2, 0x1

    .line 311
    :cond_1
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "MOBILE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 312
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 313
    const/4 v1, 0x1

    .line 307
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 315
    .end local v4    # "ni":Landroid/net/NetworkInfo;
    :cond_3
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public static isRecording()Z
    .locals 1

    .prologue
    .line 590
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->_EPM:Lcom/customRobTop/EPManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->_EPM:Lcom/customRobTop/EPManager;

    invoke-virtual {v0}, Lcom/customRobTop/EPManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRecordingPaused()Z
    .locals 1

    .prologue
    .line 589
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->_EPM:Lcom/customRobTop/EPManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->_EPM:Lcom/customRobTop/EPManager;

    invoke-virtual {v0}, Lcom/customRobTop/EPManager;->isRecordingPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRecordingSupported()Z
    .locals 1

    .prologue
    .line 588
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->_EPM:Lcom/customRobTop/EPManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->_EPM:Lcom/customRobTop/EPManager;

    invoke-virtual {v0}, Lcom/customRobTop/EPManager;->isRecordingSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadingFinished()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    sput-boolean v0, Lcom/customRobTop/BaseRobTopActivity;->isLoaded_:Z

    .line 226
    return-void
.end method

.method public static logEvent(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 145
    return-void
.end method

.method public static onNativePause()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public static onNativeResume()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public static onToggleKeyboard()V
    .locals 2

    .prologue
    .line 254
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    new-instance v1, Lcom/customRobTop/BaseRobTopActivity$3;

    invoke-direct {v1}, Lcom/customRobTop/BaseRobTopActivity$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/customRobTop/BaseRobTopActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 262
    return-void
.end method

.method public static openAppPage()V
    .locals 2

    .prologue
    .line 321
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    new-instance v1, Lcom/customRobTop/BaseRobTopActivity$4;

    invoke-direct {v1}, Lcom/customRobTop/BaseRobTopActivity$4;-><init>()V

    invoke-virtual {v0, v1}, Lcom/customRobTop/BaseRobTopActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 329
    return-void
.end method

.method public static openURL(Ljava/lang/String;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 344
    const-string v0, "MAIN"

    const-string v1, "Open URL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    new-instance v1, Lcom/customRobTop/BaseRobTopActivity$6;

    invoke-direct {v1, p0}, Lcom/customRobTop/BaseRobTopActivity$6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/customRobTop/BaseRobTopActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 353
    return-void
.end method

.method public static pauseAds()V
    .locals 0

    .prologue
    .line 429
    return-void
.end method

.method public static pauseRecording()V
    .locals 1

    .prologue
    .line 584
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->_EPM:Lcom/customRobTop/EPManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->_EPM:Lcom/customRobTop/EPManager;

    invoke-virtual {v0}, Lcom/customRobTop/EPManager;->pauseRecording()V

    :cond_0
    return-void
.end method

.method public static playLastRecording()V
    .locals 1

    .prologue
    .line 591
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->_EPM:Lcom/customRobTop/EPManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->_EPM:Lcom/customRobTop/EPManager;

    invoke-virtual {v0}, Lcom/customRobTop/EPManager;->playLastRecording()V

    :cond_0
    return-void
.end method

.method public static resumeAds()V
    .locals 0

    .prologue
    .line 434
    return-void
.end method

.method public static resumeRecording()V
    .locals 1

    .prologue
    .line 585
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->_EPM:Lcom/customRobTop/EPManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->_EPM:Lcom/customRobTop/EPManager;

    invoke-virtual {v0}, Lcom/customRobTop/EPManager;->resumeRecording()V

    :cond_0
    return-void
.end method

.method public static sendMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "subject"    # Ljava/lang/String;
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;

    .prologue
    .line 358
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    new-instance v1, Lcom/customRobTop/BaseRobTopActivity$7;

    invoke-direct {v1, p2, p0, p1}, Lcom/customRobTop/BaseRobTopActivity$7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/customRobTop/BaseRobTopActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 374
    return-void
.end method

.method public static setBlockBackButton(Z)V
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 250
    sput-boolean p0, Lcom/customRobTop/BaseRobTopActivity;->blockBackButton_:Z

    .line 251
    return-void
.end method

.method public static setEveryplayMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "levelID"    # Ljava/lang/String;
    .param p1, "levelName"    # Ljava/lang/String;

    .prologue
    .line 592
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->_EPM:Lcom/customRobTop/EPManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->_EPM:Lcom/customRobTop/EPManager;

    invoke-virtual {v0, p0, p1}, Lcom/customRobTop/EPManager;->setEveryplayMetadata(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setKeyboardState(Z)V
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 246
    sput-boolean p0, Lcom/customRobTop/BaseRobTopActivity;->keyboardActive_:Z

    .line 247
    return-void
.end method

.method private setSystemUiVisilityMode()Landroid/view/View;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/customRobTop/BaseRobTopActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x1706

    .line 128
    .local v1, "options":I
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 129
    return-object v0
.end method

.method public static setupEveryplay()V
    .locals 2

    .prologue
    .line 230
    const-string v0, "EVERY"

    const-string v1, "CALL 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->_EPM:Lcom/customRobTop/EPManager;

    if-eqz v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 232
    :cond_0
    const-string v0, "EVERY"

    const-string v1, "CALL 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    new-instance v1, Lcom/customRobTop/BaseRobTopActivity$2;

    invoke-direct {v1}, Lcom/customRobTop/BaseRobTopActivity$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/customRobTop/BaseRobTopActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setupMainWindowDisplayMode()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/customRobTop/BaseRobTopActivity;->setSystemUiVisilityMode()Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, "decorView":Landroid/view/View;
    new-instance v1, Lcom/customRobTop/BaseRobTopActivity$1;

    invoke-direct {v1, p0}, Lcom/customRobTop/BaseRobTopActivity$1;-><init>(Lcom/customRobTop/BaseRobTopActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 114
    return-void
.end method

.method public static shouldResumeSound()Z
    .locals 1

    .prologue
    .line 242
    sget-boolean v0, Lcom/customRobTop/BaseRobTopActivity;->shouldResumeSound_:Z

    return v0
.end method

.method public static showAchievements()V
    .locals 0

    .prologue
    .line 578
    return-void
.end method

.method public static showEveryplay()V
    .locals 1

    .prologue
    .line 581
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->_EPM:Lcom/customRobTop/EPManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->_EPM:Lcom/customRobTop/EPManager;

    invoke-virtual {v0}, Lcom/customRobTop/EPManager;->showEveryplay()V

    :cond_0
    return-void
.end method

.method public static showInterstitial()V
    .locals 0

    .prologue
    .line 443
    return-void
.end method

.method public static showLeaderboards()V
    .locals 0

    .prologue
    .line 577
    return-void
.end method

.method public static showRewardedVideo()V
    .locals 0

    .prologue
    .line 459
    return-void
.end method

.method public static startRecording()V
    .locals 1

    .prologue
    .line 582
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->_EPM:Lcom/customRobTop/EPManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->_EPM:Lcom/customRobTop/EPManager;

    invoke-virtual {v0}, Lcom/customRobTop/EPManager;->startRecording()V

    :cond_0
    return-void
.end method

.method public static stopRecording()V
    .locals 1

    .prologue
    .line 583
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->_EPM:Lcom/customRobTop/EPManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->_EPM:Lcom/customRobTop/EPManager;

    invoke-virtual {v0}, Lcom/customRobTop/EPManager;->stopRecording()V

    :cond_0
    return-void
.end method

.method public static tryShowRateDialog(Ljava/lang/String;)V
    .locals 2
    .param p0, "appName"    # Ljava/lang/String;

    .prologue
    .line 333
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    new-instance v1, Lcom/customRobTop/BaseRobTopActivity$5;

    invoke-direct {v1, p0}, Lcom/customRobTop/BaseRobTopActivity$5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/customRobTop/BaseRobTopActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 340
    return-void
.end method

.method public static unlockAchievement(Ljava/lang/String;)V
    .locals 0
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 576
    return-void
.end method

.method public static updateTopScoreLeaderboard(I)V
    .locals 0
    .param p0, "score"    # I

    .prologue
    .line 575
    return-void
.end method


# virtual methods
.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAklRPrtot3mua6MYUJXkbGD65TmPoUgHjLKuh0SZ67brpqDwftbmzkzc/cE7hiLeMSG/lfYYdX2/jhkhv2OULo67NHgzsskpIOOIP3zB11d+4aH8XkDPB1yRjI+rwk1v/MeK/uilnPUbSF8XnmEvTNxq47r5xgeOrJKjdO3TG6S7IneHQo1vZNwv/HqHJ3RhgzmJW79xNf0GWbPmMjusUhdbOtZdt1DbcMJIaORzBgyU9MnSwy37ri7cOhNL+OLdzUp+keuk7Exi6XAUR9CMeQ5JXdrCk37FAog6LA7IpIEm+ZIFRqhhRVaQ6+KTcTqyNpvYIYh5bH772d3Ro3uVG+QIDAQAB"

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 220
    invoke-super {p0}, Lcom/customRobTop/DefaultRobTopActivity;->onBackPressed()V

    .line 221
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/customRobTop/BaseRobTopActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 71
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "storagePath":Ljava/lang/String;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/customRobTop/JniToCpp;->setupHSSAssets(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-super {p0, p1}, Lcom/customRobTop/DefaultRobTopActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const/4 v3, 0x0

    sput-object v3, Lcom/customRobTop/BaseRobTopActivity;->_EPM:Lcom/customRobTop/EPManager;

    .line 82
    sget-object v3, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/customRobTop/AppRater;->app_launched(Landroid/content/Context;)V

    .line 85
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_2

    .line 86
    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Lcom/customRobTop/BaseRobTopActivity;->setRequestedOrientation(I)V

    .line 95
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 96
    .local v1, "currentapiVersion":I
    const/16 v3, 0x13

    if-lt v1, v3, :cond_1

    invoke-direct {p0}, Lcom/customRobTop/BaseRobTopActivity;->setupMainWindowDisplayMode()V

    .line 98
    :cond_1
    sput-object p0, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    .line 101
    return-void

    .line 88
    .end local v1    # "currentapiVersion":I
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_3

    .line 89
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/customRobTop/BaseRobTopActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 92
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/customRobTop/BaseRobTopActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 204
    invoke-super {p0}, Lcom/customRobTop/DefaultRobTopActivity;->onDestroy()V

    .line 208
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/customRobTop/DefaultRobTopActivity;->onPause()V

    .line 180
    const/4 v0, 0x1

    sput-boolean v0, Lcom/customRobTop/BaseRobTopActivity;->isPaused_:Z

    .line 181
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Lcom/customRobTop/DefaultRobTopActivity;->onResume()V

    .line 171
    invoke-virtual {p0}, Lcom/customRobTop/BaseRobTopActivity;->updateVisibilityMode()V

    .line 173
    const/4 v0, 0x0

    sput-boolean v0, Lcom/customRobTop/BaseRobTopActivity;->isPaused_:Z

    .line 174
    return-void
.end method

.method public onSignInFailed()V
    .locals 0

    .prologue
    .line 570
    return-void
.end method

.method public onSignInSucceeded()V
    .locals 0

    .prologue
    .line 571
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 185
    invoke-super {p0}, Lcom/customRobTop/DefaultRobTopActivity;->onStart()V

    .line 194
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 198
    invoke-super {p0}, Lcom/customRobTop/DefaultRobTopActivity;->onStop()V

    .line 200
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/customRobTop/DefaultRobTopActivity;->onWindowFocusChanged(Z)V

    .line 137
    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/customRobTop/BaseRobTopActivity;->updateVisibilityMode()V

    .line 141
    :cond_0
    return-void
.end method

.method registerReceiver()V
    .locals 3

    .prologue
    .line 265
    sget-object v1, Lcom/customRobTop/BaseRobTopActivity;->receiver_:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 266
    sget-object v1, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    sget-object v2, Lcom/customRobTop/BaseRobTopActivity;->receiver_:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/customRobTop/BaseRobTopActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 267
    const/4 v1, 0x0

    sput-object v1, Lcom/customRobTop/BaseRobTopActivity;->receiver_:Landroid/content/BroadcastReceiver;

    .line 271
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    new-instance v1, Lcom/customRobTop/BaseRobTopActivity$receiverScreen;

    invoke-direct {v1, p0}, Lcom/customRobTop/BaseRobTopActivity$receiverScreen;-><init>(Lcom/customRobTop/BaseRobTopActivity;)V

    sput-object v1, Lcom/customRobTop/BaseRobTopActivity;->receiver_:Landroid/content/BroadcastReceiver;

    .line 278
    sget-object v1, Lcom/customRobTop/BaseRobTopActivity;->receiver_:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/customRobTop/BaseRobTopActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public updateVisibilityMode()V
    .locals 2

    .prologue
    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 162
    .local v0, "currentapiVersion":I
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/customRobTop/BaseRobTopActivity;->setSystemUiVisilityMode()Landroid/view/View;

    .line 163
    :cond_0
    return-void
.end method
