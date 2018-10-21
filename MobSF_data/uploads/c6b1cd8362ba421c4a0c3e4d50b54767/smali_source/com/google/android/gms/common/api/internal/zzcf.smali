.class final Lcom/google/android/gms/common/api/internal/zzcf;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
        "TA;TResultT;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzmc:Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;[Lcom/google/android/gms/common/Feature;Z)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzcf;->zzmc:Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lcom/google/android/gms/common/api/internal/TaskApiCall;-><init>([Lcom/google/android/gms/common/Feature;ZLcom/google/android/gms/common/api/internal/zzce;)V

    return-void
.end method


# virtual methods
.method protected final doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "TResultT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzcf;->zzmc:Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->zza(Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;)Lcom/google/android/gms/common/util/BiConsumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/common/util/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
