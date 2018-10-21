.class public Lcom/google/android/gms/common/internal/GmsServiceEndpoint;
.super Ljava/lang/Object;


# instance fields
.field private final mPackageName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final zztq:I

.field private final zzue:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final zzuf:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GmsServiceEndpoint;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/GmsServiceEndpoint;->zzue:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/common/internal/GmsServiceEndpoint;->zzuf:Z

    iput p4, p0, Lcom/google/android/gms/common/internal/GmsServiceEndpoint;->zztq:I

    return-void
.end method


# virtual methods
.method final getBindFlags()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/internal/GmsServiceEndpoint;->zztq:I

    return v0
.end method

.method final getPackageName()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/GmsServiceEndpoint;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method final zzcw()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/GmsServiceEndpoint;->zzue:Ljava/lang/String;

    return-object v0
.end method
