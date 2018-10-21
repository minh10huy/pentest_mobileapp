.class public Lcom/google/android/gms/common/wrappers/Wrappers;
.super Ljava/lang/Object;


# static fields
.field private static zzabb:Lcom/google/android/gms/common/wrappers/Wrappers;


# instance fields
.field private zzaba:Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/wrappers/Wrappers;

    invoke-direct {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/wrappers/Wrappers;->zzabb:Lcom/google/android/gms/common/wrappers/Wrappers;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/wrappers/Wrappers;->zzaba:Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    return-void
.end method

.method public static packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;
    .registers 2

    sget-object v0, Lcom/google/android/gms/common/wrappers/Wrappers;->zzabb:Lcom/google/android/gms/common/wrappers/Wrappers;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->getPackageManagerWrapper(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static resetForTests()V
    .registers 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/wrappers/Wrappers;

    invoke-direct {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/wrappers/Wrappers;->zzabb:Lcom/google/android/gms/common/wrappers/Wrappers;

    return-void
.end method

.method public static setWrappers(Lcom/google/android/gms/common/wrappers/Wrappers;)V
    .registers 1

    sput-object p0, Lcom/google/android/gms/common/wrappers/Wrappers;->zzabb:Lcom/google/android/gms/common/wrappers/Wrappers;

    return-void
.end method


# virtual methods
.method public declared-synchronized getPackageManagerWrapper(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/wrappers/Wrappers;->zzaba:Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    if-nez v0, :cond_17

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_10

    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_10
    new-instance v0, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/common/wrappers/Wrappers;->zzaba:Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    :cond_17
    iget-object p1, p0, Lcom/google/android/gms/common/wrappers/Wrappers;->zzaba:Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object p1

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
