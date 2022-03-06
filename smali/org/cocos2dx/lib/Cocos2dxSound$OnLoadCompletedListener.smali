.class public Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;
.super Ljava/lang/Object;
.source "Cocos2dxSound.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnLoadCompletedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxSound;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxSound;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;->this$0:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 9
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .prologue
    .line 340
    if-nez p3, :cond_2

    .line 343
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;->this$0:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->access$0(Lorg/cocos2dx/lib/Cocos2dxSound;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 359
    :goto_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;->this$0:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->access$3(Lorg/cocos2dx/lib/Cocos2dxSound;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 360
    return-void

    .line 343
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;

    .line 344
    .local v7, "info":Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;
    iget v1, v7, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->soundID:I

    if-ne p2, v1, :cond_0

    .line 346
    iget-object v8, p0, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;->this$0:Lorg/cocos2dx/lib/Cocos2dxSound;

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;->this$0:Lorg/cocos2dx/lib/Cocos2dxSound;

    iget-object v1, v7, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->path:Ljava/lang/String;

    iget v2, v7, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->soundID:I

    iget-boolean v3, v7, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->isLoop:Z

    iget v4, v7, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->pitch:F

    iget v5, v7, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->pan:F

    iget v6, v7, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->gain:F

    invoke-static/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxSound;->access$1(Lorg/cocos2dx/lib/Cocos2dxSound;Ljava/lang/String;IZFFF)I

    move-result v0

    invoke-static {v8, v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->access$2(Lorg/cocos2dx/lib/Cocos2dxSound;I)V

    .line 350
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;->this$0:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->access$0(Lorg/cocos2dx/lib/Cocos2dxSound;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 356
    .end local v7    # "info":Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;
    :cond_2
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;->this$0:Lorg/cocos2dx/lib/Cocos2dxSound;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxSound;->access$2(Lorg/cocos2dx/lib/Cocos2dxSound;I)V

    goto :goto_0
.end method
