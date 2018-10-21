.class public abstract Lcom/google/android/gms/common/config/GservicesValue;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/config/GservicesValue$zzc;,
        Lcom/google/android/gms/common/config/GservicesValue$zzb;,
        Lcom/google/android/gms/common/config/GservicesValue$zzd;,
        Lcom/google/android/gms/common/config/GservicesValue$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final sLock:Ljava/lang/Object;

.field private static zzmu:Lcom/google/android/gms/common/config/GservicesValue$zza; = null

.field private static zzmv:I = 0x0

.field private static zzmw:Landroid/content/Context; = null

.field private static zzmx:Ljava/lang/String; = "com.google.android.providers.gsf.permission.READ_GSERVICES"

.field private static zzmy:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "sLock"
    .end annotation
.end field


# instance fields
.field protected final mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mKey:Ljava/lang/String;

.field private zzmz:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/config/GservicesValue;->sLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/config/GservicesValue;->zzmz:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/config/GservicesValue;->mKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/config/GservicesValue;->mDefaultValue:Ljava/lang/Object;

    return-void
.end method

.method public static forceInit(Landroid/content/Context;)V
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/config/GservicesValue;->forceInit(Landroid/content/Context;Ljava/util/HashSet;)V

    return-void
.end method

.method public static forceInit(Landroid/content/Context;Ljava/util/HashSet;)V
    .registers 4
    .param p1    # Ljava/util/HashSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/config/GservicesValue$zzd;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/config/GservicesValue$zzd;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/common/config/GservicesValue;->zza(Landroid/content/Context;Lcom/google/android/gms/common/config/GservicesValue$zza;Ljava/util/HashSet;)V

    return-void
.end method

.method public static getDirectBootCache(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "gservices-direboot-cache"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getSharedUserId()I
    .registers 1

    sget v0, Lcom/google/android/gms/common/config/GservicesValue;->zzmv:I

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/config/GservicesValue;->zzd(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {p0, v0}, Lcom/google/android/gms/common/config/GservicesValue;->init(Landroid/content/Context;Ljava/util/HashSet;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/util/HashSet;)V
    .registers 5
    .param p1    # Ljava/util/HashSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/config/GservicesValue;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/config/GservicesValue;->zzmu:Lcom/google/android/gms/common/config/GservicesValue$zza;

    if-nez v1, :cond_13

    new-instance v1, Lcom/google/android/gms/common/config/GservicesValue$zzd;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/config/GservicesValue$zzd;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p0, v1, p1}, Lcom/google/android/gms/common/config/GservicesValue;->zza(Landroid/content/Context;Lcom/google/android/gms/common/config/GservicesValue$zza;Ljava/util/HashSet;)V

    :cond_13
    sget p1, Lcom/google/android/gms/common/config/GservicesValue;->zzmv:I
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_33

    if-nez p1, :cond_31

    :try_start_17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "com.google.android.gms"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    sput p0, Lcom/google/android/gms/common/config/GservicesValue;->zzmv:I
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_26} :catch_27
    .catchall {:try_start_17 .. :try_end_26} :catchall_33

    goto :goto_31

    :catch_27
    move-exception p0

    :try_start_28
    const-string p1, "GservicesValue"

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    :goto_31
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public static initForTests()V
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/config/GservicesValue$zzb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/config/GservicesValue$zzb;-><init>(Lcom/google/android/gms/common/config/zza;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/common/config/GservicesValue;->zza(Landroid/content/Context;Lcom/google/android/gms/common/config/GservicesValue$zza;Ljava/util/HashSet;)V

    return-void
.end method

.method public static initForTests(Landroid/content/Context;Ljava/util/HashSet;)V
    .registers 4
    .param p1    # Ljava/util/HashSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/config/GservicesValue$zzb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/config/GservicesValue$zzb;-><init>(Lcom/google/android/gms/common/config/zza;)V

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/common/config/GservicesValue;->zza(Landroid/content/Context;Lcom/google/android/gms/common/config/GservicesValue$zza;Ljava/util/HashSet;)V

    return-void
.end method

.method public static initForTests(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/common/config/GservicesValue;->initForTests(Ljava/util/Map;)V

    return-void
.end method

.method public static initForTests(Ljava/util/Map;)V
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/config/GservicesValue;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/google/android/gms/common/config/GservicesValue$zzc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/config/GservicesValue$zzc;-><init>(Ljava/util/Map;)V

    sput-object v1, Lcom/google/android/gms/common/config/GservicesValue;->zzmu:Lcom/google/android/gms/common/config/GservicesValue$zza;

    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public static isInitialized()Z
    .registers 2

    sget-object v0, Lcom/google/android/gms/common/config/GservicesValue;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/config/GservicesValue;->zzmu:Lcom/google/android/gms/common/config/GservicesValue$zza;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public static partnerSetting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/config/GservicesValue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/config/GservicesValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/config/zzg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/config/zzg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static resetAllOverrides()V
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/config/GservicesValue;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/common/config/GservicesValue;->zzcg()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-static {}, Lcom/google/android/gms/common/config/GservicesValue$zzb;->zzci()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/gms/common/config/GservicesValue;->resetOverride()V

    goto :goto_11

    :cond_21
    invoke-static {}, Lcom/google/android/gms/common/config/GservicesValue$zzb;->zzci()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    :cond_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Double;)Lcom/google/android/gms/common/config/GservicesValue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ")",
            "Lcom/google/android/gms/common/config/GservicesValue<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/config/zzd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/config/zzd;-><init>(Ljava/lang/String;Ljava/lang/Double;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/common/config/GservicesValue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ")",
            "Lcom/google/android/gms/common/config/GservicesValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/config/zze;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/config/zze;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/config/GservicesValue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/google/android/gms/common/config/GservicesValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/config/zzc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/config/zzc;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/config/GservicesValue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lcom/google/android/gms/common/config/GservicesValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/config/zzb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/config/zzb;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/config/GservicesValue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/config/GservicesValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/config/zzf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/config/zzf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Z)Lcom/google/android/gms/common/config/GservicesValue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/common/config/GservicesValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/config/zza;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/config/zza;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method private static zza(Landroid/content/Context;Lcom/google/android/gms/common/config/GservicesValue$zza;Ljava/util/HashSet;)V
    .registers 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/config/GservicesValue$zza;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/config/GservicesValue;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sput-object p1, Lcom/google/android/gms/common/config/GservicesValue;->zzmu:Lcom/google/android/gms/common/config/GservicesValue$zza;

    const/4 p1, 0x0

    sput-object p1, Lcom/google/android/gms/common/config/GservicesValue;->zzmy:Ljava/util/HashSet;

    sput-object p1, Lcom/google/android/gms/common/config/GservicesValue;->zzmw:Landroid/content/Context;

    if-eqz p0, :cond_1e

    invoke-static {p0}, Lcom/google/android/gms/common/config/GservicesValue;->zzd(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1e

    sput-object p2, Lcom/google/android/gms/common/config/GservicesValue;->zzmy:Ljava/util/HashSet;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/config/GservicesValue;->zzmw:Landroid/content/Context;

    :cond_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method private static zzcg()Z
    .registers 2

    sget-object v0, Lcom/google/android/gms/common/config/GservicesValue;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/config/GservicesValue;->zzmu:Lcom/google/android/gms/common/config/GservicesValue$zza;

    instance-of v1, v1, Lcom/google/android/gms/common/config/GservicesValue$zzb;

    if-nez v1, :cond_12

    sget-object v1, Lcom/google/android/gms/common/config/GservicesValue;->zzmu:Lcom/google/android/gms/common/config/GservicesValue$zza;

    instance-of v1, v1, Lcom/google/android/gms/common/config/GservicesValue$zzc;

    if-eqz v1, :cond_10

    goto :goto_12

    :cond_10
    const/4 v1, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v1, 0x1

    :goto_13
    monitor-exit v0

    return v1

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method static synthetic zzch()Lcom/google/android/gms/common/config/GservicesValue$zza;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/config/GservicesValue;->zzmu:Lcom/google/android/gms/common/config/GservicesValue$zza;

    return-object v0
.end method

.method private static zzd(Landroid/content/Context;)Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastN()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_17

    return v1

    :cond_17
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_23

    const/4 p0, 0x1

    return p0

    :cond_23
    return v1
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/config/GservicesValue;->zzmz:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/common/config/GservicesValue;->zzmz:Ljava/lang/Object;

    return-object v0

    :cond_7
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/config/GservicesValue;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_e
    sget-object v2, Lcom/google/android/gms/common/config/GservicesValue;->zzmw:Landroid/content/Context;

    if-eqz v2, :cond_1c

    sget-object v2, Lcom/google/android/gms/common/config/GservicesValue;->zzmw:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/config/GservicesValue;->zzd(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    sget-object v3, Lcom/google/android/gms/common/config/GservicesValue;->zzmy:Ljava/util/HashSet;

    sget-object v4, Lcom/google/android/gms/common/config/GservicesValue;->zzmw:Landroid/content/Context;

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_b1

    if-eqz v2, :cond_7f

    const-string v0, "GservicesValue"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "GservicesValue"

    const-string v1, "Gservice value accessed during directboot: "

    iget-object v2, p0, Lcom/google/android/gms/common/config/GservicesValue;->mKey:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_42

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_48

    :cond_42
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_48
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    if-eqz v3, :cond_76

    iget-object v0, p0, Lcom/google/android/gms/common/config/GservicesValue;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    const-string v0, "GservicesValue"

    const-string v1, "Gservices key not whitelisted for directboot access: "

    iget-object v2, p0, Lcom/google/android/gms/common/config/GservicesValue;->mKey:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6a

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_70

    :cond_6a
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_70
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/common/config/GservicesValue;->mDefaultValue:Ljava/lang/Object;

    return-object v0

    :cond_76
    iget-object v0, p0, Lcom/google/android/gms/common/config/GservicesValue;->mKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/common/config/GservicesValue;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v4, v0, v1}, Lcom/google/android/gms/common/config/GservicesValue;->retrieveFromDirectBootCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_7f
    sget-object v2, Lcom/google/android/gms/common/config/GservicesValue;->sLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_83
    sput-object v1, Lcom/google/android/gms/common/config/GservicesValue;->zzmy:Ljava/util/HashSet;

    sput-object v1, Lcom/google/android/gms/common/config/GservicesValue;->zzmw:Landroid/content/Context;

    monitor-exit v2
    :try_end_88
    .catchall {:try_start_83 .. :try_end_88} :catchall_ae

    :try_start_88
    iget-object v1, p0, Lcom/google/android/gms/common/config/GservicesValue;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/config/GservicesValue;->retrieve(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_8e
    .catch Ljava/lang/SecurityException; {:try_start_88 .. :try_end_8e} :catch_94
    .catchall {:try_start_88 .. :try_end_8e} :catchall_92

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1

    :catchall_92
    move-exception v1

    goto :goto_aa

    :catch_94
    :try_start_94
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_98
    .catchall {:try_start_94 .. :try_end_98} :catchall_92

    :try_start_98
    iget-object v3, p0, Lcom/google/android/gms/common/config/GservicesValue;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/common/config/GservicesValue;->retrieve(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3
    :try_end_9e
    .catchall {:try_start_98 .. :try_end_9e} :catchall_a5

    :try_start_9e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_92

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v3

    :catchall_a5
    move-exception v3

    :try_start_a6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_aa
    .catchall {:try_start_a6 .. :try_end_aa} :catchall_92

    :goto_aa
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1

    :catchall_ae
    move-exception v0

    :try_start_af
    monitor-exit v2
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    throw v0

    :catchall_b1
    move-exception v0

    :try_start_b2
    monitor-exit v1
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    throw v0
.end method

.method public final getBinderSafe()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/config/GservicesValue;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public override(Ljava/lang/Object;)V
    .registers 4
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/config/GservicesValue;->zzmu:Lcom/google/android/gms/common/config/GservicesValue$zza;

    instance-of v0, v0, Lcom/google/android/gms/common/config/GservicesValue$zzb;

    if-nez v0, :cond_d

    const-string v0, "GservicesValue"

    const-string v1, "GservicesValue.override(): test should probably call initForTests() first"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iput-object p1, p0, Lcom/google/android/gms/common/config/GservicesValue;->zzmz:Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/common/config/GservicesValue;->sLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_12
    invoke-static {}, Lcom/google/android/gms/common/config/GservicesValue;->zzcg()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/google/android/gms/common/config/GservicesValue$zzb;->zzci()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1f
    monitor-exit p1

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public resetOverride()V
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/config/GservicesValue;->zzmz:Ljava/lang/Object;

    return-void
.end method

.method protected abstract retrieve(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method protected retrieveFromDirectBootCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "The Gservices classes used does not support direct-boot"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
