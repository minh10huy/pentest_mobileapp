.class final Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zza;
.super Landroid/graphics/drawable/Drawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zza"
.end annotation


# static fields
.field private static final zzqj:Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zza;

.field private static final zzqk:Lcom/google/android/gms/common/images/internal/zzb;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zza;->zzqj:Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zza;

    new-instance v0, Lcom/google/android/gms/common/images/internal/zzb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/images/internal/zzb;-><init>(Lcom/google/android/gms/common/images/internal/zza;)V

    sput-object v0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zza;->zzqk:Lcom/google/android/gms/common/images/internal/zzb;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method static synthetic zzcp()Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zza;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zza;->zzqj:Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zza;

    return-object v0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    sget-object v0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zza;->zzqk:Lcom/google/android/gms/common/images/internal/zzb;

    return-object v0
.end method

.method public final getOpacity()I
    .registers 2

    const/4 v0, -0x2

    return v0
.end method

.method public final setAlpha(I)V
    .registers 2

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method
