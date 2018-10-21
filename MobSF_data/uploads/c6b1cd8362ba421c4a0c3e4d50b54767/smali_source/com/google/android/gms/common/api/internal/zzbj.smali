.class final Lcom/google/android/gms/common/api/internal/zzbj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzkk:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzbj;->zzkk:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbj;->zzkk:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;->zzd(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;)V

    return-void
.end method
