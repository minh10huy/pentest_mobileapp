.class final Lcom/google/android/gms/common/api/internal/zzap;
.super Lcom/google/android/gms/common/api/internal/zzat;


# instance fields
.field private final synthetic zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

.field private final zzib:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zzaj;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzap;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zzat;-><init>(Lcom/google/android/gms/common/api/internal/zzaj;Lcom/google/android/gms/common/api/internal/zzak;)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzap;->zzib:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final zzaq()V
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzap;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzaj;->zzd(Lcom/google/android/gms/common/api/internal/zzaj;)Lcom/google/android/gms/common/api/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzbd;->zzfq:Lcom/google/android/gms/common/api/internal/zzav;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzap;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzaj;->zzg(Lcom/google/android/gms/common/api/internal/zzaj;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zzav;->zzim:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzap;->zzib:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_37

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/common/api/Api$Client;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zzap;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zzaj;->zzh(Lcom/google/android/gms/common/api/internal/zzaj;)Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zzap;->zzhv:Lcom/google/android/gms/common/api/internal/zzaj;

    invoke-static {v5}, Lcom/google/android/gms/common/api/internal/zzaj;->zzd(Lcom/google/android/gms/common/api/internal/zzaj;)Lcom/google/android/gms/common/api/internal/zzbd;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zzbd;->zzfq:Lcom/google/android/gms/common/api/internal/zzav;

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zzav;->zzim:Ljava/util/Set;

    invoke-interface {v3, v4, v5}, Lcom/google/android/gms/common/api/Api$Client;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    goto :goto_19

    :cond_37
    return-void
.end method
