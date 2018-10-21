.class public final Lcom/google/android/gms/common/api/internal/zzbu;
.super Ljava/lang/Object;


# instance fields
.field public final zzlp:Lcom/google/android/gms/common/api/internal/zzb;

.field public final zzlq:I

.field public final zzlr:Lcom/google/android/gms/common/api/GoogleApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zzb;ILcom/google/android/gms/common/api/GoogleApi;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzb;",
            "I",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzbu;->zzlp:Lcom/google/android/gms/common/api/internal/zzb;

    iput p2, p0, Lcom/google/android/gms/common/api/internal/zzbu;->zzlq:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zzbu;->zzlr:Lcom/google/android/gms/common/api/GoogleApi;

    return-void
.end method
