.class public final Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$IntBytePair;
.super Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntBytePair"
.end annotation


# instance fields
.field final synthetic b:Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat;

.field private c:I

.field private d:B


# direct methods
.method public constructor <init>(Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat;IJ)V
    .locals 1

    iput-object p1, p0, Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$IntBytePair;->b:Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$a;-><init>(Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat;B)V

    iput p2, p0, Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$IntBytePair;->c:I

    long-to-int v0, p3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$IntBytePair;->d:B

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$IntBytePair;->c:I

    return v0
.end method

.method public final b()J
    .locals 2

    iget-byte v0, p0, Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$IntBytePair;->d:B

    int-to-long v0, v0

    return-wide v0
.end method
