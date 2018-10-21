.class final Lcom/google/android/gms/common/api/internal/zzbn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzkl:Lcom/google/android/gms/common/ConnectionResult;

.field private final synthetic zzkr:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzbn;->zzkr:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzbn;->zzkl:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbn;->zzkl:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbn;->zzkr:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;->zza(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbn;->zzkr:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;->zza(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbn;->zzkr:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;->zzb(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;)V

    return-void

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbn;->zzkr:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;->zza(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/api/Api$Client;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    return-void

    :cond_2f
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbn;->zzkr:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;->zzjy:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzj(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzbn;->zzkr:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;->zzc(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;)Lcom/google/android/gms/common/api/internal/zzh;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzbn;->zzkl:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
