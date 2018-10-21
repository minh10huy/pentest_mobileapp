.class final Lcom/google/android/gms/common/api/internal/zzbk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzkk:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;

.field private final synthetic zzkl:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzbk;->zzkk:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzbk;->zzkl:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbk;->zzkk:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzbk;->zzkl:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
