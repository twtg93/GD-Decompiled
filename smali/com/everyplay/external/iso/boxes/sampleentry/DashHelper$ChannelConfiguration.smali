.class public Lcom/everyplay/external/iso/boxes/sampleentry/DashHelper$ChannelConfiguration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/external/iso/boxes/sampleentry/DashHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelConfiguration"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/DashHelper$ChannelConfiguration;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/everyplay/external/iso/boxes/sampleentry/DashHelper$ChannelConfiguration;->b:Ljava/lang/String;

    return-void
.end method
