.class final Lcom/google/android/gms/common/config/zzf;
.super Lcom/google/android/gms/common/config/GservicesValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/config/GservicesValue<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/config/GservicesValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic retrieve(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Lcom/google/android/gms/common/config/GservicesValue;->zzch()Lcom/google/android/gms/common/config/GservicesValue$zza;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/config/zzf;->mKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/common/config/zzf;->mDefaultValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/common/config/GservicesValue$zza;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic retrieveFromDirectBootCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    check-cast p3, Ljava/lang/String;

    const-string v0, "gservices-direboot-cache"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
