.class public Lcom/google/android/gms/common/providers/PooledExecutorsProvider;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/providers/PooledExecutorsProvider$PooledExecutorFactory;
    }
.end annotation


# static fields
.field private static zzvs:Lcom/google/android/gms/common/providers/PooledExecutorsProvider$PooledExecutorFactory;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDefaultFactory()Lcom/google/android/gms/common/providers/PooledExecutorsProvider$PooledExecutorFactory;
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/providers/zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/providers/zza;-><init>()V

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/google/android/gms/common/providers/PooledExecutorsProvider$PooledExecutorFactory;
    .registers 2

    const-class v0, Lcom/google/android/gms/common/providers/PooledExecutorsProvider;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/providers/PooledExecutorsProvider;->zzvs:Lcom/google/android/gms/common/providers/PooledExecutorsProvider$PooledExecutorFactory;

    if-nez v1, :cond_d

    invoke-static {}, Lcom/google/android/gms/common/providers/PooledExecutorsProvider;->createDefaultFactory()Lcom/google/android/gms/common/providers/PooledExecutorsProvider$PooledExecutorFactory;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/common/providers/PooledExecutorsProvider;->zzvs:Lcom/google/android/gms/common/providers/PooledExecutorsProvider$PooledExecutorFactory;

    :cond_d
    sget-object v1, Lcom/google/android/gms/common/providers/PooledExecutorsProvider;->zzvs:Lcom/google/android/gms/common/providers/PooledExecutorsProvider$PooledExecutorFactory;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v0

    return-object v1

    :catchall_11
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setInstance(Lcom/google/android/gms/common/providers/PooledExecutorsProvider$PooledExecutorFactory;)V
    .registers 4

    const-class v0, Lcom/google/android/gms/common/providers/PooledExecutorsProvider;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/providers/PooledExecutorsProvider;->zzvs:Lcom/google/android/gms/common/providers/PooledExecutorsProvider$PooledExecutorFactory;

    if-eqz v1, :cond_e

    const-string v1, "PooledExecutorsProvider"

    const-string v2, "setInstance called when instance was already set."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    sput-object p0, Lcom/google/android/gms/common/providers/PooledExecutorsProvider;->zzvs:Lcom/google/android/gms/common/providers/PooledExecutorsProvider$PooledExecutorFactory;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method
