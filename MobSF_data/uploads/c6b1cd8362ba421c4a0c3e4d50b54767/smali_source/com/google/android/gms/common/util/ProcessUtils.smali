.class public Lcom/google/android/gms/common/util/ProcessUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/util/ProcessUtils$SystemGroupsNotAvailableException;
    }
.end annotation


# static fields
.field private static zzaai:Ljava/lang/String;

.field private static zzaaj:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallingProcessName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/common/util/ProcessUtils;->zzde()I

    move-result v1

    if-ne v0, v1, :cond_f

    invoke-static {}, Lcom/google/android/gms/common/util/ProcessUtils;->getMyProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    invoke-static {v0}, Lcom/google/android/gms/common/util/ProcessUtils;->zzl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMyProcessName()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/util/ProcessUtils;->zzaai:Ljava/lang/String;

    if-nez v0, :cond_e

    invoke-static {}, Lcom/google/android/gms/common/util/ProcessUtils;->zzde()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/ProcessUtils;->zzl(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/ProcessUtils;->zzaai:Ljava/lang/String;

    :cond_e
    sget-object v0, Lcom/google/android/gms/common/util/ProcessUtils;->zzaai:Ljava/lang/String;

    return-object v0
.end method

.method public static hasSystemGroups()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/util/ProcessUtils$SystemGroupsNotAvailableException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/common/util/ProcessUtils;->zzde()I

    move-result v1

    const/16 v2, 0x18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "/proc/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/status"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/util/ProcessUtils;->zzm(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v1
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_21} :catch_35
    .catchall {:try_start_1 .. :try_end_21} :catchall_33

    :try_start_21
    invoke-static {v1}, Lcom/google/android/gms/common/util/ProcessUtils;->zzk(Ljava/io/BufferedReader;)Z

    move-result v0
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_25} :catch_2e
    .catchall {:try_start_21 .. :try_end_25} :catchall_29

    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :catchall_29
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3e

    :catch_2e
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_36

    :catchall_33
    move-exception v1

    goto :goto_3e

    :catch_35
    move-exception v1

    :goto_36
    :try_start_36
    new-instance v2, Lcom/google/android/gms/common/util/ProcessUtils$SystemGroupsNotAvailableException;

    const-string v3, "Unable to access /proc/pid/status."

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/common/util/ProcessUtils$SystemGroupsNotAvailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_33

    :goto_3e
    invoke-static {v0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method private static zzde()I
    .registers 1

    sget v0, Lcom/google/android/gms/common/util/ProcessUtils;->zzaaj:I

    if-nez v0, :cond_a

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/google/android/gms/common/util/ProcessUtils;->zzaaj:I

    :cond_a
    sget v0, Lcom/google/android/gms/common/util/ProcessUtils;->zzaaj:I

    return v0
.end method

.method private static zzk(Ljava/io/BufferedReader;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/common/util/ProcessUtils$SystemGroupsNotAvailableException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Groups:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x7

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\s"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_25
    if-ge v2, v0, :cond_3e

    aget-object v3, p0, v2

    :try_start_29
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_2d} :catch_3b

    const-wide/16 v5, 0x3e8

    cmp-long v7, v3, v5

    if-ltz v7, :cond_3b

    const-wide/16 v5, 0x7d0

    cmp-long v7, v3, v5

    if-gez v7, :cond_3b

    const/4 p0, 0x1

    return p0

    :catch_3b
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_3e
    return v1

    :cond_3f
    new-instance p0, Lcom/google/android/gms/common/util/ProcessUtils$SystemGroupsNotAvailableException;

    const-string v0, "Missing Groups entry from proc/pid/status."

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/util/ProcessUtils$SystemGroupsNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzl(I)Ljava/lang/String;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-gtz p0, :cond_4

    return-object v0

    :cond_4
    const/16 v1, 0x19

    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "/proc/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/cmdline"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/util/ProcessUtils;->zzm(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object p0
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_20} :catch_37
    .catchall {:try_start_6 .. :try_end_20} :catchall_32

    :try_start_20
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_28} :catch_38
    .catchall {:try_start_20 .. :try_end_28} :catchall_2d

    invoke-static {p0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v1

    return-object v0

    :catchall_2d
    move-exception v0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_33

    :catchall_32
    move-exception p0

    :goto_33
    invoke-static {v0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :catch_37
    move-object p0, v0

    :catch_38
    invoke-static {p0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0
.end method

.method private static zzm(Ljava/lang/String;)Ljava/io/BufferedReader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1

    :catchall_12
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method
