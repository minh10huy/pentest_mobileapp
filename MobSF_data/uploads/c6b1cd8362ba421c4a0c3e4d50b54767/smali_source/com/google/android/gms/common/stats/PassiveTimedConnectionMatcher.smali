.class public Lcom/google/android/gms/common/stats/PassiveTimedConnectionMatcher;
.super Ljava/lang/Object;


# instance fields
.field private final zzym:J

.field private final zzyn:I

.field private final zzyo:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/google/android/gms/common/stats/PassiveTimedConnectionMatcher;->zzym:J

    const/16 v0, 0xa

    iput v0, p0, Lcom/google/android/gms/common/stats/PassiveTimedConnectionMatcher;->zzyn:I

    new-instance v1, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v1, v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/common/stats/PassiveTimedConnectionMatcher;->zzyo:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/android/gms/common/stats/PassiveTimedConnectionMatcher;->zzym:J

    iput p1, p0, Lcom/google/android/gms/common/stats/PassiveTimedConnectionMatcher;->zzyn:I

    new-instance p1, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/stats/PassiveTimedConnectionMatcher;->zzyo:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/stats/PassiveTimedConnectionMatcher;->zzyo:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public put(Ljava/lang/String;)Ljava/lang/Long;
    .registers 11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/common/stats/PassiveTimedConnectionMatcher;->zzym:J

    monitor-enter p0

    :goto_7
    :try_start_7
    iget-object v4, p0, Lcom/google/android/gms/common/stats/PassiveTimedConnectionMatcher;->zzyo:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v4}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v4

    iget v5, p0, Lcom/google/android/gms/common/stats/PassiveTimedConnectionMatcher;->zzyn:I

    if-lt v4, v5, :cond_5c

    iget-object v4, p0, Lcom/google/android/gms/common/stats/PassiveTimedConnectionMatcher;->zzyo:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v4}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_19
    if-ltz v4, :cond_36

    iget-object v5, p0, Lcom/google/android/gms/common/stats/PassiveTimedConnectionMatcher;->zzyo:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v5, v4}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v7, 0x0

    sub-long v7, v0, v5

    cmp-long v5, v7, v2

    if-lez v5, :cond_33

    iget-object v5, p0, Lcom/google/android/gms/common/stats/PassiveTimedConnectionMatcher;->zzyo:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v5, v4}, Landroid/support/v4/util/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_33
    add-int/lit8 v4, v4, -0x1

    goto :goto_19

    :cond_36
    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    const-string v4, "ConnectionTracker"

    iget v5, p0, Lcom/google/android/gms/common/stats/PassiveTimedConnectionMatcher;->zzyn:I

    const/16 v6, 0x5e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "The max capacity "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is not enough. Current durationThreshold is: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_5c
    iget-object v2, p0, Lcom/google/android/gms/common/stats/PassiveTimedConnectionMatcher;->zzyo:Landroid/support/v4/util/SimpleArrayMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    monitor-exit p0

    return-object p1

    :catchall_6a
    move-exception p1

    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_7 .. :try_end_6c} :catchall_6a

    throw p1
.end method

.method public remove(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/stats/PassiveTimedConnectionMatcher;->zzyo:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    monitor-exit p0

    return p1

    :catchall_e
    move-exception p1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public removeByPrefix(Ljava/lang/String;)Z
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/PassiveTimedConnectionMatcher;->size()I

    move-result v2

    if-ge v0, v2, :cond_22

    iget-object v2, p0, Lcom/google/android/gms/common/stats/PassiveTimedConnectionMatcher;->zzyo:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1f

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v1, p0, Lcom/google/android/gms/common/stats/PassiveTimedConnectionMatcher;->zzyo:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_22
    monitor-exit p0

    return v1

    :catchall_24
    move-exception p1

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public size()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/stats/PassiveTimedConnectionMatcher;->zzyo:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method
