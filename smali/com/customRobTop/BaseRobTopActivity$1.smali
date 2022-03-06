.class Lcom/customRobTop/BaseRobTopActivity$1;
.super Ljava/lang/Object;
.source "BaseRobTopActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/customRobTop/BaseRobTopActivity;->setupMainWindowDisplayMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/customRobTop/BaseRobTopActivity;


# direct methods
.method constructor <init>(Lcom/customRobTop/BaseRobTopActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/customRobTop/BaseRobTopActivity$1;->this$0:Lcom/customRobTop/BaseRobTopActivity;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 109
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/customRobTop/BaseRobTopActivity$1;->this$0:Lcom/customRobTop/BaseRobTopActivity;

    invoke-static {v0}, Lcom/customRobTop/BaseRobTopActivity;->access$0(Lcom/customRobTop/BaseRobTopActivity;)Landroid/view/View;

    .line 112
    :cond_0
    return-void
.end method
