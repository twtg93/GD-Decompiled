.class public final Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$IntLongPair;
.super Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntLongPair"
.end annotation


# instance fields
.field final synthetic b:Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat;

.field private c:I

.field private d:J


# direct methods
.method public constructor <init>(Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat;IJ)V
    .locals 1

    iput-object p1, p0, Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$IntLongPair;->b:Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$a;-><init>(Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat;B)V

    iput p2, p0, Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$IntLongPair;->c:I

    iput-wide p3, p0, Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$IntLongPair;->d:J

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$IntLongPair;->c:I

    return v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/everyplay/external/iso23001/part7/CencSampleAuxiliaryDataFormat$IntLongPair;->d:J

    return-wide v0
.end method
