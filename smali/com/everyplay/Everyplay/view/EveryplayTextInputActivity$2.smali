.class final Lcom/everyplay/Everyplay/view/EveryplayTextInputActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/everyplay/Everyplay/view/EveryplayTextInputActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/everyplay/Everyplay/view/EveryplayTextInputActivity;


# direct methods
.method constructor <init>(Lcom/everyplay/Everyplay/view/EveryplayTextInputActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/everyplay/Everyplay/view/EveryplayTextInputActivity$2;->a:Lcom/everyplay/Everyplay/view/EveryplayTextInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/everyplay/Everyplay/view/EveryplayTextInputActivity$2;->a:Lcom/everyplay/Everyplay/view/EveryplayTextInputActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/view/EveryplayTextInputActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/everyplay/Everyplay/view/EveryplayTextInputActivity$2;->a:Lcom/everyplay/Everyplay/view/EveryplayTextInputActivity;

    invoke-static {v1}, Lcom/everyplay/Everyplay/view/EveryplayTextInputActivity;->a(Lcom/everyplay/Everyplay/view/EveryplayTextInputActivity;)Lcom/everyplay/Everyplay/view/EveryplayEditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
