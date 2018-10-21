.class final Lcom/google/android/gms/common/api/internal/zzai;
.super Lcom/google/android/gms/common/api/internal/zzbe;


# instance fields
.field private final synthetic zzhh:Lcom/google/android/gms/common/api/internal/zzag;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzag;Lcom/google/android/gms/common/api/internal/zzbc;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzai;->zzhh:Lcom/google/android/gms/common/api/internal/zzag;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/zzbe;-><init>(Lcom/google/android/gms/common/api/internal/zzbc;)V

    return-void
.end method


# virtual methods
.method public final zzaq()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzai;->zzhh:Lcom/google/android/gms/common/api/internal/zzag;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzag;->zza(Lcom/google/android/gms/common/api/internal/zzag;)Lcom/google/android/gms/common/api/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzbd;->zzjf:Lcom/google/android/gms/common/api/internal/zzbq;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/zzbq;->zzb(Landroid/os/Bundle;)V

    return-void
.end method
