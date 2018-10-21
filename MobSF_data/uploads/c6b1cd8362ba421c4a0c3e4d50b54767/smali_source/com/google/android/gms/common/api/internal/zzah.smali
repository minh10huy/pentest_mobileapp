.class final Lcom/google/android/gms/common/api/internal/zzah;
.super Lcom/google/android/gms/common/api/internal/zzbe;


# instance fields
.field private final synthetic zzhh:Lcom/google/android/gms/common/api/internal/zzag;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzag;Lcom/google/android/gms/common/api/internal/zzbc;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzah;->zzhh:Lcom/google/android/gms/common/api/internal/zzag;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/zzbe;-><init>(Lcom/google/android/gms/common/api/internal/zzbc;)V

    return-void
.end method


# virtual methods
.method public final zzaq()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzah;->zzhh:Lcom/google/android/gms/common/api/internal/zzag;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzag;->onConnectionSuspended(I)V

    return-void
.end method
