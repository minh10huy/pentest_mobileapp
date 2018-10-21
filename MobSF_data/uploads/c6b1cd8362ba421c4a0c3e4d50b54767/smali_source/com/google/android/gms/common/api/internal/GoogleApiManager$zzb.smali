.class final Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/GoogleApiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# instance fields
.field private final zzdr:Lcom/google/android/gms/common/Feature;

.field private final zzkn:Lcom/google/android/gms/common/api/internal/zzh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzh<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/zzh;Lcom/google/android/gms/common/Feature;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzh<",
            "*>;",
            "Lcom/google/android/gms/common/Feature;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;->zzkn:Lcom/google/android/gms/common/api/internal/zzh;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;->zzdr:Lcom/google/android/gms/common/Feature;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zzh;Lcom/google/android/gms/common/Feature;Lcom/google/android/gms/common/api/internal/zzbh;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;-><init>(Lcom/google/android/gms/common/api/internal/zzh;Lcom/google/android/gms/common/Feature;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;)Lcom/google/android/gms/common/api/internal/zzh;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;->zzkn:Lcom/google/android/gms/common/api/internal/zzh;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;)Lcom/google/android/gms/common/Feature;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;->zzdr:Lcom/google/android/gms/common/Feature;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    instance-of v1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;

    if-eqz v1, :cond_1f

    check-cast p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;->zzkn:Lcom/google/android/gms/common/api/internal/zzh;

    iget-object v2, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;->zzkn:Lcom/google/android/gms/common/api/internal/zzh;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;->zzdr:Lcom/google/android/gms/common/Feature;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;->zzdr:Lcom/google/android/gms/common/Feature;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 p1, 0x1

    return p1

    :cond_1f
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;->zzkn:Lcom/google/android/gms/common/api/internal/zzh;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;->zzdr:Lcom/google/android/gms/common/Feature;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "key"

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;->zzkn:Lcom/google/android/gms/common/api/internal/zzh;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "feature"

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzb;->zzdr:Lcom/google/android/gms/common/Feature;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
