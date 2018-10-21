.class final Lcom/google/android/gms/common/config/zzd;
.super Lcom/google/android/gms/common/config/GservicesValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/config/GservicesValue<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Double;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/config/GservicesValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;
    .registers 5

    const-string v0, "gservices-direboot-cache"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_17

    :try_start_e
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    :cond_17
    return-object p2
.end method


# virtual methods
.method protected final synthetic retrieve(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Lcom/google/android/gms/common/config/GservicesValue;->zzch()Lcom/google/android/gms/common/config/GservicesValue$zza;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/config/zzd;->mKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/common/config/zzd;->mDefaultValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/common/config/GservicesValue$zza;->zza(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic retrieveFromDirectBootCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p3, Ljava/lang/Double;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/common/config/zzd;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
