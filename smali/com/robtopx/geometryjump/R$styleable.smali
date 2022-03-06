.class public final Lcom/robtopx/geometryjump/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/robtopx/geometryjump/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final EveryplayImageView:[I

.field public static final EveryplayImageView_borderRadius:I = 0x0

.field public static final EveryplayRangeSlider:[I

.field public static final EveryplayRangeSlider_backgroundTrackDrawable:I = 0x9

.field public static final EveryplayRangeSlider_currentTimeTrackDrawable:I = 0xb

.field public static final EveryplayRangeSlider_endPointButtonDrawable:I = 0x7

.field public static final EveryplayRangeSlider_endPointButtonDrawablePressed:I = 0x8

.field public static final EveryplayRangeSlider_endPointButtonWidth:I = 0x6

.field public static final EveryplayRangeSlider_startPointButtonDrawable:I = 0x1

.field public static final EveryplayRangeSlider_startPointButtonDrawablePressed:I = 0x2

.field public static final EveryplayRangeSlider_startPointButtonWidth:I = 0x0

.field public static final EveryplayRangeSlider_streamProgressTrackDrawable:I = 0xa

.field public static final EveryplayRangeSlider_trackerButtonDrawable:I = 0x4

.field public static final EveryplayRangeSlider_trackerButtonDrawablePressed:I = 0x5

.field public static final EveryplayRangeSlider_trackerButtonWidth:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 405
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 406
    const/high16 v2, 0x7f010000

    aput v2, v0, v1

    .line 405
    sput-object v0, Lcom/robtopx/geometryjump/R$styleable;->EveryplayImageView:[I

    .line 454
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/robtopx/geometryjump/R$styleable;->EveryplayRangeSlider:[I

    .line 596
    return-void

    .line 454
    :array_0
    .array-data 4
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
        0x7f01000c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
