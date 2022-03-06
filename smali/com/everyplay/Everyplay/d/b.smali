.class public final Lcom/everyplay/Everyplay/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/everyplay/Everyplay/device/e;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field public static l:Z


# instance fields
.field public a:Landroid/hardware/Camera;

.field public b:Landroid/graphics/SurfaceTexture;

.field public c:Z

.field public d:Landroid/media/MediaRecorder;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Z

.field public h:[F

.field public i:Landroid/hardware/Camera$Size;

.field public j:Landroid/hardware/Camera$Size;

.field public k:Landroid/app/Activity;

.field m:Z

.field n:Z

.field public o:I

.field public p:Lcom/everyplay/Everyplay/c/a/c;

.field public q:Z

.field public r:I

.field public s:I

.field public t:Z

.field private u:Landroid/hardware/Camera$CameraInfo;

.field private v:Ljava/lang/Boolean;

.field private w:Ljava/lang/Boolean;

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/everyplay/Everyplay/d/b;->l:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/everyplay/Everyplay/d/b;->g:Z

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/everyplay/Everyplay/d/b;->h:[F

    iput-object v2, p0, Lcom/everyplay/Everyplay/d/b;->v:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/everyplay/Everyplay/d/b;->w:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/everyplay/Everyplay/d/b;->k:Landroid/app/Activity;

    iput-boolean v1, p0, Lcom/everyplay/Everyplay/d/b;->m:Z

    iput-boolean v1, p0, Lcom/everyplay/Everyplay/d/b;->n:Z

    iput-object v2, p0, Lcom/everyplay/Everyplay/d/b;->p:Lcom/everyplay/Everyplay/c/a/c;

    iput-boolean v1, p0, Lcom/everyplay/Everyplay/d/b;->q:Z

    iput-boolean v1, p0, Lcom/everyplay/Everyplay/d/b;->t:Z

    iput-object v2, p0, Lcom/everyplay/Everyplay/d/b;->a:Landroid/hardware/Camera;

    iput-object v2, p0, Lcom/everyplay/Everyplay/d/b;->u:Landroid/hardware/Camera$CameraInfo;

    iput-object v2, p0, Lcom/everyplay/Everyplay/d/b;->b:Landroid/graphics/SurfaceTexture;

    iput-boolean v1, p0, Lcom/everyplay/Everyplay/d/b;->c:Z

    iput-object v2, p0, Lcom/everyplay/Everyplay/d/b;->d:Landroid/media/MediaRecorder;

    iput-boolean v1, p0, Lcom/everyplay/Everyplay/d/b;->f:Z

    iput-boolean v1, p0, Lcom/everyplay/Everyplay/d/b;->g:Z

    sget v0, Lcom/everyplay/Everyplay/b;->b:I

    iput v0, p0, Lcom/everyplay/Everyplay/d/b;->s:I

    iput-boolean v1, p0, Lcom/everyplay/Everyplay/d/b;->t:Z

    return-void
.end method

.method public static a(IIZ)F
    .locals 2

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;)I
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/everyplay/Everyplay/d/b$7;->a:[I

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;
    .locals 1

    if-eqz p0, :cond_3

    const-string v0, "BottomLeft"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;->BOTTOM_LEFT:Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "BottomRight"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;->BOTTOM_RIGHT:Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;

    goto :goto_0

    :cond_1
    const-string v0, "TopLeft"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;->TOP_LEFT:Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;

    goto :goto_0

    :cond_2
    const-string v0, "TopRight"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;->TOP_RIGHT:Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;->TOP_LEFT:Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;

    goto :goto_0
.end method

.method public static a(I)V
    .locals 1

    const-string v0, "faceCamPreviewSideWidth"

    invoke-static {v0, p0}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Lcom/everyplay/Everyplay/EveryplayFaceCamColor;)V
    .locals 4

    const-string v0, "faceCamPreviewBorderColor"

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/everyplay/Everyplay/EveryplayFaceCamColor;->r:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/everyplay/Everyplay/EveryplayFaceCamColor;->g:F

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/everyplay/Everyplay/EveryplayFaceCamColor;->b:F

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/everyplay/Everyplay/EveryplayFaceCamColor;->a:F

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setFloatArray(Ljava/lang/String;[F)V

    return-void
.end method

.method public static a(Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;Lcom/everyplay/Everyplay/c/a/c;)V
    .locals 3

    if-eqz p1, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/d/b$7;->a:[I

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "camera_corner"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lcom/everyplay/Everyplay/c/a/c;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    const-string v0, "TopLeft"

    goto :goto_0

    :pswitch_1
    const-string v0, "TopRight"

    goto :goto_0

    :pswitch_2
    const-string v0, "BottomLeft"

    goto :goto_0

    :pswitch_3
    const-string v0, "BottomRight"

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/everyplay/Everyplay/d/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/everyplay/Everyplay/d/b;->n()V

    return-void
.end method

.method static synthetic a(Lcom/everyplay/Everyplay/d/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/everyplay/Everyplay/d/b;->g:Z

    return p1
.end method

.method public static b(I)V
    .locals 1

    const-string v0, "faceCamPreviewBorderWidth"

    invoke-static {v0, p0}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic b(Lcom/everyplay/Everyplay/d/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/everyplay/Everyplay/d/b;->o()V

    return-void
.end method

.method public static b()Z
    .locals 1

    invoke-static {}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/d/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(I)V
    .locals 1

    const-string v0, "faceCamPreviewPositionX"

    invoke-static {v0, p0}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic c(Lcom/everyplay/Everyplay/d/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/everyplay/Everyplay/d/b;->p()V

    return-void
.end method

.method public static c(Z)V
    .locals 1

    const-string v0, "faceCamPreviewVisible"

    invoke-static {v0, p0}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static c()Z
    .locals 1

    invoke-static {}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(I)V
    .locals 1

    const-string v0, "faceCamPreviewPositionY"

    invoke-static {v0, p0}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static d()Z
    .locals 1

    invoke-static {}, Lcom/everyplay/Everyplay/device/EveryplayDevice;->o()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/everyplay/Everyplay/d/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/everyplay/Everyplay/d/b;->n:Z

    return v0
.end method

.method public static e(I)V
    .locals 1

    const-string v0, "faceCamTargetTextureId"

    invoke-static {v0, p0}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic e(Lcom/everyplay/Everyplay/d/b;)V
    .locals 0

    invoke-static {p0}, Lcom/everyplay/Everyplay/device/EveryplayDevice$PermissionActivity;->a(Lcom/everyplay/Everyplay/device/e;)V

    return-void
.end method

.method public static f(I)V
    .locals 1

    const-string v0, "faceCamTargetTextureWidth"

    invoke-static {v0, p0}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static f()Z
    .locals 2

    const-string v0, "faceCamPreviewVisible"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/everyplay/Everyplay/d/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/everyplay/Everyplay/d/b;->m:Z

    return v0
.end method

.method public static g()I
    .locals 2

    const-string v0, "faceCamPreviewSideWidth"

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static g(I)V
    .locals 1

    const-string v0, "faceCamTargetTextureHeight"

    invoke-static {v0, p0}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic g(Lcom/everyplay/Everyplay/d/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/everyplay/Everyplay/d/b;->g:Z

    return v0
.end method

.method public static h()I
    .locals 2

    const-string v0, "faceCamPreviewBorderWidth"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static h(I)Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;->TOP_LEFT:Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;->TOP_RIGHT:Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;->BOTTOM_LEFT:Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;->BOTTOM_RIGHT:Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static i()I
    .locals 2

    const-string v0, "faceCamPreviewPositionX"

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static i(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget v0, Lcom/everyplay/Everyplay/b;->b:I

    :goto_0
    return v0

    :pswitch_0
    sget v0, Lcom/everyplay/Everyplay/b;->b:I

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/everyplay/Everyplay/b;->c:I

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/everyplay/Everyplay/b;->a:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static j()I
    .locals 2

    const-string v0, "faceCamPreviewPositionY"

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static k()Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;
    .locals 2

    const-string v0, "faceCamPreviewOrigin"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/d/b;->h(I)Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;

    move-result-object v0

    return-object v0
.end method

.method public static l()Lcom/everyplay/Everyplay/EveryplayFaceCamColor;
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "faceCamPreviewBorderColor"

    invoke-static {v1, v0}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->getFloatArray(Ljava/lang/String;[F)[F

    new-instance v1, Lcom/everyplay/Everyplay/EveryplayFaceCamColor;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v0, v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/everyplay/Everyplay/EveryplayFaceCamColor;-><init>(FFFF)V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static m()Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;
    .locals 3

    invoke-static {}, Lcom/everyplay/Everyplay/c/a/g;->d()Lcom/everyplay/Everyplay/c/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/everyplay/Everyplay/c/a/c;->f:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v1, "camera_corner"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "camera_corner"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/everyplay/Everyplay/d/b;->a(Ljava/lang/String;)Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;->TOP_LEFT:Lcom/everyplay/Everyplay/EveryplayFaceCamPreviewOrigin;

    goto :goto_1
.end method

.method private n()V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/everyplay/Everyplay/d/b;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/everyplay/Everyplay/d/b;->g:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/communication/c;->b()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/everyplay/Everyplay/d/b;->k:Landroid/app/Activity;

    sget v0, Lcom/everyplay/Everyplay/b;->c:I

    iput v0, p0, Lcom/everyplay/Everyplay/d/b;->r:I

    iget-boolean v0, p0, Lcom/everyplay/Everyplay/d/b;->t:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/everyplay/Everyplay/d/b;->s:I

    sget v2, Lcom/everyplay/Everyplay/b;->b:I

    if-ne v0, v2, :cond_6

    invoke-static {}, Lcom/everyplay/Everyplay/d/b;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lcom/everyplay/Everyplay/b;->b:I

    iput v0, p0, Lcom/everyplay/Everyplay/d/b;->r:I

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/everyplay/Everyplay/d/b;->t:Z

    if-nez v0, :cond_8

    const-string v0, "faceCamGetTextureId"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->callStaticIntMethod(ZLjava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_5

    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v0, p0, Lcom/everyplay/Everyplay/d/b;->u:Landroid/hardware/Camera$CameraInfo;

    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b;->u:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v0}, Lcom/everyplay/Everyplay/d/a;->a(Landroid/hardware/Camera$CameraInfo;)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/everyplay/Everyplay/d/b;->a:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v3, p0, Lcom/everyplay/Everyplay/d/b;->a:Landroid/hardware/Camera;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/everyplay/Everyplay/d/a;->a(Landroid/hardware/Camera;Z)Landroid/hardware/Camera$Size;

    move-result-object v3

    iget-object v4, p0, Lcom/everyplay/Everyplay/d/b;->a:Landroid/hardware/Camera;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/everyplay/Everyplay/d/a;->a(Landroid/hardware/Camera;Z)Landroid/hardware/Camera$Size;

    move-result-object v4

    iput-object v4, p0, Lcom/everyplay/Everyplay/d/b;->i:Landroid/hardware/Camera$Size;

    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v4, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget-object v3, p0, Lcom/everyplay/Everyplay/d/b;->a:Landroid/hardware/Camera;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b;->k:Landroid/app/Activity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b;->k:Landroid/app/Activity;

    iget-object v3, p0, Lcom/everyplay/Everyplay/d/b;->u:Landroid/hardware/Camera$CameraInfo;

    iget-object v4, p0, Lcom/everyplay/Everyplay/d/b;->a:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_2
    iget v5, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, v6, :cond_7

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v3

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/everyplay/Everyplay/d/b;->x:I

    iget v0, p0, Lcom/everyplay/Everyplay/d/b;->x:I

    iput v0, p0, Lcom/everyplay/Everyplay/d/b;->o:I

    iget v0, p0, Lcom/everyplay/Everyplay/d/b;->x:I

    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/everyplay/Everyplay/d/b;->x:I

    :goto_3
    iget v0, p0, Lcom/everyplay/Everyplay/d/b;->x:I

    invoke-virtual {v4, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_4
    :try_start_2
    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b;->b:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_4

    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/everyplay/Everyplay/d/b;->b:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b;->b:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_5
    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b;->b:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_5

    :try_start_3
    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b;->a:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/everyplay/Everyplay/d/b;->b:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/everyplay/Everyplay/d/b;->c:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_6
    iget-boolean v0, p0, Lcom/everyplay/Everyplay/d/b;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "faceCamStartSession"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1, v6, v0, v2}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->callStaticVoidMethod(ZZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/everyplay/Everyplay/communication/c;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/everyplay/Everyplay/d/b$2;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/d/b$2;-><init>(Lcom/everyplay/Everyplay/d/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lcom/everyplay/Everyplay/d/b;->s:I

    sget v2, Lcom/everyplay/Everyplay/b;->c:I

    if-eq v0, v2, :cond_2

    invoke-static {}, Lcom/everyplay/Everyplay/d/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/everyplay/Everyplay/b;->a:I

    iput v0, p0, Lcom/everyplay/Everyplay/d/b;->r:I

    goto/16 :goto_1

    :pswitch_0
    move v0, v1

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_2

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_2

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_2

    :cond_7
    :try_start_4
    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int v0, v3, v0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/everyplay/Everyplay/d/b;->x:I

    iget v0, p0, Lcom/everyplay/Everyplay/d/b;->x:I

    iput v0, p0, Lcom/everyplay/Everyplay/d/b;->o:I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Everyplay Live FaceCam failed to create surface: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :cond_8
    iput-boolean v6, p0, Lcom/everyplay/Everyplay/d/b;->c:Z

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private o()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    :try_start_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b;->a:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    iput-object v2, p0, Lcom/everyplay/Everyplay/d/b;->a:Landroid/hardware/Camera;

    :cond_0
    iput-object v2, p0, Lcom/everyplay/Everyplay/d/b;->b:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x1

    const-string v1, "faceCamStopSession"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3, v0, v1, v2}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->callStaticVoidMethod(ZZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/everyplay/Everyplay/communication/c;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/everyplay/Everyplay/d/b$4;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/d/b$4;-><init>(Lcom/everyplay/Everyplay/d/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private p()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b;->d:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b;->d:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b;->d:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b;->d:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    iput-object v3, p0, Lcom/everyplay/Everyplay/d/b;->d:Landroid/media/MediaRecorder;

    iput-object v3, p0, Lcom/everyplay/Everyplay/d/b;->e:Ljava/lang/String;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/everyplay/Everyplay/d/b;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Live FaceCam stop failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->c(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Live FaceCam reset failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->c(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Release failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->c(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/everyplay/Everyplay/d/b$6;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/d/b$6;-><init>(Lcom/everyplay/Everyplay/d/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;[I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/EveryplayDevice$PermissionActivity;->a(Lcom/everyplay/Everyplay/device/e;)V

    iput-object v0, p0, Lcom/everyplay/Everyplay/d/b;->v:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/everyplay/Everyplay/d/b;->w:Ljava/lang/Boolean;

    move v0, v1

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_4

    aget-object v2, p2, v0

    const-string v4, "android.permission.CAMERA"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget v2, p3, v0

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/everyplay/Everyplay/d/b;->v:Ljava/lang/Boolean;

    :cond_0
    aget-object v2, p2, v0

    const-string v4, "android.permission.RECORD_AUDIO"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget v2, p3, v0

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/everyplay/Everyplay/d/b;->w:Ljava/lang/Boolean;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b;->v:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b;->w:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_3
    iput-boolean v3, p0, Lcom/everyplay/Everyplay/d/b;->g:Z

    iput-boolean v1, p0, Lcom/everyplay/Everyplay/d/b;->m:Z

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/d/b;->a()V

    return-void

    :cond_5
    move v3, v1

    goto :goto_3
.end method

.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/communication/c;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/everyplay/Everyplay/d/b$1;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/d/b$1;-><init>(Lcom/everyplay/Everyplay/d/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/everyplay/Everyplay/d/b;->n()V

    goto :goto_0
.end method

.method public final a(ZZ)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/everyplay/Everyplay/d/b;->c:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/everyplay/Everyplay/d/b;->c:Z

    if-eqz p1, :cond_0

    sput-boolean v1, Lcom/everyplay/Everyplay/d/b;->l:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/everyplay/Everyplay/d/b;->k:Landroid/app/Activity;

    :cond_0
    invoke-virtual {p0, p2}, Lcom/everyplay/Everyplay/d/b;->b(Z)V

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/everyplay/Everyplay/communication/c;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/everyplay/Everyplay/d/b$3;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/d/b$3;-><init>(Lcom/everyplay/Everyplay/d/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/everyplay/Everyplay/d/b;->o()V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/everyplay/Everyplay/d/b;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/everyplay/Everyplay/d/b;->f:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/everyplay/Everyplay/communication/c;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/everyplay/Everyplay/d/b$5;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/d/b$5;-><init>(Lcom/everyplay/Everyplay/d/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/everyplay/Everyplay/d/b;->p()V

    goto :goto_0
.end method

.method public final e()F
    .locals 6

    iget-boolean v0, p0, Lcom/everyplay/Everyplay/d/b;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b;->d:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/everyplay/Everyplay/d/b;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b;->d:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    int-to-float v0, v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    float-to-double v0, v0

    const-wide v4, 0x40dfffc000000000L    # 32767.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x3d380000    # -100.0f

    goto :goto_0
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/everyplay/Everyplay/d/b;->b:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "faceCamTextureReady"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3, v0, v1, v2}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->callStaticVoidMethod(ZZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
