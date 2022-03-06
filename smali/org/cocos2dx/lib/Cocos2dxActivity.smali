.class public abstract Lorg/cocos2dx/lib/Cocos2dxActivity;
.super Lcom/customRobTop/BaseRobTopActivity;
.source "Cocos2dxActivity.java"

# interfaces
.implements Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;


# instance fields
.field private hasWindowFocus_:Z

.field private mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

.field private mHandler:Lorg/cocos2dx/lib/Cocos2dxHandler;

.field private mIsOnPause:Z

.field private mIsRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->TAG:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lcom/customRobTop/BaseRobTopActivity;-><init>()V

    .line 45
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->hasWindowFocus_:Z

    .line 94
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mIsRunning:Z

    .line 95
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mIsOnPause:Z

    .line 39
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method private static final isAndroidEmulator()Z
    .locals 6

    .prologue
    .line 208
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 209
    .local v1, "model":Ljava/lang/String;
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "model="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 211
    .local v2, "product":Ljava/lang/String;
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "product="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "isEmulator":Z
    if-eqz v2, :cond_0

    .line 214
    const-string v3, "sdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "_sdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "sdk_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    .line 216
    :cond_0
    :goto_0
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isEmulator="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return v0

    .line 214
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private pauseGame()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mIsRunning:Z

    .line 90
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onPause()V

    .line 91
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onPause()V

    .line 93
    return-void
.end method

.method private resumeGame()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mIsRunning:Z

    .line 84
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onResume()V

    .line 85
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onResume()V

    .line 87
    return-void
.end method


# virtual methods
.method public init()V
    .locals 11

    .prologue
    const/4 v2, -0x1

    const/16 v1, 0x8

    .line 170
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 172
    .local v10, "framelayout_params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 173
    .local v9, "framelayout":Landroid/widget/FrameLayout;
    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    .line 178
    const/4 v0, -0x2

    .line 177
    invoke-direct {v8, v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 179
    .local v8, "edittext_layout_params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v7, Lorg/cocos2dx/lib/Cocos2dxEditText;

    invoke-direct {v7, p0}, Lorg/cocos2dx/lib/Cocos2dxEditText;-><init>(Landroid/content/Context;)V

    .line 180
    .local v7, "edittext":Lorg/cocos2dx/lib/Cocos2dxEditText;
    invoke-virtual {v7, v8}, Lorg/cocos2dx/lib/Cocos2dxEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    invoke-virtual {v9, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 186
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreateView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 189
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 192
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->isAndroidEmulator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    const/16 v5, 0x10

    const/4 v6, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxRenderer;

    invoke-direct {v1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;-><init>()V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setCocos2dxRenderer(Lorg/cocos2dx/lib/Cocos2dxRenderer;)V

    .line 196
    const/16 v0, 0x91

    invoke-virtual {v7, v0}, Lorg/cocos2dx/lib/Cocos2dxEditText;->setInputType(I)V

    .line 197
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0, v7}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setCocos2dxEditText(Lorg/cocos2dx/lib/Cocos2dxEditText;)V

    .line 200
    invoke-virtual {p0, v9}, Lorg/cocos2dx/lib/Cocos2dxActivity;->setContentView(Landroid/view/View;)V

    .line 201
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/customRobTop/BaseRobTopActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Landroid/content/Context;

    .line 67
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxHandler;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxHandler;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHandler:Lorg/cocos2dx/lib/Cocos2dxHandler;

    .line 69
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->init()V

    .line 71
    invoke-static {p0, p0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->init(Landroid/content/Context;Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;)V

    .line 72
    return-void
.end method

.method public onCreateView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    .locals 1

    .prologue
    .line 204
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/customRobTop/BaseRobTopActivity;->onPause()V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mIsOnPause:Z

    .line 111
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->pauseGame()V

    .line 114
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/customRobTop/BaseRobTopActivity;->onResume()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mIsOnPause:Z

    .line 101
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->hasWindowFocus_:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mIsRunning:Z

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->resumeGame()V

    .line 105
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/customRobTop/BaseRobTopActivity;->onWindowFocusChanged(Z)V

    .line 118
    iput-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->hasWindowFocus_:Z

    .line 120
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mIsOnPause:Z

    if-nez v0, :cond_0

    .line 121
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->resumeGame()V

    .line 123
    :cond_0
    return-void
.end method

.method public runOnGLThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "pRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 160
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0, p1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 161
    return-void
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pTitle"    # Ljava/lang/String;
    .param p2, "pMessage"    # Ljava/lang/String;

    .prologue
    .line 144
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 145
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 146
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;

    invoke-direct {v1, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 147
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHandler:Lorg/cocos2dx/lib/Cocos2dxHandler;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxHandler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    return-void
.end method

.method public showEditTextDialog(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 8
    .param p1, "pTitle"    # Ljava/lang/String;
    .param p2, "pContent"    # Ljava/lang/String;
    .param p3, "pInputMode"    # I
    .param p4, "pInputFlag"    # I
    .param p5, "pReturnType"    # I
    .param p6, "pMaxLength"    # I

    .prologue
    .line 152
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 153
    .local v7, "msg":Landroid/os/Message;
    const/4 v0, 0x2

    iput v0, v7, Landroid/os/Message;->what:I

    .line 154
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHandler:Lorg/cocos2dx/lib/Cocos2dxHandler;

    invoke-virtual {v0, v7}, Lorg/cocos2dx/lib/Cocos2dxHandler;->sendMessage(Landroid/os/Message;)Z

    .line 156
    return-void
.end method
