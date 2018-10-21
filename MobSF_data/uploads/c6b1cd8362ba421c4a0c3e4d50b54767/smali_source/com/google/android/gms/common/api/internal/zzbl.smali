.class final Lcom/google/android/gms/common/api/internal/zzbl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;


# instance fields
.field final synthetic zzkk:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzbl;->zzkk:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSignOutComplete()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbl;->zzkk:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;->zzjy:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zza(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/zzbm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/zzbm;-><init>(Lcom/google/android/gms/common/api/internal/zzbl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
