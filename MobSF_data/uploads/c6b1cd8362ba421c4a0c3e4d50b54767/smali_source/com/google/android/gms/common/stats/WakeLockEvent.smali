.class public final Lcom/google/android/gms/common/stats/WakeLockEvent;
.super Lcom/google/android/gms/common/stats/StatsEvent;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "WakeLockEventCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/stats/WakeLockEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mTimeout:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getTimeout"
        id = 0x10
    .end annotation
.end field

.field private final zzal:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$VersionField;
        id = 0x1
    .end annotation
.end field

.field private final zzxv:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getTimeMillis"
        id = 0x2
    .end annotation
.end field

.field private zzxw:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getEventType"
        id = 0xb
    .end annotation
.end field

.field private final zzyd:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getElapsedRealtime"
        id = 0x8
    .end annotation
.end field

.field private zzyf:J

.field private final zzyq:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getWakeLockName"
        id = 0x4
    .end annotation
.end field

.field private final zzyr:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getSecondaryWakeLockName"
        id = 0xa
    .end annotation
.end field

.field private final zzys:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getCodePackage"
        id = 0x11
    .end annotation
.end field

.field private final zzyt:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getWakeLockType"
        id = 0x5
    .end annotation
.end field

.field private final zzyu:Ljava/util/List;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getCallingPackages"
        id = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzyv:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getEventKey"
        id = 0xc
    .end annotation
.end field

.field private zzyw:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getDeviceState"
        id = 0xe
    .end annotation
.end field

.field private final zzyx:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getHostPackage"
        id = 0xd
    .end annotation
.end field

.field private final zzyy:F
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getBeginPowerPercentage"
        id = 0xf
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/stats/WakeLockEventCreator;

    invoke-direct {v0}, Lcom/google/android/gms/common/stats/WakeLockEventCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;)V
    .registers 21
    .param p1    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p4    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xb
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p6    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xc
        .end annotation
    .end param
    .param p9    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .param p11    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xe
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xa
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xd
        .end annotation
    .end param
    .param p14    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xf
        .end annotation
    .end param
    .param p15    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x10
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x11
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FJ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {v0}, Lcom/google/android/gms/common/stats/StatsEvent;-><init>()V

    move v1, p1

    iput v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzal:I

    move-wide v1, p2

    iput-wide v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzxv:J

    move v1, p4

    iput v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzxw:I

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzyq:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzyr:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzys:Ljava/lang/String;

    move v1, p6

    iput v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzyt:I

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzyf:J

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzyu:Ljava/util/List;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzyv:Ljava/lang/String;

    move-wide v1, p9

    iput-wide v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzyd:J

    move v1, p11

    iput v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzyw:I

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzyx:Ljava/lang/String;

    move/from16 v1, p14

    iput v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzyy:F

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->mTimeout:J

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;)V
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FJ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-wide/from16 v15, p14

    move-object/from16 v17, p16

    invoke-direct/range {v0 .. v17}, Lcom/google/android/gms/common/stats/WakeLockEvent;-><init>(IJILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/stats/WakeLockEvent;)V
    .registers 20

    move-object/from16 v0, p1

    iget v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzal:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/stats/StatsEvent;->getTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/stats/StatsEvent;->getEventType()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/stats/WakeLockEvent;->getWakeLockName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/stats/WakeLockEvent;->getWakeLockType()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/stats/WakeLockEvent;->getCallingPackages()Ljava/util/List;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/stats/StatsEvent;->getEventKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/stats/StatsEvent;->getElapsedRealtime()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/stats/WakeLockEvent;->getDeviceState()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/stats/WakeLockEvent;->getSecondaryWakeLockName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/stats/WakeLockEvent;->getHostPackage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/stats/WakeLockEvent;->getBeginPowerPercentage()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/stats/StatsEvent;->getTimeout()J

    move-result-wide v15

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/stats/WakeLockEvent;->getCodePackage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v17}, Lcom/google/android/gms/common/stats/WakeLockEvent;-><init>(IJILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;)V

    return-void
.end method

.method public static checkEventType(Lcom/google/android/gms/common/stats/StatsEvent;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v1, v0, :cond_32

    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getEventType()I

    move-result v1

    if-eq v0, v1, :cond_32

    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getEventType()I

    move-result v1

    if-eq v0, v1, :cond_32

    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getEventType()I

    move-result v1

    if-eq v0, v1, :cond_32

    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getEventType()I

    move-result v1

    if-eq v0, v1, :cond_32

    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getEventType()I

    move-result p0

    if-ne v0, p0, :cond_30

    goto :goto_32

    :cond_30
    const/4 p0, 0x0

    return p0

    :cond_32
    :goto_32
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final ReconstructCloseEvent(Lcom/google/android/gms/common/stats/StatsEvent;)Lcom/google/android/gms/common/stats/StatsEvent;
    .registers 9

    instance-of v0, p1, Lcom/google/android/gms/common/stats/WakeLockEvent;

    if-eqz v0, :cond_21

    check-cast p1, Lcom/google/android/gms/common/stats/WakeLockEvent;

    new-instance v0, Lcom/google/android/gms/common/stats/WakeLockEvent;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/stats/WakeLockEvent;-><init>(Lcom/google/android/gms/common/stats/WakeLockEvent;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getEventType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/stats/StatsEvent;->setEventType(I)Lcom/google/android/gms/common/stats/StatsEvent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getElapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/stats/StatsEvent;->getElapsedRealtime()J

    move-result-wide v3

    sub-long v5, v1, v3

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/common/stats/StatsEvent;->setDurationMillis(J)Lcom/google/android/gms/common/stats/StatsEvent;

    move-result-object p1

    :cond_21
    return-object p1
.end method

.method public final getBeginPowerPercentage()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzyy:F

    return v0
.end method

.method public final getCallingPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzyu:Ljava/util/List;

    return-object v0
.end method

.method public final getCodePackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzys:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceState()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzyw:I

    return v0
.end method

.method public final getDurationMillis()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzyf:J

    return-wide v0
.end method

.method public final getElapsedRealtime()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzyd:J

    return-wide v0
.end method

.method public final getEventKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzyv:Ljava/lang/String;

    return-object v0
.end method

.method public final getEventType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzxw:I

    return v0
.end method

.method public final getHostPackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzyx:Ljava/lang/String;

    return-object v0
.end method

.method public final getSecondaryWakeLockName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzyr:Ljava/lang/String;

    return-object v0
.end method

.method public final getSpecificString()Ljava/lang/String;
    .registers 11

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->getWakeLockName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->getWakeLockType()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->getCallingPackages()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_11

    const-string v2, ""

    goto :goto_1b

    :cond_11
    const-string v2, ","

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->getCallingPackages()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    :goto_1b
    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->getDeviceState()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->getSecondaryWakeLockName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_28

    const-string v4, ""

    goto :goto_2c

    :cond_28
    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->getSecondaryWakeLockName()Ljava/lang/String;

    move-result-object v4

    :goto_2c
    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->getHostPackage()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_35

    const-string v5, ""

    goto :goto_39

    :cond_35
    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->getHostPackage()Ljava/lang/String;

    move-result-object v5

    :goto_39
    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->getBeginPowerPercentage()F

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->getCodePackage()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_46

    const-string v7, ""

    goto :goto_4a

    :cond_46
    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->getCodePackage()Ljava/lang/String;

    move-result-object v7

    :goto_4a
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x2d

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "\t"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\t"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\t"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\t"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\t"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\t"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\t"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\t"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTimeMillis()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzxv:J

    return-wide v0
.end method

.method public final getTimeout()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->mTimeout:J

    return-wide v0
.end method

.method public final getWakeLockName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzyq:Ljava/lang/String;

    return-object v0
.end method

.method public final getWakeLockType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzyt:I

    return v0
.end method

.method public final bridge synthetic markTimeOut()Lcom/google/android/gms/common/stats/StatsEvent;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->markTimeOut()Lcom/google/android/gms/common/stats/WakeLockEvent;

    move-result-object v0

    return-object v0
.end method

.method public final markTimeOut()Lcom/google/android/gms/common/stats/WakeLockEvent;
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->mTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->mTimeout:J

    iput-wide v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzyf:J

    :cond_c
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzxw:I

    if-ne v0, v1, :cond_16

    const/16 v0, 0x9

    :goto_13
    iput v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzxw:I

    return-object p0

    :cond_16
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzxw:I

    if-ne v0, v1, :cond_1f

    const/16 v0, 0xc

    goto :goto_13

    :cond_1f
    return-object p0
.end method

.method public final setDurationMillis(J)Lcom/google/android/gms/common/stats/StatsEvent;
    .registers 3

    iput-wide p1, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzyf:J

    return-object p0
.end method

.method public final setEventType(I)Lcom/google/android/gms/common/stats/StatsEvent;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzxw:I

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->zzal:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->getWakeLockName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->getWakeLockType()I

    move-result v0

    const/4 v2, 0x5

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->getCallingPackages()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getElapsedRealtime()J

    move-result-wide v2

    const/16 v0, 0x8

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->getSecondaryWakeLockName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getEventType()I

    move-result v0

    const/16 v2, 0xb

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getEventKey()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->getHostPackage()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->getDeviceState()I

    move-result v0

    const/16 v2, 0xe

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->getBeginPowerPercentage()F

    move-result v0

    const/16 v2, 0xf

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getTimeout()J

    move-result-wide v2

    const/16 v0, 0x10

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->getCodePackage()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x11

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
