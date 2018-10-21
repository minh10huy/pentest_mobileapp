.class public final Lcom/google/android/gms/common/stats/ConnectionEvent;
.super Lcom/google/android/gms/common/stats/StatsEvent;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "ConnectionEventCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/stats/ConnectionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
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
        id = 0xc
    .end annotation
.end field

.field private final zzxx:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getCallingProcess"
        id = 0x4
    .end annotation
.end field

.field private final zzxy:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getCallingService"
        id = 0x5
    .end annotation
.end field

.field private final zzxz:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getTargetProcess"
        id = 0x6
    .end annotation
.end field

.field private final zzya:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getTargetService"
        id = 0x7
    .end annotation
.end field

.field private final zzyb:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getStackTrace"
        id = 0x8
    .end annotation
.end field

.field private final zzyc:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getEventKey"
        id = 0xd
    .end annotation
.end field

.field private final zzyd:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getElapsedRealtime"
        id = 0xa
    .end annotation
.end field

.field private final zzye:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getHeapAlloc"
        id = 0xb
    .end annotation
.end field

.field private zzyf:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/stats/ConnectionEventCreator;

    invoke-direct {v0}, Lcom/google/android/gms/common/stats/ConnectionEventCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/ConnectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 15
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
            id = 0xc
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xd
        .end annotation
    .end param
    .param p11    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xa
        .end annotation
    .end param
    .param p13    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xb
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/stats/StatsEvent;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzal:I

    iput-wide p2, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzxv:J

    iput p4, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzxw:I

    iput-object p5, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzxx:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzxy:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzxz:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzya:Ljava/lang/String;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzyf:J

    iput-object p9, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzyb:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzyc:Ljava/lang/String;

    iput-wide p11, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzyd:J

    iput-wide p13, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzye:J

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 29

    const/4 v1, 0x1

    move-object v0, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/common/stats/ConnectionEvent;-><init>(IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/stats/ConnectionEvent;)V
    .registers 17

    move-object/from16 v0, p1

    iget v1, v0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzal:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/stats/StatsEvent;->getTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/stats/StatsEvent;->getEventType()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/stats/ConnectionEvent;->getCallingProcess()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/stats/ConnectionEvent;->getCallingService()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/stats/ConnectionEvent;->getTargetProcess()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/stats/ConnectionEvent;->getTargetService()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/stats/ConnectionEvent;->getStackTrace()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/stats/StatsEvent;->getEventKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/stats/StatsEvent;->getElapsedRealtime()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/stats/ConnectionEvent;->getHeapAlloc()J

    move-result-wide v13

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/common/stats/ConnectionEvent;-><init>(IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static checkEventType(Lcom/google/android/gms/common/stats/StatsEvent;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v2, v0, :cond_3e

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getEventType()I

    move-result v2

    if-eq v0, v2, :cond_3e

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getEventType()I

    move-result v2

    if-eq v0, v2, :cond_3e

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getEventType()I

    move-result v0

    if-eq v1, v0, :cond_3e

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getEventType()I

    move-result v2

    if-eq v0, v2, :cond_3e

    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getEventType()I

    move-result v2

    if-eq v0, v2, :cond_3e

    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getEventType()I

    move-result v2

    if-eq v0, v2, :cond_3e

    const/16 v0, 0xf

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getEventType()I

    move-result p0

    if-ne v0, p0, :cond_3c

    return v1

    :cond_3c
    const/4 p0, 0x0

    return p0

    :cond_3e
    return v1
.end method


# virtual methods
.method public final ReconstructCloseEvent(Lcom/google/android/gms/common/stats/StatsEvent;)Lcom/google/android/gms/common/stats/StatsEvent;
    .registers 9

    instance-of v0, p1, Lcom/google/android/gms/common/stats/ConnectionEvent;

    if-eqz v0, :cond_25

    check-cast p1, Lcom/google/android/gms/common/stats/ConnectionEvent;

    new-instance v0, Lcom/google/android/gms/common/stats/ConnectionEvent;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/stats/ConnectionEvent;-><init>(Lcom/google/android/gms/common/stats/ConnectionEvent;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getEventType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/stats/StatsEvent;->setEventType(I)Lcom/google/android/gms/common/stats/StatsEvent;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/stats/ConnectionEvent;

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getElapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/stats/StatsEvent;->getElapsedRealtime()J

    move-result-wide v3

    sub-long v5, v1, v3

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/common/stats/StatsEvent;->setDurationMillis(J)Lcom/google/android/gms/common/stats/StatsEvent;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/stats/ConnectionEvent;

    :cond_25
    return-object p1
.end method

.method public final getCallingProcess()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzxx:Ljava/lang/String;

    return-object v0
.end method

.method public final getCallingService()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzxy:Ljava/lang/String;

    return-object v0
.end method

.method public final getDurationMillis()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzyf:J

    return-wide v0
.end method

.method public final getElapsedRealtime()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzyd:J

    return-wide v0
.end method

.method public final getEventKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzyc:Ljava/lang/String;

    return-object v0
.end method

.method public final getEventType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzxw:I

    return v0
.end method

.method public final getHeapAlloc()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzye:J

    return-wide v0
.end method

.method public final getSpecificString()Ljava/lang/String;
    .registers 10

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->getCallingProcess()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->getCallingService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->getTargetProcess()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->getTargetService()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzyb:Ljava/lang/String;

    if-nez v4, :cond_17

    const-string v4, ""

    goto :goto_19

    :cond_17
    iget-object v4, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzyb:Ljava/lang/String;

    :goto_19
    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->getHeapAlloc()J

    move-result-wide v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1a

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "\t"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\t"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\t"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\t"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStackTrace()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzyb:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetProcess()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzxz:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetService()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzya:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimeMillis()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzxv:J

    return-wide v0
.end method

.method public final getTimeout()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final markTimeOut()Lcom/google/android/gms/common/stats/ConnectionEvent;
    .registers 2

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzxw:I

    return-object p0
.end method

.method public final bridge synthetic markTimeOut()Lcom/google/android/gms/common/stats/StatsEvent;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->markTimeOut()Lcom/google/android/gms/common/stats/ConnectionEvent;

    move-result-object v0

    return-object v0
.end method

.method public final setDurationMillis(J)Lcom/google/android/gms/common/stats/ConnectionEvent;
    .registers 3

    iput-wide p1, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzyf:J

    return-object p0
.end method

.method public final bridge synthetic setDurationMillis(J)Lcom/google/android/gms/common/stats/StatsEvent;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/stats/ConnectionEvent;->setDurationMillis(J)Lcom/google/android/gms/common/stats/ConnectionEvent;

    move-result-object p1

    return-object p1
.end method

.method public final setEventType(I)Lcom/google/android/gms/common/stats/ConnectionEvent;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzxw:I

    return-object p0
.end method

.method public final bridge synthetic setEventType(I)Lcom/google/android/gms/common/stats/StatsEvent;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/stats/ConnectionEvent;->setEventType(I)Lcom/google/android/gms/common/stats/ConnectionEvent;

    move-result-object p1

    return-object p1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzal:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->getCallingProcess()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->getCallingService()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->getTargetProcess()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->getTargetService()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x7

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->getStackTrace()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getElapsedRealtime()J

    move-result-wide v2

    const/16 v0, 0xa

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->getHeapAlloc()J

    move-result-wide v2

    const/16 v0, 0xb

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getEventType()I

    move-result v0

    const/16 v2, 0xc

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getEventKey()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
