.class public Lcom/everyplay/external/mp4parser/authoring/TrackMetaData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/util/Date;

.field public d:Ljava/util/Date;

.field public e:Lcom/everyplay/external/mp4parser/util/Matrix;

.field public f:D

.field public g:D

.field public h:F

.field public i:J

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "eng"

    iput-object v0, p0, Lcom/everyplay/external/mp4parser/authoring/TrackMetaData;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/everyplay/external/mp4parser/authoring/TrackMetaData;->c:Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/everyplay/external/mp4parser/authoring/TrackMetaData;->d:Ljava/util/Date;

    sget-object v0, Lcom/everyplay/external/mp4parser/util/Matrix;->j:Lcom/everyplay/external/mp4parser/util/Matrix;

    iput-object v0, p0, Lcom/everyplay/external/mp4parser/authoring/TrackMetaData;->e:Lcom/everyplay/external/mp4parser/util/Matrix;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/everyplay/external/mp4parser/authoring/TrackMetaData;->i:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/everyplay/external/mp4parser/authoring/TrackMetaData;->j:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
