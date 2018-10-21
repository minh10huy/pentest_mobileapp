.class final Lcom/google/android/gms/common/GoogleCertificates;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/GoogleCertificates$CertData;
    }
.end annotation

.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field private static volatile zzax:Lcom/google/android/gms/common/internal/IGoogleCertificatesApi;

.field private static final zzay:Ljava/lang/Object;

.field private static zzaz:Landroid/content/Context;

.field private static zzba:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/internal/ICertData;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "GoogleCertificates.class"
    .end annotation
.end field

.field private static zzbb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/internal/ICertData;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "GoogleCertificates.class"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/GoogleCertificates;->zzay:Ljava/lang/Object;

    return-void
.end method

.method static declared-synchronized init(Landroid/content/Context;)V
    .registers 3

    const-class v0, Lcom/google/android/gms/common/GoogleCertificates;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/GoogleCertificates;->zzaz:Landroid/content/Context;

    if-nez v1, :cond_11

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/GoogleCertificates;->zzaz:Landroid/content/Context;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1a

    monitor-exit v0

    return-void

    :cond_11
    :try_start_11
    const-string p0, "GoogleCertificates"

    const-string v1, "GoogleCertificates has been initialized already"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static zza(Ljava/lang/String;Lcom/google/android/gms/common/GoogleCertificates$CertData;Z)Lcom/google/android/gms/common/zzg;
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleCertificates;->zzc()V
    :try_end_3
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_3} :catch_45

    sget-object v0, Lcom/google/android/gms/common/GoogleCertificates;->zzaz:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/GoogleCertificatesQuery;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/common/GoogleCertificatesQuery;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/GoogleCertificates$CertData;Z)V

    :try_start_d
    sget-object v1, Lcom/google/android/gms/common/GoogleCertificates;->zzax:Lcom/google/android/gms/common/internal/IGoogleCertificatesApi;

    sget-object v2, Lcom/google/android/gms/common/GoogleCertificates;->zzaz:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/internal/IGoogleCertificatesApi;->isGoogleOrPlatformSigned(Lcom/google/android/gms/common/GoogleCertificatesQuery;Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1d} :catch_36

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/google/android/gms/common/zzg;->zzg()Lcom/google/android/gms/common/zzg;

    move-result-object p0

    return-object p0

    :cond_24
    const/4 v0, 0x1

    if-nez p2, :cond_30

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/GoogleCertificates;->zza(Ljava/lang/String;Lcom/google/android/gms/common/GoogleCertificates$CertData;Z)Lcom/google/android/gms/common/zzg;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/common/zzg;->zzbl:Z

    if-eqz v1, :cond_30

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/common/zzg;->zza(Ljava/lang/String;Lcom/google/android/gms/common/GoogleCertificates$CertData;ZZ)Lcom/google/android/gms/common/zzg;

    move-result-object p0

    return-object p0

    :catch_36
    move-exception p0

    const-string p1, "GoogleCertificates"

    const-string p2, "Failed to get Google certificates from remote"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "module call"

    :goto_40
    invoke-static {p1, p0}, Lcom/google/android/gms/common/zzg;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzg;

    move-result-object p0

    return-object p0

    :catch_45
    move-exception p0

    const-string p1, "module init"

    goto :goto_40
.end method

.method private static zza([Landroid/os/IBinder;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/IBinder;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/internal/ICertData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    array-length v0, p0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_17

    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/google/android/gms/common/internal/ICertData$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/ICertData;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_17
    return-object v1
.end method

.method private static zzc()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/GoogleCertificates;->zzax:Lcom/google/android/gms/common/internal/IGoogleCertificatesApi;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/google/android/gms/common/GoogleCertificates;->zzaz:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/common/GoogleCertificates;->zzay:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    sget-object v1, Lcom/google/android/gms/common/GoogleCertificates;->zzax:Lcom/google/android/gms/common/internal/IGoogleCertificatesApi;

    if-nez v1, :cond_27

    sget-object v1, Lcom/google/android/gms/common/GoogleCertificates;->zzaz:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    const-string v3, "com.google.android.gms.googlecertificates"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1

    const-string v2, "com.google.android.gms.common.GoogleCertificatesImpl"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/IGoogleCertificatesApi$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/IGoogleCertificatesApi;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/common/GoogleCertificates;->zzax:Lcom/google/android/gms/common/internal/IGoogleCertificatesApi;

    :cond_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_29

    throw v1
.end method

.method static declared-synchronized zzd()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/internal/ICertData;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/common/GoogleCertificates;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/GoogleCertificates;->zzba:Ljava/util/Set;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/google/android/gms/common/GoogleCertificates;->zzba:Ljava/util/Set;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_4f

    monitor-exit v0

    return-object v1

    :cond_b
    :try_start_b
    invoke-static {}, Lcom/google/android/gms/common/GoogleCertificates;->zzc()V
    :try_end_e
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_b .. :try_end_e} :catch_41
    .catchall {:try_start_b .. :try_end_e} :catchall_4f

    :try_start_e
    sget-object v1, Lcom/google/android/gms/common/GoogleCertificates;->zzax:Lcom/google/android/gms/common/internal/IGoogleCertificatesApi;

    invoke-interface {v1}, Lcom/google/android/gms/common/internal/IGoogleCertificatesApi;->getGoogleCertificates()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    if-nez v1, :cond_23

    const-string v1, "GoogleCertificates"

    const-string v2, "Failed to get Google certificates from remote"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_21} :catch_33
    .catchall {:try_start_e .. :try_end_21} :catchall_4f

    monitor-exit v0

    return-object v1

    :cond_23
    :try_start_23
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/IBinder;

    invoke-static {v1}, Lcom/google/android/gms/common/GoogleCertificates;->zza([Landroid/os/IBinder;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/common/GoogleCertificates;->zzba:Ljava/util/Set;
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2f} :catch_33
    .catchall {:try_start_23 .. :try_end_2f} :catchall_4f

    :try_start_2f
    sget-object v1, Lcom/google/android/gms/common/GoogleCertificates;->zzba:Ljava/util/Set;
    :try_end_31
    .catchall {:try_start_2f .. :try_end_31} :catchall_4f

    monitor-exit v0

    return-object v1

    :catch_33
    move-exception v1

    :try_start_34
    const-string v2, "GoogleCertificates"

    const-string v3, "Failed to get Google certificates from remote"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_4f

    monitor-exit v0

    return-object v1

    :catch_41
    move-exception v1

    :try_start_42
    const-string v2, "GoogleCertificates"

    const-string v3, "Failed to load com.google.android.gms.googlecertificates"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1
    :try_end_4d
    .catchall {:try_start_42 .. :try_end_4d} :catchall_4f

    monitor-exit v0

    return-object v1

    :catchall_4f
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized zze()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/internal/ICertData;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/common/GoogleCertificates;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/GoogleCertificates;->zzbb:Ljava/util/Set;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/google/android/gms/common/GoogleCertificates;->zzbb:Ljava/util/Set;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_4f

    monitor-exit v0

    return-object v1

    :cond_b
    :try_start_b
    invoke-static {}, Lcom/google/android/gms/common/GoogleCertificates;->zzc()V
    :try_end_e
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_b .. :try_end_e} :catch_41
    .catchall {:try_start_b .. :try_end_e} :catchall_4f

    :try_start_e
    sget-object v1, Lcom/google/android/gms/common/GoogleCertificates;->zzax:Lcom/google/android/gms/common/internal/IGoogleCertificatesApi;

    invoke-interface {v1}, Lcom/google/android/gms/common/internal/IGoogleCertificatesApi;->getGoogleReleaseCertificates()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    if-nez v1, :cond_23

    const-string v1, "GoogleCertificates"

    const-string v2, "Failed to get Google certificates from remote"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_21} :catch_33
    .catchall {:try_start_e .. :try_end_21} :catchall_4f

    monitor-exit v0

    return-object v1

    :cond_23
    :try_start_23
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/IBinder;

    invoke-static {v1}, Lcom/google/android/gms/common/GoogleCertificates;->zza([Landroid/os/IBinder;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/common/GoogleCertificates;->zzbb:Ljava/util/Set;
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2f} :catch_33
    .catchall {:try_start_23 .. :try_end_2f} :catchall_4f

    :try_start_2f
    sget-object v1, Lcom/google/android/gms/common/GoogleCertificates;->zzbb:Ljava/util/Set;
    :try_end_31
    .catchall {:try_start_2f .. :try_end_31} :catchall_4f

    monitor-exit v0

    return-object v1

    :catch_33
    move-exception v1

    :try_start_34
    const-string v2, "GoogleCertificates"

    const-string v3, "Failed to get Google certificates from remote"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_4f

    monitor-exit v0

    return-object v1

    :catch_41
    move-exception v1

    :try_start_42
    const-string v2, "GoogleCertificates"

    const-string v3, "Failed to load com.google.android.gms.googlecertificates"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1
    :try_end_4d
    .catchall {:try_start_42 .. :try_end_4d} :catchall_4f

    monitor-exit v0

    return-object v1

    :catchall_4f
    move-exception v1

    monitor-exit v0

    throw v1
.end method
