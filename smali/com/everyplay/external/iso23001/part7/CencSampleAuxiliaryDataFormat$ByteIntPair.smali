.class public final Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$ByteIntPair;
.super Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ByteIntPair"
.end annotation


# instance fields
.field final synthetic b:Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat;

.field private c:B

.field private d:I


# direct methods
.method public constructor <init>(Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat;IJ)V
    .locals 1

    iput-object p1, p0, Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$ByteIntPair;->b:Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$a;-><init>(Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat;B)V

    int-to-byte v0, p2

    iput-byte v0, p0, Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$ByteIntPair;->c:B

    long-to-int v0, p3

    iput v0, p0, Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$ByteIntPair;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-byte v0, p0, Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$ByteIntPair;->c:B

    return v0
.end method

.method public final b()J
    .locals 2

    iget v0, p0, Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$ByteIntPair;->d:I

    int-to-long v0, v0

    return-wide v0
.end method
