.class public final Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$ShortBytePair;
.super Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShortBytePair"
.end annotation


# instance fields
.field final synthetic b:Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat;

.field private c:S

.field private d:B


# direct methods
.method public constructor <init>(Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat;IJ)V
    .locals 1

    iput-object p1, p0, Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$ShortBytePair;->b:Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$a;-><init>(Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat;B)V

    int-to-short v0, p2

    iput-short v0, p0, Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$ShortBytePair;->c:S

    long-to-int v0, p3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$ShortBytePair;->d:B

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-short v0, p0, Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$ShortBytePair;->c:S

    return v0
.end method

.method public final b()J
    .locals 2

    iget-byte v0, p0, Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$ShortBytePair;->d:B

    int-to-long v0, v0

    return-wide v0
.end method
