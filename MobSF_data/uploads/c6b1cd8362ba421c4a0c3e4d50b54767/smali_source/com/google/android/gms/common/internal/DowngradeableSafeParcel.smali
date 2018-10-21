.class public abstract Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/DowngradeableSafeParcel$DowngradeableSafeParcelHelper;
    }
.end annotation


# static fields
.field private static final zzsj:Ljava/lang/Object;

.field private static zzsk:Ljava/lang/ClassLoader;

.field private static zzsl:Ljava/lang/Integer;


# instance fields
.field private zzsm:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzsj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzsm:Z

    return-void
.end method

.method protected static canUnparcelSafely(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->getUnparcelClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    :try_start_8
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zza(Ljava/lang/Class;)Z

    move-result p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_11

    return p0

    :catch_11
    const/4 p0, 0x0

    return p0
.end method

.method static getExtras(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/Integer;)Landroid/os/Bundle;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_22

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zza(Ljava/lang/ClassLoader;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_22

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1d

    goto :goto_23

    :catchall_1d
    move-exception p0

    invoke-static {v0, v0}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zza(Ljava/lang/ClassLoader;Ljava/lang/Integer;)V

    throw p0

    :cond_22
    move-object p1, v0

    :goto_23
    invoke-static {v0, v0}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zza(Ljava/lang/ClassLoader;Ljava/lang/Integer;)V

    return-object p1
.end method

.method static getParcelable(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Integer;)Landroid/os/Parcelable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_14

    :try_start_3
    invoke-virtual {p2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zza(Ljava/lang/ClassLoader;Ljava/lang/Integer;)V

    invoke-virtual {p0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_f

    goto :goto_15

    :catchall_f
    move-exception p0

    invoke-static {v0, v0}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zza(Ljava/lang/ClassLoader;Ljava/lang/Integer;)V

    throw p0

    :cond_14
    move-object p0, v0

    :goto_15
    invoke-static {v0, v0}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zza(Ljava/lang/ClassLoader;Ljava/lang/Integer;)V

    return-object p0
.end method

.method static getParcelable(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Integer;)Landroid/os/Parcelable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_14

    :try_start_3
    invoke-virtual {p2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zza(Ljava/lang/ClassLoader;Ljava/lang/Integer;)V

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_f

    goto :goto_15

    :catchall_f
    move-exception p0

    invoke-static {v0, v0}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zza(Ljava/lang/ClassLoader;Ljava/lang/Integer;)V

    throw p0

    :cond_14
    move-object p0, v0

    :goto_15
    invoke-static {v0, v0}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zza(Ljava/lang/ClassLoader;Ljava/lang/Integer;)V

    return-object p0
.end method

.method protected static getUnparcelClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    sget-object v0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzsj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzsk:Ljava/lang/ClassLoader;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method protected static getUnparcelClientVersion()Ljava/lang/Integer;
    .registers 2

    sget-object v0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzsj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzsl:Ljava/lang/Integer;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method static putParcelable(Landroid/os/Bundle;Ljava/lang/String;Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;Landroid/content/Context;Ljava/lang/Integer;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p3, :cond_6

    if-nez p4, :cond_6

    return v0

    :cond_6
    invoke-direct {p2, p3, p4}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zza(Landroid/content/Context;Ljava/lang/Integer;)Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method private static zza(Ljava/lang/ClassLoader;Ljava/lang/Integer;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzsj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzsk:Ljava/lang/ClassLoader;

    sput-object p1, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzsl:Ljava/lang/Integer;

    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method private final zza(Landroid/content/Context;Ljava/lang/Integer;)Z
    .registers 3

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->prepareForClientVersion(I)Z

    move-result p1

    return p1

    :cond_b
    :try_start_b
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zza(Ljava/lang/Class;)Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->setShouldDowngrade(Z)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_24} :catch_25

    return p2

    :catch_25
    const/4 p1, 0x0

    return p1
.end method

.method private static zza(Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "NULL"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const-string v1, "SAFE_PARCELABLE_NULL_STRING"

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_12} :catch_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_12} :catch_13

    return p0

    :catch_13
    return v0
.end method

.method static synthetic zzcs()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzsj:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected abstract prepareForClientVersion(I)Z
.end method

.method public setShouldDowngrade(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzsm:Z

    return-void
.end method

.method protected shouldDowngrade()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzsm:Z

    return v0
.end method
