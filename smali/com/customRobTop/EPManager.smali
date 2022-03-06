.class public Lcom/customRobTop/EPManager;
.super Ljava/lang/Object;
.source "EPManager.java"

# interfaces
.implements Lcom/everyplay/Everyplay/IEveryplayListener;


# instance fields
.field public _meta_levelID:Ljava/lang/String;

.field public _meta_levelName:Ljava/lang/String;

.field public cAct_:Lcom/customRobTop/BaseRobTopActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "0"

    iput-object v0, p0, Lcom/customRobTop/EPManager;->_meta_levelID:Ljava/lang/String;

    .line 15
    const-string v0, "0"

    iput-object v0, p0, Lcom/customRobTop/EPManager;->_meta_levelName:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public isEveryplaySupported()Z
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/everyplay/Everyplay/Everyplay;->isSupported()Z

    move-result v0

    return v0
.end method

.method public isLowEndDevice()Z
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/everyplay/Everyplay/Everyplay;->isSingleCoreDevice()Z

    move-result v0

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/everyplay/Everyplay/Everyplay;->isRecording()Z

    move-result v0

    return v0
.end method

.method public isRecordingPaused()Z
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/everyplay/Everyplay/Everyplay;->isPaused()Z

    move-result v0

    return v0
.end method

.method public isRecordingSupported()Z
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/everyplay/Everyplay/Everyplay;->isRecordingSupported()Z

    move-result v0

    return v0
.end method

.method public onEveryplayAccountDidChange()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public onEveryplayFaceCamRecordingPermission(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 93
    return-void
.end method

.method public onEveryplayFaceCamSessionStarted()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public onEveryplayFaceCamSessionStopped()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public onEveryplayHidden()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onEveryplayReadyForRecording(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 116
    return-void
.end method

.method public onEveryplayRecordingStarted()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public onEveryplayRecordingStopped()V
    .locals 0

    .prologue
    .line 127
    invoke-static {}, Lcom/customRobTop/JniToCpp;->everyplayRecordingStopped()V

    .line 128
    return-void
.end method

.method public onEveryplayShown()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public onEveryplayThumbnailReadyAtTextureId(II)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 140
    return-void
.end method

.method public onEveryplayUploadDidComplete(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 146
    return-void
.end method

.method public onEveryplayUploadDidProgress(ID)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # D

    .prologue
    .line 152
    return-void
.end method

.method public onEveryplayUploadDidStart(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 158
    return-void
.end method

.method public pauseRecording()V
    .locals 0

    .prologue
    .line 47
    invoke-static {}, Lcom/everyplay/Everyplay/Everyplay;->pauseRecording()V

    .line 48
    return-void
.end method

.method public playLastRecording()V
    .locals 0

    .prologue
    .line 75
    invoke-static {}, Lcom/everyplay/Everyplay/Everyplay;->showEveryplaySharingModal()Z

    .line 76
    return-void
.end method

.method public resumeRecording()V
    .locals 0

    .prologue
    .line 51
    invoke-static {}, Lcom/everyplay/Everyplay/Everyplay;->resumeRecording()V

    .line 52
    return-void
.end method

.method public setEveryplayMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "levelID"    # Ljava/lang/String;
    .param p2, "levelName"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/customRobTop/EPManager;->_meta_levelID:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/customRobTop/EPManager;->_meta_levelName:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setup(Lcom/customRobTop/BaseRobTopActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "act"    # Lcom/customRobTop/BaseRobTopActivity;
    .param p2, "clientID"    # Ljava/lang/String;
    .param p3, "clientSecret"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/customRobTop/EPManager;->cAct_:Lcom/customRobTop/BaseRobTopActivity;

    .line 21
    const-string v0, "https://m.everyplay.com/auth"

    invoke-static {p2, p3, v0}, Lcom/everyplay/Everyplay/Everyplay;->configureEveryplay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/customRobTop/EPManager;->cAct_:Lcom/customRobTop/BaseRobTopActivity;

    invoke-static {p0, v0}, Lcom/everyplay/Everyplay/Everyplay;->initEveryplay(Lcom/everyplay/Everyplay/IEveryplayListener;Landroid/app/Activity;)Z

    .line 23
    return-void
.end method

.method public showEveryplay()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "/feed/game"

    invoke-static {v0}, Lcom/everyplay/Everyplay/Everyplay;->showEveryplay(Ljava/lang/String;)Z

    .line 27
    return-void
.end method

.method public startRecording()V
    .locals 0

    .prologue
    .line 30
    invoke-static {}, Lcom/everyplay/Everyplay/Everyplay;->startRecording()V

    .line 31
    return-void
.end method

.method public stopRecording()V
    .locals 4

    .prologue
    .line 34
    invoke-static {}, Lcom/everyplay/Everyplay/Everyplay;->stopRecording()V

    .line 36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 38
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "level_id"

    iget-object v3, p0, Lcom/customRobTop/EPManager;->_meta_levelID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v2, "level_name"

    iget-object v3, p0, Lcom/customRobTop/EPManager;->_meta_levelName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    invoke-static {v0}, Lcom/everyplay/Everyplay/Everyplay;->mergeSessionDeveloperData(Lorg/json/JSONObject;)V

    .line 44
    return-void

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
