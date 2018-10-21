.class final Lcom/google/android/gms/common/util/IOUtils$zza;
.super Ljava/io/ByteArrayOutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/util/IOUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zza"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/util/zzb;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/util/IOUtils$zza;-><init>()V

    return-void
.end method


# virtual methods
.method final zza([BI)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/util/IOUtils$zza;->buf:[B

    iget v1, p0, Lcom/google/android/gms/common/util/IOUtils$zza;->count:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
