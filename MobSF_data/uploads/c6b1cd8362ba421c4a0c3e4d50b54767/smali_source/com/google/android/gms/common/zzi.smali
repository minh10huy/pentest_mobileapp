.class final Lcom/google/android/gms/common/zzi;
.super Lcom/google/android/gms/common/zzg;


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final zzbn:Lcom/google/android/gms/common/GoogleCertificates$CertData;

.field private final zzbo:Z

.field private final zzbp:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/GoogleCertificates$CertData;ZZ)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v0}, Lcom/google/android/gms/common/zzg;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/google/android/gms/common/zzi;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/zzi;->zzbn:Lcom/google/android/gms/common/GoogleCertificates$CertData;

    iput-boolean p3, p0, Lcom/google/android/gms/common/zzi;->zzbo:Z

    iput-boolean p4, p0, Lcom/google/android/gms/common/zzi;->zzbp:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/GoogleCertificates$CertData;ZZLcom/google/android/gms/common/zzh;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/zzi;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/GoogleCertificates$CertData;ZZ)V

    return-void
.end method


# virtual methods
.method final getErrorMessage()Ljava/lang/String;
    .registers 7

    iget-boolean v0, p0, Lcom/google/android/gms/common/zzi;->zzbp:Z

    if-eqz v0, :cond_7

    const-string v0, "debug cert rejected"

    goto :goto_9

    :cond_7
    const-string v0, "not whitelisted"

    :goto_9
    iget-object v1, p0, Lcom/google/android/gms/common/zzi;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/zzi;->zzbn:Lcom/google/android/gms/common/GoogleCertificates$CertData;

    const-string v3, "SHA-1"

    invoke-static {v3}, Lcom/google/android/gms/common/util/AndroidUtilsLight;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/common/GoogleCertificates$CertData;->getBytes()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/util/Hex;->bytesToStringLowercase([B)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/common/zzi;->zzbo:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2c

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": pkg="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sha1="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", atk="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", ver=12451009.false"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
