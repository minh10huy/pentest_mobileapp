.class public Lcom/google/android/gms/common/stats/StatsUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEventKey(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    int-to-long v2, p0

    or-long v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string p1, ""

    :cond_1f
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2e
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static getEventKey(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .registers 6

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    int-to-long p0, p0

    or-long v2, v0, p0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEventKey(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    int-to-long v2, p0

    or-long v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string p1, ""

    :cond_1f
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2e
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static isLoggingEnabled()Z
    .registers 3

    invoke-static {}, Lcom/google/android/gms/common/stats/StatisticalEventTrackerProvider;->getImpl()Lcom/google/android/gms/common/stats/StatisticalEventTrackerProvider$StatisticalEventTracker;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-interface {v0}, Lcom/google/android/gms/common/stats/StatisticalEventTrackerProvider$StatisticalEventTracker;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3a

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/stats/StatisticalEventTrackerProvider$StatisticalEventTracker;->getLogLevel(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/stats/StatsUtils;->zza(Ljava/lang/Integer;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_39

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/stats/StatisticalEventTrackerProvider$StatisticalEventTracker;->getLogLevel(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/stats/StatsUtils;->zza(Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_39

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/stats/StatisticalEventTrackerProvider$StatisticalEventTracker;->getLogLevel(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/stats/StatsUtils;->zza(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_39
    return v2

    :cond_3a
    const/4 v0, 0x0

    return v0
.end method

.method public static isTimeOutEvent(Lcom/google/android/gms/common/stats/StatsEvent;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getEventType()I

    move-result p0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_11

    const/16 v0, 0x9

    if-eq p0, v0, :cond_11

    const/16 v0, 0xc

    if-eq p0, v0, :cond_11

    const/4 p0, 0x0

    return p0

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method private static zza(Ljava/lang/Integer;)Z
    .registers 2

    sget v0, Lcom/google/android/gms/common/stats/LoggingConstants;->LOG_LEVEL_OFF:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method
