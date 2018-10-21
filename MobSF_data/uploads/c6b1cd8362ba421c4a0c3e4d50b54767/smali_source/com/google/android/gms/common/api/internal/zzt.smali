.class final Lcom/google/android/gms/common/api/internal/zzt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zzbq;


# instance fields
.field private final synthetic zzgc:Lcom/google/android/gms/common/api/internal/zzr;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/zzr;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzt;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zzr;Lcom/google/android/gms/common/api/internal/zzs;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zzt;-><init>(Lcom/google/android/gms/common/api/internal/zzr;)V

    return-void
.end method


# virtual methods
.method public final zzb(IZ)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzt;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzr;->zza(Lcom/google/android/gms/common/api/internal/zzr;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzt;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzr;->zzc(Lcom/google/android/gms/common/api/internal/zzr;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzt;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzr;->zzd(Lcom/google/android/gms/common/api/internal/zzr;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzt;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzr;->zzd(Lcom/google/android/gms/common/api/internal/zzr;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_3f

    :cond_26
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zzt;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/google/android/gms/common/api/internal/zzr;->zza(Lcom/google/android/gms/common/api/internal/zzr;Z)Z

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zzt;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    invoke-static {p2}, Lcom/google/android/gms/common/api/internal/zzr;->zze(Lcom/google/android/gms/common/api/internal/zzr;)Lcom/google/android/gms/common/api/internal/zzbd;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/api/internal/zzbd;->onConnectionSuspended(I)V
    :try_end_35
    .catchall {:try_start_9 .. :try_end_35} :catchall_4b

    :goto_35
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzt;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzr;->zza(Lcom/google/android/gms/common/api/internal/zzr;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_3f
    :goto_3f
    :try_start_3f
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzt;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zzr;->zza(Lcom/google/android/gms/common/api/internal/zzr;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzt;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/zzr;->zza(Lcom/google/android/gms/common/api/internal/zzr;IZ)V
    :try_end_4a
    .catchall {:try_start_3f .. :try_end_4a} :catchall_4b

    goto :goto_35

    :catchall_4b
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zzt;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    invoke-static {p2}, Lcom/google/android/gms/common/api/internal/zzr;->zza(Lcom/google/android/gms/common/api/internal/zzr;)Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final zzb(Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzt;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzr;->zza(Lcom/google/android/gms/common/api/internal/zzr;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzt;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/zzr;->zza(Lcom/google/android/gms/common/api/internal/zzr;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzt;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/zzr;->zza(Lcom/google/android/gms/common/api/internal/zzr;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzt;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzr;->zzb(Lcom/google/android/gms/common/api/internal/zzr;)V
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_24

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzt;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzr;->zza(Lcom/google/android/gms/common/api/internal/zzr;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_24
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzt;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzr;->zza(Lcom/google/android/gms/common/api/internal/zzr;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final zzc(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzt;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzr;->zza(Lcom/google/android/gms/common/api/internal/zzr;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzt;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/zzr;->zza(Lcom/google/android/gms/common/api/internal/zzr;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzt;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzr;->zzb(Lcom/google/android/gms/common/api/internal/zzr;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_1d

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzt;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzr;->zza(Lcom/google/android/gms/common/api/internal/zzr;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1d
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzt;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzr;->zza(Lcom/google/android/gms/common/api/internal/zzr;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
