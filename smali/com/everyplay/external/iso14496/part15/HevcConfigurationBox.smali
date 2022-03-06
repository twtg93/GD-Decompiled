.class public Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;
.super Lcom/everyplay/external/mp4parser/AbstractBox;


# static fields
.field private static final A:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

.field private static final B:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

.field private static final C:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

.field private static final D:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

.field private static final E:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

.field public static final TYPE:Ljava/lang/String; = "hvcC"

.field private static final b:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

.field private static final c:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

.field private static final d:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

.field private static final e:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

.field private static final f:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

.field private static final g:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

.field private static final h:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

.field private static final i:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

.field private static final j:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

.field private static final k:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

.field private static final t:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

.field private static final u:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

.field private static final v:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

.field private static final w:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

.field private static final x:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

.field private static final y:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

.field private static final z:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;

    const-string v1, "HevcConfigurationBox.java"

    const-class v2, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;

    invoke-direct {v0, v1, v2}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getHevcDecoderConfigurationRecord"

    const-string v3, "com.everyplay.external.iso14496.part15.HevcConfigurationBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "com.everyplay.external.iso14496.part15.HevcDecoderConfigurationRecord"

    invoke-virtual/range {v0 .. v7}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/everyplay/external/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v0, v8, v1, v2}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Lcom/everyplay/external/aspectj/lang/Signature;I)Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->b:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "setHevcDecoderConfigurationRecord"

    const-string v3, "com.everyplay.external.iso14496.part15.HevcConfigurationBox"

    const-string v4, "com.everyplay.external.iso14496.part15.HevcDecoderConfigurationRecord"

    const-string v5, "hevcDecoderConfigurationRecord"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/everyplay/external/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v0, v8, v1, v2}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Lcom/everyplay/external/aspectj/lang/Signature;I)Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->c:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getGeneral_level_idc"

    const-string v3, "com.everyplay.external.iso14496.part15.HevcConfigurationBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "int"

    invoke-virtual/range {v0 .. v7}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/everyplay/external/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x58

    invoke-virtual {v0, v8, v1, v2}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Lcom/everyplay/external/aspectj/lang/Signature;I)Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->t:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getMin_spatial_segmentation_idc"

    const-string v3, "com.everyplay.external.iso14496.part15.HevcConfigurationBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "int"

    invoke-virtual/range {v0 .. v7}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/everyplay/external/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x5c

    invoke-virtual {v0, v8, v1, v2}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Lcom/everyplay/external/aspectj/lang/Signature;I)Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->u:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getParallelismType"

    const-string v3, "com.everyplay.external.iso14496.part15.HevcConfigurationBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "int"

    invoke-virtual/range {v0 .. v7}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/everyplay/external/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x60

    invoke-virtual {v0, v8, v1, v2}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Lcom/everyplay/external/aspectj/lang/Signature;I)Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->v:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getChromaFormat"

    const-string v3, "com.everyplay.external.iso14496.part15.HevcConfigurationBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "int"

    invoke-virtual/range {v0 .. v7}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/everyplay/external/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v8, v1, v2}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Lcom/everyplay/external/aspectj/lang/Signature;I)Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->w:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getBitDepthLumaMinus8"

    const-string v3, "com.everyplay.external.iso14496.part15.HevcConfigurationBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "int"

    invoke-virtual/range {v0 .. v7}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/everyplay/external/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x68

    invoke-virtual {v0, v8, v1, v2}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Lcom/everyplay/external/aspectj/lang/Signature;I)Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->x:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getBitDepthChromaMinus8"

    const-string v3, "com.everyplay.external.iso14496.part15.HevcConfigurationBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "int"

    invoke-virtual/range {v0 .. v7}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/everyplay/external/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x6c

    invoke-virtual {v0, v8, v1, v2}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Lcom/everyplay/external/aspectj/lang/Signature;I)Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->y:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getAvgFrameRate"

    const-string v3, "com.everyplay.external.iso14496.part15.HevcConfigurationBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "int"

    invoke-virtual/range {v0 .. v7}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/everyplay/external/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x70

    invoke-virtual {v0, v8, v1, v2}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Lcom/everyplay/external/aspectj/lang/Signature;I)Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->z:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getNumTemporalLayers"

    const-string v3, "com.everyplay.external.iso14496.part15.HevcConfigurationBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "int"

    invoke-virtual/range {v0 .. v7}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/everyplay/external/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x74

    invoke-virtual {v0, v8, v1, v2}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Lcom/everyplay/external/aspectj/lang/Signature;I)Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->A:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getLengthSizeMinusOne"

    const-string v3, "com.everyplay.external.iso14496.part15.HevcConfigurationBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "int"

    invoke-virtual/range {v0 .. v7}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/everyplay/external/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x78

    invoke-virtual {v0, v8, v1, v2}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Lcom/everyplay/external/aspectj/lang/Signature;I)Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->B:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "isTemporalIdNested"

    const-string v3, "com.everyplay.external.iso14496.part15.HevcConfigurationBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/everyplay/external/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v0, v8, v1, v2}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Lcom/everyplay/external/aspectj/lang/Signature;I)Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->C:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "equals"

    const-string v3, "com.everyplay.external.iso14496.part15.HevcConfigurationBox"

    const-string v4, "java.lang.Object"

    const-string v5, "o"

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/everyplay/external/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v0, v8, v1, v2}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Lcom/everyplay/external/aspectj/lang/Signature;I)Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->d:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getConstantFrameRate"

    const-string v3, "com.everyplay.external.iso14496.part15.HevcConfigurationBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "int"

    invoke-virtual/range {v0 .. v7}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/everyplay/external/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v8, v1, v2}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Lcom/everyplay/external/aspectj/lang/Signature;I)Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->D:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getArrays"

    const-string v3, "com.everyplay.external.iso14496.part15.HevcConfigurationBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.util.List"

    invoke-virtual/range {v0 .. v7}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/everyplay/external/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x84

    invoke-virtual {v0, v8, v1, v2}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Lcom/everyplay/external/aspectj/lang/Signature;I)Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->E:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "hashCode"

    const-string v3, "com.everyplay.external.iso14496.part15.HevcConfigurationBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "int"

    invoke-virtual/range {v0 .. v7}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/everyplay/external/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v0, v8, v1, v2}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Lcom/everyplay/external/aspectj/lang/Signature;I)Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->e:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getConfigurationVersion"

    const-string v3, "com.everyplay.external.iso14496.part15.HevcConfigurationBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "int"

    invoke-virtual/range {v0 .. v7}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/everyplay/external/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x3f

    invoke-virtual {v0, v8, v1, v2}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Lcom/everyplay/external/aspectj/lang/Signature;I)Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->f:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getGeneral_profile_space"

    const-string v3, "com.everyplay.external.iso14496.part15.HevcConfigurationBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "int"

    invoke-virtual/range {v0 .. v7}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/everyplay/external/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x43

    invoke-virtual {v0, v8, v1, v2}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Lcom/everyplay/external/aspectj/lang/Signature;I)Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->g:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "isGeneral_tier_flag"

    const-string v3, "com.everyplay.external.iso14496.part15.HevcConfigurationBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/everyplay/external/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x47

    invoke-virtual {v0, v8, v1, v2}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Lcom/everyplay/external/aspectj/lang/Signature;I)Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->h:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getGeneral_profile_idc"

    const-string v3, "com.everyplay.external.iso14496.part15.HevcConfigurationBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "int"

    invoke-virtual/range {v0 .. v7}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/everyplay/external/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x4c

    invoke-virtual {v0, v8, v1, v2}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Lcom/everyplay/external/aspectj/lang/Signature;I)Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->i:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getGeneral_profile_compatibility_flags"

    const-string v3, "com.everyplay.external.iso14496.part15.HevcConfigurationBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "long"

    invoke-virtual/range {v0 .. v7}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/everyplay/external/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v0, v8, v1, v2}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Lcom/everyplay/external/aspectj/lang/Signature;I)Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->j:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getGeneral_constraint_indicator_flags"

    const-string v3, "com.everyplay.external.iso14496.part15.HevcConfigurationBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "long"

    invoke-virtual/range {v0 .. v7}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/everyplay/external/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x54

    invoke-virtual {v0, v8, v1, v2}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Lcom/everyplay/external/aspectj/lang/Signature;I)Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->k:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "hvcC"

    invoke-direct {p0, v0}, Lcom/everyplay/external/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    invoke-direct {v0}, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;-><init>()V

    iput-object v0, p0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    iget-object v4, p0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    invoke-static {p1}, Lcom/everyplay/external/iso/IsoTypeReader;->f(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, v4, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->a:I

    invoke-static {p1}, Lcom/everyplay/external/iso/IsoTypeReader;->f(Ljava/nio/ByteBuffer;)I

    move-result v3

    and-int/lit16 v0, v3, 0xc0

    shr-int/lit8 v0, v0, 0x6

    iput v0, v4, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->b:I

    and-int/lit8 v0, v3, 0x20

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v4, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->c:Z

    and-int/lit8 v0, v3, 0x1f

    iput v0, v4, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->d:I

    invoke-static {p1}, Lcom/everyplay/external/iso/IsoTypeReader;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->e:J

    invoke-static {p1}, Lcom/everyplay/external/iso/IsoTypeReader;->n(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->f:J

    invoke-static {p1}, Lcom/everyplay/external/iso/IsoTypeReader;->f(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, v4, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->g:I

    invoke-static {p1}, Lcom/everyplay/external/iso/IsoTypeReader;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    const v3, 0xf000

    and-int/2addr v3, v0

    shr-int/lit8 v3, v3, 0xc

    iput v3, v4, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->h:I

    and-int/lit16 v0, v0, 0xfff

    iput v0, v4, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->i:I

    invoke-static {p1}, Lcom/everyplay/external/iso/IsoTypeReader;->f(Ljava/nio/ByteBuffer;)I

    move-result v0

    and-int/lit16 v3, v0, 0xfc

    shr-int/lit8 v3, v3, 0x2

    iput v3, v4, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->j:I

    and-int/lit8 v0, v0, 0x3

    iput v0, v4, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->k:I

    invoke-static {p1}, Lcom/everyplay/external/iso/IsoTypeReader;->f(Ljava/nio/ByteBuffer;)I

    move-result v0

    and-int/lit16 v3, v0, 0xfc

    shr-int/lit8 v3, v3, 0x2

    iput v3, v4, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->l:I

    and-int/lit8 v0, v0, 0x3

    iput v0, v4, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->m:I

    invoke-static {p1}, Lcom/everyplay/external/iso/IsoTypeReader;->f(Ljava/nio/ByteBuffer;)I

    move-result v0

    and-int/lit16 v3, v0, 0xf8

    shr-int/lit8 v3, v3, 0x3

    iput v3, v4, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->n:I

    and-int/lit8 v0, v0, 0x7

    iput v0, v4, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->o:I

    invoke-static {p1}, Lcom/everyplay/external/iso/IsoTypeReader;->f(Ljava/nio/ByteBuffer;)I

    move-result v0

    and-int/lit16 v3, v0, 0xf8

    shr-int/lit8 v3, v3, 0x3

    iput v3, v4, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->p:I

    and-int/lit8 v0, v0, 0x7

    iput v0, v4, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->q:I

    invoke-static {p1}, Lcom/everyplay/external/iso/IsoTypeReader;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, v4, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->r:I

    invoke-static {p1}, Lcom/everyplay/external/iso/IsoTypeReader;->f(Ljava/nio/ByteBuffer;)I

    move-result v3

    and-int/lit16 v0, v3, 0xc0

    shr-int/lit8 v0, v0, 0x6

    iput v0, v4, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->s:I

    and-int/lit8 v0, v3, 0x38

    shr-int/lit8 v0, v0, 0x3

    iput v0, v4, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->t:I

    and-int/lit8 v0, v3, 0x4

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, v4, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->u:Z

    and-int/lit8 v0, v3, 0x3

    iput v0, v4, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->v:I

    invoke-static {p1}, Lcom/everyplay/external/iso/IsoTypeReader;->f(Ljava/nio/ByteBuffer;)I

    move-result v5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->w:Ljava/util/List;

    move v3, v2

    :goto_2
    if-lt v3, v5, :cond_2

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    new-instance v6, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord$Array;

    invoke-direct {v6}, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord$Array;-><init>()V

    invoke-static {p1}, Lcom/everyplay/external/iso/IsoTypeReader;->f(Ljava/nio/ByteBuffer;)I

    move-result v7

    and-int/lit16 v0, v7, 0x80

    if-lez v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, v6, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord$Array;->a:Z

    and-int/lit8 v0, v7, 0x40

    if-lez v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, v6, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord$Array;->b:Z

    and-int/lit8 v0, v7, 0x3f

    iput v0, v6, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord$Array;->c:I

    invoke-static {p1}, Lcom/everyplay/external/iso/IsoTypeReader;->d(Ljava/nio/ByteBuffer;)I

    move-result v7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord$Array;->d:Ljava/util/List;

    move v0, v2

    :goto_5
    if-lt v0, v7, :cond_5

    iget-object v0, v4, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->w:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    invoke-static {p1}, Lcom/everyplay/external/iso/IsoTypeReader;->d(Ljava/nio/ByteBuffer;)I

    move-result v8

    new-array v8, v8, [B

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v9, v6, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord$Array;->d:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->d:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v2, p0, p0, p1}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/everyplay/external/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a()Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;

    invoke-static {v2}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint;)V

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;

    iget-object v2, p0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    iget-object v3, p1, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    invoke-virtual {v2, v3}, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getArrays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord$Array;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->E:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lcom/everyplay/external/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a()Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;

    invoke-static {v0}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    iget-object v0, v0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->w:Ljava/util/List;

    return-object v0
.end method

.method public getAvgFrameRate()I
    .locals 1

    sget-object v0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->z:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lcom/everyplay/external/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a()Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;

    invoke-static {v0}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    iget v0, v0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->r:I

    return v0
.end method

.method public getBitDepthChromaMinus8()I
    .locals 1

    sget-object v0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->y:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lcom/everyplay/external/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a()Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;

    invoke-static {v0}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    iget v0, v0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->q:I

    return v0
.end method

.method public getBitDepthLumaMinus8()I
    .locals 1

    sget-object v0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->x:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lcom/everyplay/external/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a()Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;

    invoke-static {v0}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    iget v0, v0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->o:I

    return v0
.end method

.method public getChromaFormat()I
    .locals 1

    sget-object v0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->w:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lcom/everyplay/external/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a()Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;

    invoke-static {v0}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    iget v0, v0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->m:I

    return v0
.end method

.method public getConfigurationVersion()I
    .locals 1

    sget-object v0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->f:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lcom/everyplay/external/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a()Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;

    invoke-static {v0}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    iget v0, v0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->a:I

    return v0
.end method

.method public getConstantFrameRate()I
    .locals 1

    sget-object v0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->D:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lcom/everyplay/external/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a()Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;

    invoke-static {v0}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    iget v0, v0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->s:I

    return v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    iget v0, v2, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->a:I

    invoke-static {p1, v0}, Lcom/everyplay/external/iso/IsoTypeWriter;->d(Ljava/nio/ByteBuffer;I)V

    iget v0, v2, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->b:I

    shl-int/lit8 v3, v0, 0x6

    iget-boolean v0, v2, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->c:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    :goto_0
    add-int/2addr v0, v3

    iget v3, v2, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->d:I

    add-int/2addr v0, v3

    invoke-static {p1, v0}, Lcom/everyplay/external/iso/IsoTypeWriter;->d(Ljava/nio/ByteBuffer;I)V

    iget-wide v4, v2, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->e:J

    invoke-static {p1, v4, v5}, Lcom/everyplay/external/iso/IsoTypeWriter;->b(Ljava/nio/ByteBuffer;J)V

    iget-wide v4, v2, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->f:J

    invoke-static {p1, v4, v5}, Lcom/everyplay/external/iso/IsoTypeWriter;->d(Ljava/nio/ByteBuffer;J)V

    iget v0, v2, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->g:I

    invoke-static {p1, v0}, Lcom/everyplay/external/iso/IsoTypeWriter;->d(Ljava/nio/ByteBuffer;I)V

    iget v0, v2, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->h:I

    shl-int/lit8 v0, v0, 0xc

    iget v3, v2, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->i:I

    add-int/2addr v0, v3

    invoke-static {p1, v0}, Lcom/everyplay/external/iso/IsoTypeWriter;->b(Ljava/nio/ByteBuffer;I)V

    iget v0, v2, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->j:I

    shl-int/lit8 v0, v0, 0x2

    iget v3, v2, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->k:I

    add-int/2addr v0, v3

    invoke-static {p1, v0}, Lcom/everyplay/external/iso/IsoTypeWriter;->d(Ljava/nio/ByteBuffer;I)V

    iget v0, v2, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->l:I

    shl-int/lit8 v0, v0, 0x2

    iget v3, v2, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->m:I

    add-int/2addr v0, v3

    invoke-static {p1, v0}, Lcom/everyplay/external/iso/IsoTypeWriter;->d(Ljava/nio/ByteBuffer;I)V

    iget v0, v2, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->n:I

    shl-int/lit8 v0, v0, 0x3

    iget v3, v2, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->o:I

    add-int/2addr v0, v3

    invoke-static {p1, v0}, Lcom/everyplay/external/iso/IsoTypeWriter;->d(Ljava/nio/ByteBuffer;I)V

    iget v0, v2, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->p:I

    shl-int/lit8 v0, v0, 0x3

    iget v3, v2, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->q:I

    add-int/2addr v0, v3

    invoke-static {p1, v0}, Lcom/everyplay/external/iso/IsoTypeWriter;->d(Ljava/nio/ByteBuffer;I)V

    iget v0, v2, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->r:I

    invoke-static {p1, v0}, Lcom/everyplay/external/iso/IsoTypeWriter;->b(Ljava/nio/ByteBuffer;I)V

    iget v0, v2, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->s:I

    shl-int/lit8 v0, v0, 0x6

    iget v3, v2, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->t:I

    shl-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v0

    iget-boolean v0, v2, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->u:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    :goto_1
    add-int/2addr v0, v3

    iget v3, v2, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->v:I

    add-int/2addr v0, v3

    invoke-static {p1, v0}, Lcom/everyplay/external/iso/IsoTypeWriter;->d(Ljava/nio/ByteBuffer;I)V

    iget-object v0, v2, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/everyplay/external/iso/IsoTypeWriter;->d(Ljava/nio/ByteBuffer;I)V

    iget-object v0, v2, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord$Array;

    iget-boolean v2, v0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord$Array;->a:Z

    if-eqz v2, :cond_4

    const/16 v2, 0x80

    :goto_2
    iget-boolean v3, v0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord$Array;->b:Z

    if-eqz v3, :cond_5

    const/16 v3, 0x40

    :goto_3
    add-int/2addr v2, v3

    iget v3, v0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord$Array;->c:I

    add-int/2addr v2, v3

    invoke-static {p1, v2}, Lcom/everyplay/external/iso/IsoTypeWriter;->d(Ljava/nio/ByteBuffer;I)V

    iget-object v2, v0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord$Array;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p1, v2}, Lcom/everyplay/external/iso/IsoTypeWriter;->b(Ljava/nio/ByteBuffer;I)V

    iget-object v0, v0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord$Array;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v3, v0

    invoke-static {p1, v3}, Lcom/everyplay/external/iso/IsoTypeWriter;->b(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    move v3, v1

    goto :goto_3
.end method

.method protected getContentSize()J
    .locals 4

    iget-object v1, p0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    const/16 v0, 0x17

    iget-object v1, v1, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    int-to-long v0, v1

    return-wide v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord$Array;

    add-int/lit8 v1, v1, 0x3

    iget-object v0, v0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord$Array;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    add-int/lit8 v1, v1, 0x2

    array-length v0, v0

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method public getGeneral_constraint_indicator_flags()J
    .locals 2

    sget-object v0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->k:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lcom/everyplay/external/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a()Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;

    invoke-static {v0}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    iget-wide v0, v0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->f:J

    return-wide v0
.end method

.method public getGeneral_level_idc()I
    .locals 1

    sget-object v0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->t:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lcom/everyplay/external/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a()Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;

    invoke-static {v0}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    iget v0, v0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->g:I

    return v0
.end method

.method public getGeneral_profile_compatibility_flags()J
    .locals 2

    sget-object v0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->j:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lcom/everyplay/external/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a()Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;

    invoke-static {v0}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    iget-wide v0, v0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->e:J

    return-wide v0
.end method

.method public getGeneral_profile_idc()I
    .locals 1

    sget-object v0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->i:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lcom/everyplay/external/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a()Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;

    invoke-static {v0}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    iget v0, v0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->d:I

    return v0
.end method

.method public getGeneral_profile_space()I
    .locals 1

    sget-object v0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->g:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lcom/everyplay/external/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a()Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;

    invoke-static {v0}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    iget v0, v0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->b:I

    return v0
.end method

.method public getHevcDecoderConfigurationRecord()Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;
    .locals 1

    sget-object v0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->b:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lcom/everyplay/external/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a()Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;

    invoke-static {v0}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    return-object v0
.end method

.method public getLengthSizeMinusOne()I
    .locals 1

    sget-object v0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->B:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lcom/everyplay/external/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a()Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;

    invoke-static {v0}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    iget v0, v0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->v:I

    return v0
.end method

.method public getMin_spatial_segmentation_idc()I
    .locals 1

    sget-object v0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->u:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lcom/everyplay/external/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a()Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;

    invoke-static {v0}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    iget v0, v0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->i:I

    return v0
.end method

.method public getNumTemporalLayers()I
    .locals 1

    sget-object v0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->A:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lcom/everyplay/external/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a()Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;

    invoke-static {v0}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    iget v0, v0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->t:I

    return v0
.end method

.method public getParallelismType()I
    .locals 1

    sget-object v0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->v:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lcom/everyplay/external/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a()Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;

    invoke-static {v0}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    iget v0, v0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->k:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    sget-object v0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->e:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lcom/everyplay/external/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a()Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;

    invoke-static {v0}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    invoke-virtual {v0}, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGeneral_tier_flag()Z
    .locals 1

    sget-object v0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->h:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lcom/everyplay/external/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a()Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;

    invoke-static {v0}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    iget-boolean v0, v0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->c:Z

    return v0
.end method

.method public isTemporalIdNested()Z
    .locals 1

    sget-object v0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->C:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lcom/everyplay/external/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a()Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;

    invoke-static {v0}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    iget-boolean v0, v0, Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;->u:Z

    return v0
.end method

.method public setHevcDecoderConfigurationRecord(Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;)V
    .locals 1

    sget-object v0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->c:Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lcom/everyplay/external/aspectj/runtime/reflect/Factory;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/everyplay/external/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a()Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;

    invoke-static {v0}, Lcom/everyplay/external/mp4parser/RequiresParseDetailAspect;->a(Lcom/everyplay/external/aspectj/lang/JoinPoint;)V

    iput-object p1, p0, Lcom/everyplay/external/iso14496/part15/HevcConfigurationBox;->a:Lcom/everyplay/external/iso14496/part15/HevcDecoderConfigurationRecord;

    return-void
.end method
