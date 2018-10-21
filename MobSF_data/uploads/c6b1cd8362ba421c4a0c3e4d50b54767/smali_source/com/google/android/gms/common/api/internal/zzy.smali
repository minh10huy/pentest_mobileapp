.class final Lcom/google/android/gms/common/api/internal/zzy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/util/Map<",
        "Lcom/google/android/gms/common/api/internal/zzh<",
        "*>;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzgu:Lcom/google/android/gms/common/api/internal/zzw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/zzw;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zzw;Lcom/google/android/gms/common/api/internal/zzx;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zzy;-><init>(Lcom/google/android/gms/common/api/internal/zzw;)V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .registers 7
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/zzh<",
            "*>;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzw;->zza(Lcom/google/android/gms/common/api/internal/zzw;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzw;->zzb(Lcom/google/android/gms/common/api/internal/zzw;)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_153

    if-nez v0, :cond_1b

    :goto_11
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzw;->zza(Lcom/google/android/gms/common/api/internal/zzw;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1b
    :try_start_1b
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzw;->zzc(Lcom/google/android/gms/common/api/internal/zzw;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/zzw;->zza(Lcom/google/android/gms/common/api/internal/zzw;Ljava/util/Map;)Ljava/util/Map;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzw;->zzc(Lcom/google/android/gms/common/api/internal/zzw;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_43
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fe

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzv;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzw;->zzd(Lcom/google/android/gms/common/api/internal/zzw;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApi;->zzm()Lcom/google/android/gms/common/api/internal/zzh;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    :cond_5f
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/common/api/AvailabilityException;

    if-eqz v0, :cond_e0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/AvailabilityException;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzw;->zze(Lcom/google/android/gms/common/api/internal/zzw;)Z

    move-result v0

    if-eqz v0, :cond_cb

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    new-instance v1, Landroid/support/v4/util/ArrayMap;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zzw;->zzc(Lcom/google/android/gms/common/api/internal/zzw;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zzw;->zza(Lcom/google/android/gms/common/api/internal/zzw;Ljava/util/Map;)Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzw;->zzc(Lcom/google/android/gms/common/api/internal/zzw;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_97
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/zzv;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApi;->zzm()Lcom/google/android/gms/common/api/internal/zzh;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/AvailabilityException;->getConnectionResult(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-static {v4, v1, v3}, Lcom/google/android/gms/common/api/internal/zzw;->zza(Lcom/google/android/gms/common/api/internal/zzw;Lcom/google/android/gms/common/api/internal/zzv;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_c4

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzw;->zzd(Lcom/google/android/gms/common/api/internal/zzw;)Ljava/util/Map;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    :goto_c0
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_97

    :cond_c4
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzw;->zzd(Lcom/google/android/gms/common/api/internal/zzw;)Ljava/util/Map;

    move-result-object v1

    goto :goto_c0

    :cond_cb
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/AvailabilityException;->zzl()Landroid/support/v4/util/ArrayMap;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/zzw;->zza(Lcom/google/android/gms/common/api/internal/zzw;Ljava/util/Map;)Ljava/util/Map;

    :cond_d4
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzw;->zzf(Lcom/google/android/gms/common/api/internal/zzw;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    :goto_dc
    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/zzw;->zza(Lcom/google/android/gms/common/api/internal/zzw;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_fe

    :cond_e0
    const-string v0, "ConnectionlessGAC"

    const-string v1, "Unexpected availability exception"

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/zzw;->zza(Lcom/google/android/gms/common/api/internal/zzw;Ljava/util/Map;)Ljava/util/Map;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    goto :goto_dc

    :cond_fe
    :goto_fe
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzw;->zzg(Lcom/google/android/gms/common/api/internal/zzw;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_120

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzw;->zzd(Lcom/google/android/gms/common/api/internal/zzw;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzw;->zzg(Lcom/google/android/gms/common/api/internal/zzw;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzw;->zzf(Lcom/google/android/gms/common/api/internal/zzw;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/zzw;->zza(Lcom/google/android/gms/common/api/internal/zzw;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    :cond_120
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzw;->zzh(Lcom/google/android/gms/common/api/internal/zzw;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    if-nez p1, :cond_133

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzw;->zzi(Lcom/google/android/gms/common/api/internal/zzw;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzw;->zzj(Lcom/google/android/gms/common/api/internal/zzw;)V

    goto :goto_148

    :cond_133
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/zzw;->zza(Lcom/google/android/gms/common/api/internal/zzw;Z)Z

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzw;->zzk(Lcom/google/android/gms/common/api/internal/zzw;)Lcom/google/android/gms/common/api/internal/zzav;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzw;->zzh(Lcom/google/android/gms/common/api/internal/zzw;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/zzav;->zzc(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_148
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzw;->zzl(Lcom/google/android/gms/common/api/internal/zzw;)Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_151
    .catchall {:try_start_1b .. :try_end_151} :catchall_153

    goto/16 :goto_11

    :catchall_153
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzy;->zzgu:Lcom/google/android/gms/common/api/internal/zzw;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzw;->zza(Lcom/google/android/gms/common/api/internal/zzw;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
