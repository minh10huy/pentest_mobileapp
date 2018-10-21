.class public final Lcom/google/android/gms/common/api/internal/zzv;
.super Lcom/google/android/gms/common/api/GoogleApi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Lcom/google/android/gms/common/api/GoogleApi<",
        "TO;>;"
    }
.end annotation


# instance fields
.field private final zzdh:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/SignInClient;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgd:Lcom/google/android/gms/common/api/Api$Client;

.field private final zzge:Lcom/google/android/gms/common/api/internal/zzp;

.field private final zzgf:Lcom/google/android/gms/common/internal/ClientSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Landroid/os/Looper;Lcom/google/android/gms/common/api/Api$Client;Lcom/google/android/gms/common/api/internal/zzp;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;)V
    .registers 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/common/api/Api$Client;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/common/api/internal/zzp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/Api<",
            "TO;>;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            "Lcom/google/android/gms/common/api/internal/zzp;",
            "Lcom/google/android/gms/common/internal/ClientSettings;",
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/SignInClient;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/zzv;->zzgd:Lcom/google/android/gms/common/api/Api$Client;

    iput-object p5, p0, Lcom/google/android/gms/common/api/internal/zzv;->zzge:Lcom/google/android/gms/common/api/internal/zzp;

    iput-object p6, p0, Lcom/google/android/gms/common/api/internal/zzv;->zzgf:Lcom/google/android/gms/common/internal/ClientSettings;

    iput-object p7, p0, Lcom/google/android/gms/common/api/internal/zzv;->zzdh:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzv;->zzcq:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zza(Lcom/google/android/gms/common/api/GoogleApi;)V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Looper;Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;)Lcom/google/android/gms/common/api/Api$Client;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza<",
            "TO;>;)",
            "Lcom/google/android/gms/common/api/Api$Client;"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzv;->zzge:Lcom/google/android/gms/common/api/internal/zzp;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/zzp;->zza(Lcom/google/android/gms/common/api/internal/zzq;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzv;->zzgd:Lcom/google/android/gms/common/api/Api$Client;

    return-object p1
.end method

.method public final zza(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/common/api/internal/zzby;
    .registers 6

    new-instance v0, Lcom/google/android/gms/common/api/internal/zzby;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzv;->zzgf:Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzv;->zzdh:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/gms/common/api/internal/zzby;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;)V

    return-object v0
.end method

.method public final zzae()Lcom/google/android/gms/common/api/Api$Client;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzv;->zzgd:Lcom/google/android/gms/common/api/Api$Client;

    return-object v0
.end method
