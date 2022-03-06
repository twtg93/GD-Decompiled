.class public final Lcom/everyplay/Everyplay/c/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/everyplay/Everyplay/communication/l;
.implements Lcom/everyplay/Everyplay/communication/upload/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everyplay/Everyplay/c/a/c$a;
    }
.end annotation


# static fields
.field private static m:I


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field c:Ljava/util/Date;

.field public d:Z

.field public e:Lcom/everyplay/Everyplay/c/a/c$a;

.field public f:Lorg/json/JSONObject;

.field public g:Lorg/json/JSONObject;

.field public h:Lcom/everyplay/Everyplay/encoding/b;

.field i:Z

.field public j:Lcom/everyplay/Everyplay/communication/upload/b;

.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/everyplay/Everyplay/c/a/j;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/everyplay/Everyplay/c/a/d;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/Exception;

.field private o:Z

.field private p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/everyplay/Everyplay/c/a/d;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/everyplay/Everyplay/c/a/d;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/everyplay/Everyplay/c/a/h;",
            ">;>;"
        }
    .end annotation
.end field

.field private r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/everyplay/Everyplay/c/a/d;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private s:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/everyplay/Everyplay/c/a/c;->m:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/everyplay/Everyplay/c/a/c;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/everyplay/Everyplay/c/a/c;->m:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/everyplay/Everyplay/c/a/c;->m:I

    iput v0, p0, Lcom/everyplay/Everyplay/c/a/c;->a:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/everyplay/Everyplay/c/a/c;->s:D

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->k:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/everyplay/Everyplay/c/a/c;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->c:Ljava/util/Date;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->p:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->l:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->q:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->r:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/everyplay/Everyplay/communication/upload/c;->a(Lcom/everyplay/Everyplay/c/a/c;)Lcom/everyplay/Everyplay/communication/upload/b;

    move-result-object v0

    iput-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->j:Lcom/everyplay/Everyplay/communication/upload/b;

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->j:Lcom/everyplay/Everyplay/communication/upload/b;

    invoke-virtual {v0, p0}, Lcom/everyplay/Everyplay/communication/upload/b;->a(Lcom/everyplay/Everyplay/communication/upload/d;)V

    sget-object v0, Lcom/everyplay/Everyplay/c/a/c$a;->a:Lcom/everyplay/Everyplay/c/a/c$a;

    iput-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->e:Lcom/everyplay/Everyplay/c/a/c$a;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->f:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->g:Lorg/json/JSONObject;

    iput-boolean v3, p0, Lcom/everyplay/Everyplay/c/a/c;->o:Z

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/c/a/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/c/g;->b(Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/c/a/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/everyplay/Everyplay/c/g;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/everyplay/Everyplay/c/a/c;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/everyplay/Everyplay/c/a/c;->d:Z

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/everyplay/Everyplay/c/a/c;->d:Z

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/c/a/c;->h()V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/everyplay/Everyplay/c/a/c;->e()V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to deserialize session "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/everyplay/Everyplay/c/a/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/everyplay/Everyplay/c/a/c;->o:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/c/a/c;->h()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/everyplay/Everyplay/c/a/c;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->r:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/everyplay/Everyplay/c/a/c;Lcom/everyplay/Everyplay/c/a/d;Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->r:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/everyplay/Everyplay/c/a/h;

    invoke-interface {v1, p1, p2}, Lcom/everyplay/Everyplay/c/a/h;->a(Lcom/everyplay/Everyplay/c/a/d;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/everyplay/Everyplay/c/a/c;Lcom/everyplay/Everyplay/c/a/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/everyplay/Everyplay/c/a/c;Lcom/everyplay/Everyplay/c/a/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/everyplay/Everyplay/c/a/c;->d(Lcom/everyplay/Everyplay/c/a/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/everyplay/Everyplay/c/a/d;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->r:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/everyplay/Everyplay/c/a/h;

    invoke-interface {v1, p1, p2}, Lcom/everyplay/Everyplay/c/a/h;->a(Lcom/everyplay/Everyplay/c/a/d;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/everyplay/Everyplay/c/a/c;->o:Z

    :try_start_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->c:Ljava/util/Date;

    const-string v2, "created"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    const-string v0, "persist"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/everyplay/Everyplay/c/a/c;->d:Z

    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/c/a/c$a;->valueOf(Ljava/lang/String;)Lcom/everyplay/Everyplay/c/a/c$a;

    move-result-object v0

    iput-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->e:Lcom/everyplay/Everyplay/c/a/c$a;

    const-string v0, "client_metadata"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->f:Lorg/json/JSONObject;

    const-string v0, "developer_metadata"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->g:Lorg/json/JSONObject;

    const-string v0, "upload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/everyplay/Everyplay/c/a/c;->j:Lcom/everyplay/Everyplay/communication/upload/b;

    invoke-virtual {v2, v0}, Lcom/everyplay/Everyplay/communication/upload/b;->a(Lorg/json/JSONObject;)V

    const-string v0, "items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/everyplay/Everyplay/c/a/d;->valueOf(Ljava/lang/String;)Lcom/everyplay/Everyplay/c/a/d;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move v0, v1

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_0

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/c/a/c;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->l:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to deserialize "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/everyplay/Everyplay/c/a/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from storage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/everyplay/Everyplay/device/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iput-boolean v1, p0, Lcom/everyplay/Everyplay/c/a/c;->d:Z

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/everyplay/Everyplay/c/a/c;Lcom/everyplay/Everyplay/c/a/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/everyplay/Everyplay/c/a/c;->c(Lcom/everyplay/Everyplay/c/a/d;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/everyplay/Everyplay/c/a/d;Ljava/lang/String;)V
    .locals 12

    const-string v0, "maxRecordingSecondsLength"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v0, 0x0

    if-lez v8, :cond_2

    if-eqz p2, :cond_2

    iget-object v1, p1, Lcom/everyplay/Everyplay/c/a/d;->j:Ljava/lang/String;

    const-string v2, "mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/everyplay/Everyplay/c/a/d;->j:Ljava/lang/String;

    const-string v2, "m4a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p1, Lcom/everyplay/Everyplay/c/a/d;->j:Ljava/lang/String;

    const-string v2, "m4a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v3, Lcom/everyplay/Everyplay/c/a/d;->h:Lcom/everyplay/Everyplay/c/a/d;

    :goto_0
    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Lcom/everyplay/Everyplay/c/a/a;

    invoke-direct {v1, p2}, Lcom/everyplay/Everyplay/c/a/a;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/everyplay/Everyplay/c/a/a;->a()Lcom/everyplay/external/iso/boxes/MovieBox;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/everyplay/Everyplay/c/a/a;->a()Lcom/everyplay/external/iso/boxes/MovieBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/everyplay/external/iso/boxes/MovieBox;->getMovieHeaderBox()Lcom/everyplay/external/iso/boxes/MovieHeaderBox;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/everyplay/Everyplay/c/a/a;->a()Lcom/everyplay/external/iso/boxes/MovieBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/everyplay/external/iso/boxes/MovieBox;->getMovieHeaderBox()Lcom/everyplay/external/iso/boxes/MovieHeaderBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/everyplay/external/iso/boxes/MovieHeaderBox;->getDuration()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual {v2}, Lcom/everyplay/external/iso/boxes/MovieHeaderBox;->getTimescale()J

    move-result-wide v6

    long-to-double v6, v6

    div-double v6, v4, v6

    :try_start_1
    invoke-virtual {v1}, Lcom/everyplay/Everyplay/c/a/a;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    int-to-double v4, v8

    sub-double v4, v6, v4

    const-wide/16 v10, 0x0

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    sget-object v1, Lcom/everyplay/Everyplay/c/a/d;->a:Lcom/everyplay/Everyplay/c/a/d;

    if-ne p1, v1, :cond_5

    sub-double v8, v6, v4

    iput-wide v8, p0, Lcom/everyplay/Everyplay/c/a/c;->s:D

    :cond_1
    :goto_3
    sub-double v8, v6, v4

    const-wide/16 v10, 0x0

    cmpl-double v1, v8, v10

    if-lez v1, :cond_2

    cmpl-double v1, v6, v8

    if-lez v1, :cond_2

    const/4 v9, 0x1

    new-instance v0, Lcom/everyplay/Everyplay/c/a/f;

    new-instance v8, Lcom/everyplay/Everyplay/c/a/c$1;

    invoke-direct {v8, p0, p2, p1}, Lcom/everyplay/Everyplay/c/a/c$1;-><init>(Lcom/everyplay/Everyplay/c/a/c;Ljava/lang/String;Lcom/everyplay/Everyplay/c/a/d;)V

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/everyplay/Everyplay/c/a/f;-><init>(Lcom/everyplay/Everyplay/c/a/c;Lcom/everyplay/Everyplay/c/a/d;Lcom/everyplay/Everyplay/c/a/d;DDLcom/everyplay/Everyplay/c/a/i;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/c/a/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v9

    :cond_2
    if-nez v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    sget-object v3, Lcom/everyplay/Everyplay/c/a/d;->b:Lcom/everyplay/Everyplay/c/a/d;

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v2

    goto :goto_1

    :cond_5
    iget-wide v10, p0, Lcom/everyplay/Everyplay/c/a/c;->s:D

    int-to-double v8, v8

    cmpg-double v1, v10, v8

    if-gez v1, :cond_1

    iget-wide v4, p0, Lcom/everyplay/Everyplay/c/a/c;->s:D

    sub-double v4, v6, v4

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private d(Lcom/everyplay/Everyplay/c/a/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/everyplay/Everyplay/c/a/c;->c(Lcom/everyplay/Everyplay/c/a/d;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/everyplay/Everyplay/c/a/c;->a(Lcom/everyplay/Everyplay/c/a/d;I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {p2, v0}, Lcom/everyplay/Everyplay/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/c/a/j;

    invoke-interface {v0, p0}, Lcom/everyplay/Everyplay/c/a/j;->onUpdate(Lcom/everyplay/Everyplay/c/a/c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/c/a/j;

    invoke-interface {v0, p0}, Lcom/everyplay/Everyplay/c/a/j;->onClean(Lcom/everyplay/Everyplay/c/a/c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private k()Lorg/json/JSONObject;
    .locals 8

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "id"

    iget-object v1, p0, Lcom/everyplay/Everyplay/c/a/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "created"

    iget-object v1, p0, Lcom/everyplay/Everyplay/c/a/c;->c:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "persist"

    iget-boolean v1, p0, Lcom/everyplay/Everyplay/c/a/c;->d:Z

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "status"

    iget-object v1, p0, Lcom/everyplay/Everyplay/c/a/c;->e:Lcom/everyplay/Everyplay/c/a/c$a;

    invoke-virtual {v1}, Lcom/everyplay/Everyplay/c/a/c$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "client_metadata"

    iget-object v1, p0, Lcom/everyplay/Everyplay/c/a/c;->f:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "developer_metadata"

    iget-object v1, p0, Lcom/everyplay/Everyplay/c/a/c;->g:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "upload"

    iget-object v1, p0, Lcom/everyplay/Everyplay/c/a/c;->j:Lcom/everyplay/Everyplay/communication/upload/b;

    invoke-virtual {v1}, Lcom/everyplay/Everyplay/communication/upload/b;->f()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/c/a/d;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/everyplay/Everyplay/c/a/d;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string v0, "items"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/everyplay/Everyplay/c/a/d;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/everyplay/Everyplay/c/a/c;->a(Lcom/everyplay/Everyplay/c/a/d;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/everyplay/Everyplay/c/a/d;I)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/everyplay/Everyplay/c/a/c;->l:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/c/a/c;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/everyplay/Everyplay/c/a/d;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_"

    const-string v7, "-"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/everyplay/Everyplay/c/a/d;->j:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/everyplay/Everyplay/c/g;->f(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/everyplay/Everyplay/c/a/c;->p:Ljava/util/HashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Limit: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " filesCount: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez p2, :cond_0

    if-le v3, p2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/everyplay/Everyplay/c/g;->f(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-object v4

    :cond_1
    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto/16 :goto_1
.end method

.method public final a()V
    .locals 2

    const-string v0, "encoding"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setBoolean(Ljava/lang/String;Z)V

    const-string v0, "had-keep-current-session"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/c/a/j;

    invoke-interface {v0, p0}, Lcom/everyplay/Everyplay/c/a/j;->onRecordingStarted(Lcom/everyplay/Everyplay/c/a/c;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/everyplay/Everyplay/c/a/c;->e()V

    invoke-direct {p0}, Lcom/everyplay/Everyplay/c/a/c;->i()V

    return-void
.end method

.method public final a(Lcom/everyplay/Everyplay/c/a/d;Lcom/everyplay/Everyplay/c/a/h;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/everyplay/Everyplay/c/a/c;->q:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->r:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->r:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-boolean v0, p1, Lcom/everyplay/Everyplay/c/a/d;->l:Z

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/everyplay/Everyplay/c/a/c;->c(Lcom/everyplay/Everyplay/c/a/d;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/c/a/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/everyplay/Everyplay/c/a/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/c/g;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1, v0}, Lcom/everyplay/Everyplay/c/a/c;->c(Lcom/everyplay/Everyplay/c/a/d;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->r:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/everyplay/Everyplay/c/a/e;

    new-instance v1, Lcom/everyplay/Everyplay/c/a/c$2;

    invoke-direct {v1, p0}, Lcom/everyplay/Everyplay/c/a/c$2;-><init>(Lcom/everyplay/Everyplay/c/a/c;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/everyplay/Everyplay/c/a/e;-><init>(Lcom/everyplay/Everyplay/c/a/c;Lcom/everyplay/Everyplay/c/a/d;Lcom/everyplay/Everyplay/c/a/h;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/everyplay/Everyplay/c/a/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method public final a(Lcom/everyplay/Everyplay/c/a/d;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-static {p2}, Lcom/everyplay/Everyplay/c/g;->f(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/everyplay/Everyplay/c/a/c;->p:Ljava/util/HashMap;

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final a(Lcom/everyplay/Everyplay/c/a/j;)V
    .locals 1

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/everyplay/Everyplay/encoding/b;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Lcom/everyplay/Everyplay/encoding/b;->a(Lcom/everyplay/Everyplay/communication/l;)V

    iget v0, p1, Lcom/everyplay/Everyplay/encoding/b;->a:I

    invoke-static {v0}, Lcom/everyplay/Everyplay/encoding/b;->c(I)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->h:Lcom/everyplay/Everyplay/encoding/b;

    if-ne p1, v0, :cond_0

    iput-object v2, p0, Lcom/everyplay/Everyplay/c/a/c;->h:Lcom/everyplay/Everyplay/encoding/b;

    :cond_0
    const-string v0, "encoding"

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->setBoolean(Ljava/lang/String;Z)V

    const-string v0, "keep-current-session"

    invoke-static {v0, v1}, Lcom/everyplay/Everyplay/communication/EveryplayNativeBridge;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/c/a/j;

    invoke-interface {v0, p0}, Lcom/everyplay/Everyplay/c/a/j;->onRecordingStopped(Lcom/everyplay/Everyplay/c/a/c;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/everyplay/Everyplay/c/a/c;->e()V

    invoke-direct {p0}, Lcom/everyplay/Everyplay/c/a/c;->i()V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/json/JSONObject;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/everyplay/Everyplay/c/a/c;->f:Lorg/json/JSONObject;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/everyplay/Everyplay/d;->a([Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->f:Lorg/json/JSONObject;

    return-void
.end method

.method public final b()Lcom/everyplay/Everyplay/c/a/d;
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->l:Ljava/util/HashMap;

    sget-object v1, Lcom/everyplay/Everyplay/c/a/d;->c:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/c/a/d;->c:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/everyplay/Everyplay/c/a/d;->c:Lcom/everyplay/Everyplay/c/a/d;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->l:Ljava/util/HashMap;

    sget-object v1, Lcom/everyplay/Everyplay/c/a/d;->a:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/everyplay/Everyplay/c/a/d;->a:Lcom/everyplay/Everyplay/c/a/d;

    invoke-virtual {p0, v0}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/everyplay/Everyplay/c/a/d;->a:Lcom/everyplay/Everyplay/c/a/d;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/everyplay/Everyplay/c/a/d;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->e:Lcom/everyplay/Everyplay/c/a/c$a;

    sget-object v1, Lcom/everyplay/Everyplay/c/a/c$a;->b:Lcom/everyplay/Everyplay/c/a/c$a;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t stop recording while session status is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/everyplay/Everyplay/c/a/c;->e:Lcom/everyplay/Everyplay/c/a/c$a;

    invoke-virtual {v1}, Lcom/everyplay/Everyplay/c/a/c$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/everyplay/Everyplay/c/a/c;->m:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/everyplay/Everyplay/c/a/c;->m:I

    iput v0, p0, Lcom/everyplay/Everyplay/c/a/c;->a:I

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->h:Lcom/everyplay/Everyplay/encoding/b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->h:Lcom/everyplay/Everyplay/encoding/b;

    iget-object v1, v0, Lcom/everyplay/Everyplay/encoding/b;->k:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/everyplay/Everyplay/encoding/b;->j:Lcom/everyplay/Everyplay/encoding/b$a;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/everyplay/Everyplay/encoding/b;->j:Lcom/everyplay/Everyplay/encoding/b$a;

    sget v1, Lcom/everyplay/Everyplay/encoding/b$b;->c:I

    iput v1, v0, Lcom/everyplay/Everyplay/encoding/b$a;->a:I

    :cond_2
    :goto_1
    sget-object v0, Lcom/everyplay/Everyplay/c/a/c$a;->c:Lcom/everyplay/Everyplay/c/a/c$a;

    iput-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->e:Lcom/everyplay/Everyplay/c/a/c$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/c/a/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Screen-0.mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/c/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/everyplay/Everyplay/c/g;->h(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/everyplay/Everyplay/communication/g;->c()V

    goto :goto_0

    :cond_3
    const-string v0, "Encoder is NULL"

    invoke-static {v0}, Lcom/everyplay/Everyplay/device/b;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final c(Lcom/everyplay/Everyplay/c/a/d;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/everyplay/Everyplay/c/a/c;->b(Lcom/everyplay/Everyplay/c/a/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/everyplay/Everyplay/c/g;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->p:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->e:Lcom/everyplay/Everyplay/c/a/c$a;

    sget-object v1, Lcom/everyplay/Everyplay/c/a/c$a;->d:Lcom/everyplay/Everyplay/c/a/c$a;

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->e:Lcom/everyplay/Everyplay/c/a/c$a;

    sget-object v1, Lcom/everyplay/Everyplay/c/a/c$a;->b:Lcom/everyplay/Everyplay/c/a/c$a;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/c/a/c;->c()V

    :cond_2
    sget-object v0, Lcom/everyplay/Everyplay/c/a/c$a;->d:Lcom/everyplay/Everyplay/c/a/c$a;

    iput-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->e:Lcom/everyplay/Everyplay/c/a/c$a;

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/c/a/j;

    invoke-interface {v0, p0}, Lcom/everyplay/Everyplay/c/a/j;->onClose(Lcom/everyplay/Everyplay/c/a/c;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 3

    iget-boolean v0, p0, Lcom/everyplay/Everyplay/c/a/c;->i:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/everyplay/Everyplay/c/a/c;->k()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/c/a/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/data.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/everyplay/Everyplay/c/g;->b(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected final f()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/everyplay/Everyplay/c/a/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/everyplay/Everyplay/c/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lorg/json/JSONObject;
    .locals 10

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "id"

    iget-object v2, p0, Lcom/everyplay/Everyplay/c/a/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "date"

    iget-object v3, p0, Lcom/everyplay/Everyplay/c/a/c;->c:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "persist"

    iget-boolean v3, p0, Lcom/everyplay/Everyplay/c/a/c;->d:Z

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "upload_status"

    iget-object v3, p0, Lcom/everyplay/Everyplay/c/a/c;->j:Lcom/everyplay/Everyplay/communication/upload/b;

    iget-object v3, v3, Lcom/everyplay/Everyplay/communication/upload/b;->c:Lcom/everyplay/Everyplay/communication/upload/b$a;

    invoke-virtual {v3}, Lcom/everyplay/Everyplay/communication/upload/b$a;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "upload_percentage"

    iget-object v3, p0, Lcom/everyplay/Everyplay/c/a/c;->j:Lcom/everyplay/Everyplay/communication/upload/b;

    invoke-virtual {v3}, Lcom/everyplay/Everyplay/communication/upload/b;->a()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "upload_bytes_completed"

    iget-object v3, p0, Lcom/everyplay/Everyplay/c/a/c;->j:Lcom/everyplay/Everyplay/communication/upload/b;

    invoke-virtual {v3}, Lcom/everyplay/Everyplay/communication/upload/b;->b()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "upload_bytes_total"

    iget-object v3, p0, Lcom/everyplay/Everyplay/c/a/c;->j:Lcom/everyplay/Everyplay/communication/upload/b;

    invoke-virtual {v3}, Lcom/everyplay/Everyplay/communication/upload/b;->c()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->e:Lcom/everyplay/Everyplay/c/a/c$a;

    sget-object v3, Lcom/everyplay/Everyplay/c/a/c$a;->g:Lcom/everyplay/Everyplay/c/a/c$a;

    if-ne v0, v3, :cond_0

    const-string v0, "upload_error"

    iget-object v3, p0, Lcom/everyplay/Everyplay/c/a/c;->n:Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->j:Lcom/everyplay/Everyplay/communication/upload/b;

    iget-object v0, v0, Lcom/everyplay/Everyplay/communication/upload/b;->e:Lcom/everyplay/Everyplay/c/o;

    if-eqz v0, :cond_1

    const-string v0, "video"

    iget-object v3, p0, Lcom/everyplay/Everyplay/c/a/c;->j:Lcom/everyplay/Everyplay/communication/upload/b;

    iget-object v3, v3, Lcom/everyplay/Everyplay/communication/upload/b;->e:Lcom/everyplay/Everyplay/c/o;

    invoke-virtual {v3}, Lcom/everyplay/Everyplay/c/o;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->g:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    const-string v0, "developer_metadata"

    iget-object v3, p0, Lcom/everyplay/Everyplay/c/a/c;->g:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->f:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    const-string v0, "client_metadata"

    iget-object v3, p0, Lcom/everyplay/Everyplay/c/a/c;->f:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->j:Lcom/everyplay/Everyplay/communication/upload/b;

    iget-object v0, v0, Lcom/everyplay/Everyplay/communication/upload/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/Everyplay/communication/upload/a;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "upload_bytes_completed"

    iget-wide v8, v0, Lcom/everyplay/Everyplay/communication/upload/a;->g:J

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "upload_bytes_total"

    iget-wide v8, v0, Lcom/everyplay/Everyplay/communication/upload/a;->f:J

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v6, v0, Lcom/everyplay/Everyplay/communication/upload/a;->e:Lorg/json/JSONObject;

    if-eqz v6, :cond_4

    const-string v6, "upload_response"

    iget-object v7, v0, Lcom/everyplay/Everyplay/communication/upload/a;->e:Lorg/json/JSONObject;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string v6, "upload_status"

    iget-object v7, v0, Lcom/everyplay/Everyplay/communication/upload/a;->c:Lcom/everyplay/Everyplay/communication/upload/b$a;

    invoke-virtual {v7}, Lcom/everyplay/Everyplay/communication/upload/b$a;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v0, Lcom/everyplay/Everyplay/communication/upload/a;->b:Lcom/everyplay/Everyplay/c/a/d;

    iget-object v0, v0, Lcom/everyplay/Everyplay/c/a/d;->k:Ljava/lang/String;

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    return-object v1

    :cond_5
    const-string v0, "upload_metadata"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "data"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "uploading"

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->e:Lcom/everyplay/Everyplay/c/a/c$a;

    sget-object v3, Lcom/everyplay/Everyplay/c/a/c$a;->e:Lcom/everyplay/Everyplay/c/a/c$a;

    if-ne v0, v3, :cond_6

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->e:Lcom/everyplay/Everyplay/c/a/c$a;

    sget-object v1, Lcom/everyplay/Everyplay/c/a/c$a;->a:Lcom/everyplay/Everyplay/c/a/c$a;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/c/a/c;->d()V

    :cond_0
    iget-boolean v0, p0, Lcom/everyplay/Everyplay/c/a/c;->d:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cleaning "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/everyplay/Everyplay/c/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " files from storage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/c/a/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/everyplay/Everyplay/c/g;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->j:Lcom/everyplay/Everyplay/communication/upload/b;

    invoke-virtual {v0}, Lcom/everyplay/Everyplay/communication/upload/b;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/everyplay/Everyplay/c/a/c;->i:Z

    invoke-direct {p0}, Lcom/everyplay/Everyplay/c/a/c;->j()V

    iget-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public final onItemUploadCompleted(Lcom/everyplay/Everyplay/communication/upload/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/everyplay/Everyplay/c/a/c;->i()V

    return-void
.end method

.method public final onItemUploadFailed(Lcom/everyplay/Everyplay/communication/upload/a;Ljava/lang/Exception;)V
    .locals 0

    iput-object p2, p0, Lcom/everyplay/Everyplay/c/a/c;->n:Ljava/lang/Exception;

    invoke-direct {p0}, Lcom/everyplay/Everyplay/c/a/c;->i()V

    return-void
.end method

.method public final onItemUploadProgress(Lcom/everyplay/Everyplay/communication/upload/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/everyplay/Everyplay/c/a/c;->i()V

    return-void
.end method

.method public final onUploadCompleted(Lcom/everyplay/Everyplay/communication/upload/b;)V
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/c/a/c$a;->f:Lcom/everyplay/Everyplay/c/a/c$a;

    iput-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->e:Lcom/everyplay/Everyplay/c/a/c$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/everyplay/Everyplay/c/a/c;->d:Z

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/c/a/c;->e()V

    invoke-direct {p0}, Lcom/everyplay/Everyplay/c/a/c;->i()V

    return-void
.end method

.method public final onUploadFailed(Lcom/everyplay/Everyplay/communication/upload/b;Ljava/lang/Exception;)V
    .locals 1

    iput-object p2, p0, Lcom/everyplay/Everyplay/c/a/c;->n:Ljava/lang/Exception;

    sget-object v0, Lcom/everyplay/Everyplay/c/a/c$a;->g:Lcom/everyplay/Everyplay/c/a/c$a;

    iput-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->e:Lcom/everyplay/Everyplay/c/a/c$a;

    invoke-direct {p0}, Lcom/everyplay/Everyplay/c/a/c;->i()V

    return-void
.end method

.method public final onUploadProgress(Lcom/everyplay/Everyplay/communication/upload/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/everyplay/Everyplay/c/a/c;->i()V

    return-void
.end method

.method public final onUploadSessionReceived(Lcom/everyplay/Everyplay/communication/upload/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/everyplay/Everyplay/c/a/c;->i()V

    return-void
.end method

.method public final onUploadStarted(Lcom/everyplay/Everyplay/communication/upload/b;)V
    .locals 1

    sget-object v0, Lcom/everyplay/Everyplay/c/a/c$a;->e:Lcom/everyplay/Everyplay/c/a/c$a;

    iput-object v0, p0, Lcom/everyplay/Everyplay/c/a/c;->e:Lcom/everyplay/Everyplay/c/a/c$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/everyplay/Everyplay/c/a/c;->d:Z

    invoke-virtual {p0}, Lcom/everyplay/Everyplay/c/a/c;->e()V

    invoke-direct {p0}, Lcom/everyplay/Everyplay/c/a/c;->i()V

    return-void
.end method
