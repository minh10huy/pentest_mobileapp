.class final Lcom/google/android/gms/common/config/GservicesValue$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/config/GservicesValue$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/config/GservicesValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# static fields
.field private static final zzna:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/common/config/GservicesValue<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/config/GservicesValue$zzb;->zzna:Ljava/util/Collection;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/config/zza;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/config/GservicesValue$zzb;-><init>()V

    return-void
.end method

.method static synthetic zzci()Ljava/util/Collection;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/config/GservicesValue$zzb;->zzna:Ljava/util/Collection;

    return-object v0
.end method


# virtual methods
.method public final getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 3

    return-object p2
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    return-object p2
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 3

    return-object p2
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;
    .registers 3

    return-object p2
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .registers 3

    return-object p2
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 3

    return-object p2
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    return-object p2
.end method
