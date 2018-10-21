.class public Lcom/google/android/gms/common/internal/ExpirableLruCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static TIME_UNSET:I = -0x1


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final zzsn:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final zzso:J

.field private final zzsp:J

.field private zzsq:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzsr:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(IJJLjava/util/concurrent/TimeUnit;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->mLock:Ljava/lang/Object;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3, p6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzso:J

    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p4, p5, p6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzsp:J

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzct()Z

    move-result p2

    if-nez p2, :cond_29

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzcu()Z

    move-result p2

    if-eqz p2, :cond_27

    goto :goto_29

    :cond_27
    const/4 p2, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 p2, 0x1

    :goto_2a
    const-string p3, "ExpirableLruCache has both access and write expiration negative"

    invoke-static {p2, p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance p2, Lcom/google/android/gms/common/internal/zze;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/common/internal/zze;-><init>(Lcom/google/android/gms/common/internal/ExpirableLruCache;I)V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzsn:Landroid/support/v4/util/LruCache;

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzct()Z

    move-result p1

    if-eqz p1, :cond_43

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzsq:Ljava/util/HashMap;

    :cond_43
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzcu()Z

    move-result p1

    if-eqz p1, :cond_50

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzsr:Ljava/util/HashMap;

    :cond_50
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/ExpirableLruCache;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method private final zza(Ljava/lang/Object;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzct()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzsq:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzsq:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v6, v0, v4

    iget-wide v4, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzso:J

    cmp-long v2, v6, v4

    if-lez v2, :cond_28

    return v3

    :cond_28
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzcu()Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzsr:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzsr:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v6, v0, v4

    iget-wide v0, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzsp:J

    cmp-long p1, v6, v0

    if-lez p1, :cond_4b

    return v3

    :cond_4b
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/internal/ExpirableLruCache;)Z
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzct()Z

    move-result p0

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/internal/ExpirableLruCache;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzsq:Ljava/util/HashMap;

    return-object p0
.end method

.method private final zzct()Z
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzso:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private final zzcu()Z
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzsp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/internal/ExpirableLruCache;)Z
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzcu()Z

    move-result p0

    return p0
.end method

.method static synthetic zze(Lcom/google/android/gms/common/internal/ExpirableLruCache;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzsr:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    return-void
.end method

.method public evictAll()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzsn:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zza(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzsn:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzsn:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2b

    iget-wide v2, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzso:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2b

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzsq:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    monitor-exit v0

    return-object v1

    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzcu()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_d
    iget-object v3, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzsr:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_1b

    :catchall_18
    move-exception p1

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_18

    throw p1

    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzsn:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzsn:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeExpired()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzsn:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1b
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zza(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzsn:Landroid/support/v4/util/LruCache;

    invoke-virtual {v3, v1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    monitor-exit v2

    goto :goto_e

    :catchall_28
    move-exception v0

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_28

    throw v0

    :cond_2b
    return-void
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public snapshot()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ExpirableLruCache;->removeExpired()V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzsn:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
