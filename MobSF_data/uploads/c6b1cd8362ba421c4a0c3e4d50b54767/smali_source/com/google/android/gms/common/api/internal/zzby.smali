.class public final Lcom/google/android/gms/common/api/internal/zzby;
.super Lcom/google/android/gms/signin/internal/BaseSignInCallbacks;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field private static zzlv:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
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


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mScopes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final zzby:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
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

.field private zzgf:Lcom/google/android/gms/common/internal/ClientSettings;

.field private zzhn:Lcom/google/android/gms/signin/SignInClient;

.field private zzlw:Lcom/google/android/gms/common/api/internal/zzcb;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/signin/SignIn;->CLIENT_BUILDER:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    sput-object v0, Lcom/google/android/gms/common/api/internal/zzby;->zzlv:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/ClientSettings;)V
    .registers 5
    .param p3    # Lcom/google/android/gms/common/internal/ClientSettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/api/internal/zzby;->zzlv:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/api/internal/zzby;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;)V
    .registers 5
    .param p3    # Lcom/google/android/gms/common/internal/ClientSettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/common/internal/ClientSettings;",
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/SignInClient;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/BaseSignInCallbacks;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzby;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzby;->mHandler:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/ClientSettings;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzby;->zzgf:Lcom/google/android/gms/common/internal/ClientSettings;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/ClientSettings;->getRequiredScopes()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzby;->mScopes:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/zzby;->zzby:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/internal/zzby;)Lcom/google/android/gms/common/api/internal/zzcb;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzby;->zzlw:Lcom/google/android/gms/common/api/internal/zzcb;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/internal/zzby;Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zzby;->zzb(Lcom/google/android/gms/signin/internal/SignInResponse;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/SignInResponse;->getConnectionResult()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/SignInResponse;->getResolveAccountResponse()Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->getConnectionResult()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_4c

    const-string p1, "SignInCoordinator"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x30

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_41
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzby;->zzlw:Lcom/google/android/gms/common/api/internal/zzcb;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/zzcb;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_46
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzby;->zzhn:Lcom/google/android/gms/signin/SignInClient;

    invoke-interface {p1}, Lcom/google/android/gms/signin/SignInClient;->disconnect()V

    return-void

    :cond_4c
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzby;->zzlw:Lcom/google/android/gms/common/api/internal/zzcb;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->getAccountAccessor()Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzby;->mScopes:Ljava/util/Set;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/zzcb;->zza(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    goto :goto_46
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzby;->zzhn:Lcom/google/android/gms/signin/SignInClient;

    invoke-interface {p1, p0}, Lcom/google/android/gms/signin/SignInClient;->signIn(Lcom/google/android/gms/signin/internal/ISignInCallbacks;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzby;->zzlw:Lcom/google/android/gms/common/api/internal/zzcb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zzcb;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzby;->zzhn:Lcom/google/android/gms/signin/SignInClient;

    invoke-interface {p1}, Lcom/google/android/gms/signin/SignInClient;->disconnect()V

    return-void
.end method

.method public final onSignInComplete(Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .registers 4
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzby;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zzca;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/zzca;-><init>(Lcom/google/android/gms/common/api/internal/zzby;Lcom/google/android/gms/signin/internal/SignInResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/zzcb;)V
    .registers 11
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzby;->zzhn:Lcom/google/android/gms/signin/SignInClient;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzby;->zzhn:Lcom/google/android/gms/signin/SignInClient;

    invoke-interface {v0}, Lcom/google/android/gms/signin/SignInClient;->disconnect()V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzby;->zzgf:Lcom/google/android/gms/common/internal/ClientSettings;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/ClientSettings;->setClientSessionId(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzby;->zzby:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzby;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzby;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zzby;->zzgf:Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzby;->zzgf:Lcom/google/android/gms/common/internal/ClientSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ClientSettings;->getSignInOptions()Lcom/google/android/gms/signin/SignInOptions;

    move-result-object v6

    move-object v7, p0

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/SignInClient;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zzby;->zzhn:Lcom/google/android/gms/signin/SignInClient;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzby;->zzlw:Lcom/google/android/gms/common/api/internal/zzcb;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzby;->mScopes:Ljava/util/Set;

    if-eqz p1, :cond_47

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzby;->mScopes:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_41

    goto :goto_47

    :cond_41
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzby;->zzhn:Lcom/google/android/gms/signin/SignInClient;

    invoke-interface {p1}, Lcom/google/android/gms/signin/SignInClient;->connect()V

    return-void

    :cond_47
    :goto_47
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzby;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/common/api/internal/zzbz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zzbz;-><init>(Lcom/google/android/gms/common/api/internal/zzby;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzbt()Lcom/google/android/gms/signin/SignInClient;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzby;->zzhn:Lcom/google/android/gms/signin/SignInClient;

    return-object v0
.end method

.method public final zzbz()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzby;->zzhn:Lcom/google/android/gms/signin/SignInClient;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzby;->zzhn:Lcom/google/android/gms/signin/SignInClient;

    invoke-interface {v0}, Lcom/google/android/gms/signin/SignInClient;->disconnect()V

    :cond_9
    return-void
.end method
