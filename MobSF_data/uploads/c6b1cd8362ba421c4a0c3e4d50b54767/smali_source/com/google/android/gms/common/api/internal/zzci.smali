.class final Lcom/google/android/gms/common/api/internal/zzci;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzmk:Lcom/google/android/gms/common/api/Result;

.field private final synthetic zzml:Lcom/google/android/gms/common/api/internal/zzch;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzch;Lcom/google/android/gms/common/api/Result;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzmk:Lcom/google/android/gms/common/api/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    sget-object v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zzez:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zzch;->zzc(Lcom/google/android/gms/common/api/internal/zzch;)Lcom/google/android/gms/common/api/ResultTransform;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzmk:Lcom/google/android/gms/common/api/Result;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/ResultTransform;->onSuccess(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zzch;->zzd(Lcom/google/android/gms/common/api/internal/zzch;)Lcom/google/android/gms/common/api/internal/zzcj;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zzch;->zzd(Lcom/google/android/gms/common/api/internal/zzch;)Lcom/google/android/gms/common/api/internal/zzcj;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/common/api/internal/zzcj;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/api/internal/zzcj;->sendMessage(Landroid/os/Message;)Z
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2a} :catch_50
    .catchall {:try_start_2 .. :try_end_2a} :catchall_4e

    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zzez:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzmk:Lcom/google/android/gms/common/api/Result;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zzch;->zza(Lcom/google/android/gms/common/api/internal/zzch;Lcom/google/android/gms/common/api/Result;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzch;->zze(Lcom/google/android/gms/common/api/internal/zzch;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_4d

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/internal/zzch;)V

    :cond_4d
    return-void

    :catchall_4e
    move-exception v0

    goto :goto_88

    :catch_50
    move-exception v2

    :try_start_51
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zzch;->zzd(Lcom/google/android/gms/common/api/internal/zzch;)Lcom/google/android/gms/common/api/internal/zzcj;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zzch;->zzd(Lcom/google/android/gms/common/api/internal/zzch;)Lcom/google/android/gms/common/api/internal/zzcj;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/google/android/gms/common/api/internal/zzcj;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/common/api/internal/zzcj;->sendMessage(Landroid/os/Message;)Z
    :try_end_64
    .catchall {:try_start_51 .. :try_end_64} :catchall_4e

    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zzez:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzmk:Lcom/google/android/gms/common/api/Result;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zzch;->zza(Lcom/google/android/gms/common/api/internal/zzch;Lcom/google/android/gms/common/api/Result;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzch;->zze(Lcom/google/android/gms/common/api/internal/zzch;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_87

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/internal/zzch;)V

    :cond_87
    return-void

    :goto_88
    sget-object v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zzez:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzmk:Lcom/google/android/gms/common/api/Result;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/api/internal/zzch;->zza(Lcom/google/android/gms/common/api/internal/zzch;Lcom/google/android/gms/common/api/Result;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzch;->zze(Lcom/google/android/gms/common/api/internal/zzch;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_ab

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/internal/zzch;)V

    :cond_ab
    throw v0
.end method
