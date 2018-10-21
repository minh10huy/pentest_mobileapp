.class public Lcom/google/android/gms/common/GoogleSignatureVerifier;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field private static zzbv:Lcom/google/android/gms/common/GoogleSignatureVerifier;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/GoogleSignatureVerifier;
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/google/android/gms/common/GoogleSignatureVerifier;

    monitor-enter v0

    :try_start_6
    sget-object v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzbv:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    if-nez v1, :cond_14

    invoke-static {p0}, Lcom/google/android/gms/common/GoogleCertificates;->init(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzbv:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_18

    sget-object p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzbv:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    return-object p0

    :catchall_18
    move-exception p0

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public static declared-synchronized resetForTests()V
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/google/android/gms/common/GoogleSignatureVerifier;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzbv:Lcom/google/android/gms/common/GoogleSignatureVerifier;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static varargs zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/GoogleCertificates$CertData;)Lcom/google/android/gms/common/GoogleCertificates$CertData;
    .registers 5

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_14

    const-string p0, "GoogleSignatureVerifier"

    const-string p1, "Package has more than one signature."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_14
    new-instance v0, Lcom/google/android/gms/common/zzb;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/zzb;-><init>([B)V

    :goto_22
    array-length p0, p1

    if-ge v2, p0, :cond_33

    aget-object p0, p1, v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/GoogleCertificates$CertData;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_30

    aget-object p0, p1, v2

    return-object p0

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_33
    return-object v1
.end method

.method private final zza(Landroid/content/pm/PackageInfo;)Lcom/google/android/gms/common/zzg;
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result v0

    if-nez p1, :cond_f

    const-string p1, "null pkg"

    :goto_a
    invoke-static {p1}, Lcom/google/android/gms/common/zzg;->zze(Ljava/lang/String;)Lcom/google/android/gms/common/zzg;

    move-result-object p1

    return-object p1

    :cond_f
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_18

    const-string p1, "single cert required"

    goto :goto_a

    :cond_18
    new-instance v1, Lcom/google/android/gms/common/zzb;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/zzb;-><init>([B)V

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/common/GoogleCertificates;->zza(Ljava/lang/String;Lcom/google/android/gms/common/GoogleCertificates$CertData;Z)Lcom/google/android/gms/common/zzg;

    move-result-object v4

    iget-boolean v5, v4, Lcom/google/android/gms/common/zzg;->zzbl:Z

    if-eqz v5, :cond_49

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_49

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_49

    if-eqz v0, :cond_46

    invoke-static {v2, v1, v3}, Lcom/google/android/gms/common/GoogleCertificates;->zza(Ljava/lang/String;Lcom/google/android/gms/common/GoogleCertificates$CertData;Z)Lcom/google/android/gms/common/zzg;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/gms/common/zzg;->zzbl:Z

    if-eqz p1, :cond_49

    :cond_46
    const-string p1, "debuggable release cert app rejected"

    goto :goto_a

    :cond_49
    return-object v4
.end method

.method private final zzb(I)Lcom/google/android/gms/common/zzg;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_24

    array-length v0, p1

    if-nez v0, :cond_10

    goto :goto_24

    :cond_10
    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_23

    aget-object v0, p1, v2

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzf(Ljava/lang/String;)Lcom/google/android/gms/common/zzg;

    move-result-object v0

    iget-boolean v3, v0, Lcom/google/android/gms/common/zzg;->zzbl:Z

    if-eqz v3, :cond_20

    return-object v0

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_23
    return-object v0

    :cond_24
    :goto_24
    const-string p1, "no pkgs"

    invoke-static {p1}, Lcom/google/android/gms/common/zzg;->zze(Ljava/lang/String;)Lcom/google/android/gms/common/zzg;

    move-result-object p1

    return-object p1
.end method

.method private final zzf(Ljava/lang/String;)Lcom/google/android/gms/common/zzg;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_c} :catch_11

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Landroid/content/pm/PackageInfo;)Lcom/google/android/gms/common/zzg;

    move-result-object p1

    return-object p1

    :catch_11
    const-string v0, "no pkg "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_27

    :cond_22
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_27
    invoke-static {p1}, Lcom/google/android/gms/common/zzg;->zze(Ljava/lang/String;)Lcom/google/android/gms/common/zzg;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getAllGoogleSignatures(Z)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set<",
            "[B>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/google/android/gms/common/GoogleCertificates;->zzd()Ljava/util/Set;

    move-result-object p1

    goto :goto_b

    :cond_7
    invoke-static {}, Lcom/google/android/gms/common/GoogleCertificates;->zze()Ljava/util/Set;

    move-result-object p1

    :goto_b
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    :try_start_14
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/ICertData;

    invoke-interface {v1}, Lcom/google/android/gms/common/internal/ICertData;->getBytesWrapped()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_31} :catch_32

    goto :goto_18

    :catch_32
    move-exception p1

    const-string v1, "GoogleSignatureVerifier"

    const-string v2, "Failed to get Google certificates from remote"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3a
    return-object v0
.end method

.method public isChimeraSigned(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .registers 4

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.google.android.gms.chimera"

    iput-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->isPackageGoogleSigned(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    iput-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return v0
.end method

.method public isGooglePublicSignedPackage(Landroid/content/pm/PackageInfo;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->isGooglePublicSignedPackage(Landroid/content/pm/PackageInfo;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    return v2

    :cond_c
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->isGooglePublicSignedPackage(Landroid/content/pm/PackageInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1b

    return v2

    :cond_1b
    const-string p1, "GoogleSignatureVerifier"

    const-string v1, "Test-keys aren\'t accepted on this build."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return v0
.end method

.method public isGooglePublicSignedPackage(Landroid/content/pm/PackageInfo;Z)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    if-eqz p2, :cond_11

    sget-object p2, Lcom/google/android/gms/common/zzd;->zzbg:[Lcom/google/android/gms/common/GoogleCertificates$CertData;

    :goto_c
    invoke-static {p1, p2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/GoogleCertificates$CertData;)Lcom/google/android/gms/common/GoogleCertificates$CertData;

    move-result-object p1

    goto :goto_1a

    :cond_11
    new-array p2, v1, [Lcom/google/android/gms/common/GoogleCertificates$CertData;

    sget-object v2, Lcom/google/android/gms/common/zzd;->zzbg:[Lcom/google/android/gms/common/GoogleCertificates$CertData;

    aget-object v2, v2, v0

    aput-object v2, p2, v0

    goto :goto_c

    :goto_1a
    if-eqz p1, :cond_1d

    return v1

    :cond_1d
    return v0
.end method

.method public isGooglePublicSignedPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->isGooglePublicSignedPackage(Landroid/content/pm/PackageInfo;)Z

    move-result p1

    return p1
.end method

.method public isPackageGoogleSigned(Landroid/content/pm/PackageInfo;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Landroid/content/pm/PackageInfo;)Lcom/google/android/gms/common/zzg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/zzg;->zzi()V

    iget-boolean p1, p1, Lcom/google/android/gms/common/zzg;->zzbl:Z

    return p1
.end method

.method public isPackageGoogleSigned(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->isPackageGoogleSigned(Landroid/content/pm/PackageInfo;)Z

    move-result p1

    return p1
.end method

.method public isPackageGoogleSigned(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->isPackageGoogleSigned(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isPackageGoogleSigned(Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzf(Ljava/lang/String;)Lcom/google/android/gms/common/zzg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/zzg;->zzi()V

    iget-boolean p1, p1, Lcom/google/android/gms/common/zzg;->zzbl:Z

    return p1
.end method

.method public isUidGoogleSigned(I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb(I)Lcom/google/android/gms/common/zzg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/zzg;->zzi()V

    iget-boolean p1, p1, Lcom/google/android/gms/common/zzg;->zzbl:Z

    return p1
.end method

.method public isUidGoogleSigned(Landroid/content/pm/PackageManager;I)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->isUidGoogleSigned(I)Z

    move-result p1

    return p1
.end method

.method public verifyPackageIsGoogleSigned(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->verifyPackageIsGoogleSigned(Ljava/lang/String;)V

    return-void
.end method

.method public verifyPackageIsGoogleSigned(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzf(Ljava/lang/String;)Lcom/google/android/gms/common/zzg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/zzg;->zzh()V

    return-void
.end method

.method public verifyUidIsGoogleSigned(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb(I)Lcom/google/android/gms/common/zzg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/zzg;->zzh()V

    return-void
.end method

.method public verifyUidIsGoogleSigned(Landroid/content/pm/PackageManager;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->verifyUidIsGoogleSigned(I)V

    return-void
.end method
