.class final Lcom/google/android/gms/common/internal/service/zzb;
.super Lcom/google/android/gms/common/internal/service/zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/internal/service/CommonApiImpl;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/internal/service/zzd;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/common/internal/service/CommonClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/service/ICommonService;

    new-instance v0, Lcom/google/android/gms/common/internal/service/CommonApiImpl$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/service/CommonApiImpl$zza;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/internal/service/ICommonService;->clearDefaultAccount(Lcom/google/android/gms/common/internal/service/ICommonCallbacks;)V

    return-void
.end method
