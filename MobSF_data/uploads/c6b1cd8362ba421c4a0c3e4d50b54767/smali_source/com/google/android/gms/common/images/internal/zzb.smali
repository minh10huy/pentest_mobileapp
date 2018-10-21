.class final Lcom/google/android/gms/common/images/internal/zzb;
.super Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/images/internal/zza;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/images/internal/zzb;-><init>()V

    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zza;->zzcp()Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zza;

    move-result-object v0

    return-object v0
.end method
