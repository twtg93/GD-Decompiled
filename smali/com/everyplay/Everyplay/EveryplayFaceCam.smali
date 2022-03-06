.class public Lcom/everyplay/Everyplay/EveryplayFaceCam;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/everyplay/Everyplay/d/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/everyplay/Everyplay/d/b;

    invoke-direct {v0}, Lcom/everyplay/Everyplay/d/b;-><init>()V

    sput-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    sput-object v0, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->everyplayLiveFaceCamImpl:Lcom/everyplay/Everyplay/d/b;

    :cond_0
    return-void
.end method


# virtual methods
.method public getAudioOnly()Z
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    iget-boolean v0, v0, Lcom/everyplay/Everyplay/d/b;->t:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioPeakLevel()F
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/d/b;->e()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x3d380000    # -100.0f

    goto :goto_0
.end method

.method public getAudioPowerLevel()F
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/d/b;->e()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x3d380000    # -100.0f

    goto :goto_0
.end method

.method public getMonitorAudioLevels()Z
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    iget-boolean v0, v0, Lcom/everyplay/Everyplay/d/b;->q:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreviewBorderColor()Lcom/everyplay/Everyplay/EveryplayFaceCamColor;
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/d/b;->l()Lcom/everyplay/Everyplay/EveryplayFaceCamColor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreviewBorderWidth()I
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/d/b;->h()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreviewOrigin()Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/d/b;->k()Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreviewPositionX()I
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/d/b;->i()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreviewPositionY()I
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/d/b;->j()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreviewSideWidth()I
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/d/b;->g()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreviewVisible()Z
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/d/b;->f()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecordingMode$340801fd()I
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    iget v0, v0, Lcom/everyplay/Everyplay/d/b;->s:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/everyplay/Everyplay/b;->b:I

    goto :goto_0
.end method

.method public isAudioRecordingSupported()Z
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/d/b;->c()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHeadphonesPluggedIn()Z
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/d/b;->d()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecordingPermissionGranted()Z
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    iget-boolean v0, v0, Lcom/everyplay/Everyplay/d/b;->g:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSessionRunning()Z
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    iget-boolean v0, v0, Lcom/everyplay/Everyplay/d/b;->c:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoRecordingSupported()Z
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/d/b;->b()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestRecordingPermission()V
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/d/b;->a()V

    :cond_0
    return-void
.end method

.method public setAudioOnly(Z)V
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    iput-boolean p1, v0, Lcom/everyplay/Everyplay/d/b;->t:Z

    :cond_0
    return-void
.end method

.method public setMonitorAudioLevels(Z)V
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    iput-boolean p1, v0, Lcom/everyplay/Everyplay/d/b;->q:Z

    :cond_0
    return-void
.end method

.method public setPreviewBorderColor(Lcom/everyplay/Everyplay/EveryplayFaceCamColor;)V
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/everyplay/Everyplay/d/b;->a(Lcom/everyplay/Everyplay/EveryplayFaceCamColor;)V

    :cond_0
    return-void
.end method

.method public setPreviewBorderWidth(I)V
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/everyplay/Everyplay/d/b;->b(I)V

    :cond_0
    return-void
.end method

.method public setPreviewOrigin(Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;)V
    .locals 3

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    const-string v1, "faceCamPreviewOrigin"

    invoke-static {p1}, Lcom/everyplay/Everyplay/d/b;->a(Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setInt(Ljava/lang/String;I)V

    iget-boolean v1, v0, Lcom/everyplay/Everyplay/d/b;->f:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/everyplay/Everyplay/d/b;->p:Lcom/everyplay/Everyplay/c/a/c;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/d/b;->k()Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;

    move-result-object v1

    iget-object v0, v0, Lcom/everyplay/Everyplay/d/b;->p:Lcom/everyplay/Everyplay/c/a/c;

    invoke-static {v1, v0}, Lcom/everyplay/Everyplay/d/b;->a(Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;Lcom/everyplay/Everyplay/c/a/c;)V

    :cond_0
    return-void
.end method

.method public setPreviewPositionX(I)V
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/everyplay/Everyplay/d/b;->c(I)V

    :cond_0
    return-void
.end method

.method public setPreviewPositionY(I)V
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/everyplay/Everyplay/d/b;->d(I)V

    :cond_0
    return-void
.end method

.method public setPreviewSideWidth(I)V
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/everyplay/Everyplay/d/b;->a(I)V

    :cond_0
    return-void
.end method

.method public setPreviewVisible(Z)V
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/everyplay/Everyplay/d/b;->c(Z)V

    :cond_0
    return-void
.end method

.method public setRecordingMode$7b6486b7(I)V
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    iput p1, v0, Lcom/everyplay/Everyplay/d/b;->s:I

    :cond_0
    return-void
.end method

.method public setTargetTextureHeight(I)V
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/everyplay/Everyplay/d/b;->g(I)V

    :cond_0
    return-void
.end method

.method public setTargetTextureId(I)V
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/everyplay/Everyplay/d/b;->e(I)V

    :cond_0
    return-void
.end method

.method public setTargetTextureWidth(I)V
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/everyplay/Everyplay/d/b;->f(I)V

    :cond_0
    return-void
.end method

.method public startSession()V
    .locals 2

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/d/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public stopSession()V
    .locals 2

    const/4 v1, 0x1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCam;->a:Lcom/everyplay/Everyplay/d/b;

    invoke-virtual {v0, v1, v1}, Lcom/everyplay/Everyplay/d/b;->a(ZZ)V

    :cond_0
    return-void
.end method
