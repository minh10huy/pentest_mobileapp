.class final Lcom/google/android/gms/common/api/internal/zzas;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field private final synthetic zzhv:Lcom/google/android/gms/common/api/internal/zzaj;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/zzaj;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzas;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zzaj;Lcom/google/android/gms/common/api/internal/zzak;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zzas;-><init>(Lcom/google/android/gms/common/api/internal/zzaj;)V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 4

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzas;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzaj;->zzf(Lcom/google/android/gms/common/api/internal/zzaj;)Lcom/google/android/gms/signin/SignInClient;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/common/api/internal/zzaq;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzas;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/internal/zzaq;-><init>(Lcom/google/android/gms/common/api/internal/zzaj;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/signin/SignInClient;->signIn(Lcom/google/android/gms/signin/internal/ISignInCallbacks;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzas;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzaj;->zzc(Lcom/google/android/gms/common/api/internal/zzaj;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzas;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/zzaj;->zzb(Lcom/google/android/gms/common/api/internal/zzaj;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzas;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzaj;->zzi(Lcom/google/android/gms/common/api/internal/zzaj;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzas;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzaj;->zzj(Lcom/google/android/gms/common/api/internal/zzaj;)V

    goto :goto_21

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzas;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/zzaj;->zza(Lcom/google/android/gms/common/api/internal/zzaj;Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_2b

    :goto_21
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzas;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zzaj;->zzc(Lcom/google/android/gms/common/api/internal/zzaj;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_2b
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzas;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzaj;->zzc(Lcom/google/android/gms/common/api/internal/zzaj;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .registers 2

    return-void
.end method
