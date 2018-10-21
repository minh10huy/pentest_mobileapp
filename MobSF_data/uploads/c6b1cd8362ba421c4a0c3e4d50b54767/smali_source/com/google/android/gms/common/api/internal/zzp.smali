.class public final Lcom/google/android/gms/common/api/internal/zzp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field public final mApi:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzfo:Z

.field private zzfp:Lcom/google/android/gms/common/api/internal/zzq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Api;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzp;->mApi:Lcom/google/android/gms/common/api/Api;

    iput-boolean p2, p0, Lcom/google/android/gms/common/api/internal/zzp;->zzfo:Z

    return-void
.end method

.method private final zzy()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzp;->zzfp:Lcom/google/android/gms/common/api/internal/zzq;

    const-string v1, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzp;->zzy()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzp;->zzfp:Lcom/google/android/gms/common/api/internal/zzq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zzq;->onConnected(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzp;->zzy()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzp;->zzfp:Lcom/google/android/gms/common/api/internal/zzq;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzp;->mApi:Lcom/google/android/gms/common/api/Api;

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/zzp;->zzfo:Z

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/common/api/internal/zzq;->zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzp;->zzy()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzp;->zzfp:Lcom/google/android/gms/common/api/internal/zzq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zzq;->onConnectionSuspended(I)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/zzq;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzp;->zzfp:Lcom/google/android/gms/common/api/internal/zzq;

    return-void
.end method
