.class final Lcom/google/android/gms/common/util/ArrayUtils$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/util/ArrayUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field zzzb:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/common/util/zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/util/ArrayUtils$zza;->zzzb:Ljava/util/HashMap;

    return-void
.end method

.method private final zzd(Ljava/lang/Object;)Lcom/google/android/gms/common/util/zza;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/util/ArrayUtils$zza;->zzzb:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/util/zza;

    if-nez v0, :cond_14

    new-instance v0, Lcom/google/android/gms/common/util/zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/util/zza;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/common/util/ArrayUtils$zza;->zzzb:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v0
.end method


# virtual methods
.method final zzb(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/util/ArrayUtils$zza;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/common/util/zza;

    move-result-object p1

    iget v0, p1, Lcom/google/android/gms/common/util/zza;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/google/android/gms/common/util/zza;->count:I

    return-void
.end method

.method final zzc(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/util/ArrayUtils$zza;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/common/util/zza;

    move-result-object p1

    iget v0, p1, Lcom/google/android/gms/common/util/zza;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/google/android/gms/common/util/zza;->count:I

    return-void
.end method
