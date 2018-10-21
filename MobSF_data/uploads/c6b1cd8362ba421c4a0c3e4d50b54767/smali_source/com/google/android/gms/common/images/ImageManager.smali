.class public final Lcom/google/android/gms/common/images/ImageManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/images/ImageManager$zza;,
        Lcom/google/android/gms/common/images/ImageManager$zzd;,
        Lcom/google/android/gms/common/images/ImageManager$zze;,
        Lcom/google/android/gms/common/images/ImageManager$zzb;,
        Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;,
        Lcom/google/android/gms/common/images/ImageManager$zzc;,
        Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;
    }
.end annotation


# static fields
.field public static final PRIORITY_HIGH:I = 0x3

.field public static final PRIORITY_LOW:I = 0x1

.field public static final PRIORITY_MEDIUM:I = 0x2

.field private static final zzov:Ljava/lang/Object;

.field private static zzow:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static zzox:Lcom/google/android/gms/common/images/ImageManager;

.field private static zzoy:Lcom/google/android/gms/common/images/ImageManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final zzoz:Ljava/util/concurrent/ExecutorService;

.field private final zzpa:Lcom/google/android/gms/common/images/ImageManager$zza;

.field private final zzpb:Lcom/google/android/gms/common/images/internal/PostProcessedResourceCache;

.field private final zzpc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/images/ImageRequest;",
            "Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final zzpd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final zzpe:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->zzov:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->zzow:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x4

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->zzoz:Ljava/util/concurrent/ExecutorService;

    if-eqz p2, :cond_33

    new-instance p1, Lcom/google/android/gms/common/images/ImageManager$zza;

    iget-object p2, p0, Lcom/google/android/gms/common/images/ImageManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/images/ImageManager$zza;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->zzpa:Lcom/google/android/gms/common/images/ImageManager$zza;

    iget-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/google/android/gms/common/images/ImageManager$zzd;

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->zzpa:Lcom/google/android/gms/common/images/ImageManager$zza;

    invoke-direct {p2, v0}, Lcom/google/android/gms/common/images/ImageManager$zzd;-><init>(Lcom/google/android/gms/common/images/ImageManager$zza;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_36

    :cond_33
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->zzpa:Lcom/google/android/gms/common/images/ImageManager$zza;

    :goto_36
    new-instance p1, Lcom/google/android/gms/common/images/internal/PostProcessedResourceCache;

    invoke-direct {p1}, Lcom/google/android/gms/common/images/internal/PostProcessedResourceCache;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->zzpb:Lcom/google/android/gms/common/images/internal/PostProcessedResourceCache;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->zzpc:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->zzpd:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->zzpe:Ljava/util/Map;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/gms/common/images/ImageManager;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->create(Landroid/content/Context;Z)Lcom/google/android/gms/common/images/ImageManager;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Z)Lcom/google/android/gms/common/images/ImageManager;
    .registers 3

    if-eqz p1, :cond_11

    sget-object p1, Lcom/google/android/gms/common/images/ImageManager;->zzoy:Lcom/google/android/gms/common/images/ImageManager;

    if-nez p1, :cond_e

    new-instance p1, Lcom/google/android/gms/common/images/ImageManager;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/common/images/ImageManager;-><init>(Landroid/content/Context;Z)V

    sput-object p1, Lcom/google/android/gms/common/images/ImageManager;->zzoy:Lcom/google/android/gms/common/images/ImageManager;

    :cond_e
    sget-object p0, Lcom/google/android/gms/common/images/ImageManager;->zzoy:Lcom/google/android/gms/common/images/ImageManager;

    return-object p0

    :cond_11
    sget-object p1, Lcom/google/android/gms/common/images/ImageManager;->zzox:Lcom/google/android/gms/common/images/ImageManager;

    if-nez p1, :cond_1d

    new-instance p1, Lcom/google/android/gms/common/images/ImageManager;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/common/images/ImageManager;-><init>(Landroid/content/Context;Z)V

    sput-object p1, Lcom/google/android/gms/common/images/ImageManager;->zzox:Lcom/google/android/gms/common/images/ImageManager;

    :cond_1d
    sget-object p0, Lcom/google/android/gms/common/images/ImageManager;->zzox:Lcom/google/android/gms/common/images/ImageManager;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/ImageRequest$zza;)Landroid/graphics/Bitmap;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/images/ImageManager;->zza(Lcom/google/android/gms/common/images/ImageRequest$zza;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/common/images/ImageRequest$zza;)Landroid/graphics/Bitmap;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->zzpa:Lcom/google/android/gms/common/images/ImageManager$zza;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->zzpa:Lcom/google/android/gms/common/images/ImageManager$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/images/ImageManager$zza;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->zzpc:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/internal/PostProcessedResourceCache;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->zzpb:Lcom/google/android/gms/common/images/internal/PostProcessedResourceCache;

    return-object p0
.end method

.method static synthetic zzcm()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->zzov:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzcn()Ljava/util/HashSet;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->zzow:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->zzpe:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->zzpd:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->zzoz:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/common/images/ImageManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/ImageManager$zza;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->zzpa:Lcom/google/android/gms/common/images/ImageManager$zza;

    return-object p0
.end method


# virtual methods
.method public final loadImage(Landroid/widget/ImageView;I)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/images/ImageRequest$ImageViewImageRequest;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/ImageRequest$ImageViewImageRequest;-><init>(Landroid/widget/ImageView;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->loadImage(Lcom/google/android/gms/common/images/ImageRequest;)V

    return-void
.end method

.method public final loadImage(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/images/ImageRequest$ImageViewImageRequest;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/ImageRequest$ImageViewImageRequest;-><init>(Landroid/widget/ImageView;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->loadImage(Lcom/google/android/gms/common/images/ImageRequest;)V

    return-void
.end method

.method public final loadImage(Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/common/images/ImageRequest$ImageViewImageRequest;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/ImageRequest$ImageViewImageRequest;-><init>(Landroid/widget/ImageView;Landroid/net/Uri;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/common/images/ImageRequest;->setNoDataPlaceholder(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->loadImage(Lcom/google/android/gms/common/images/ImageRequest;)V

    return-void
.end method

.method public final loadImage(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/images/ImageRequest$ListenerImageRequest;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/ImageRequest$ListenerImageRequest;-><init>(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->loadImage(Lcom/google/android/gms/common/images/ImageRequest;)V

    return-void
.end method

.method public final loadImage(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;I)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/common/images/ImageRequest$ListenerImageRequest;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/ImageRequest$ListenerImageRequest;-><init>(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/common/images/ImageRequest;->setNoDataPlaceholder(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->loadImage(Lcom/google/android/gms/common/images/ImageRequest;)V

    return-void
.end method

.method public final loadImage(Lcom/google/android/gms/common/images/ImageRequest;)V
    .registers 3

    const-string v0, "ImageManager.loadImage() must be called in the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Asserts;->checkMainThread(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/common/images/ImageManager$zzc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/images/ImageManager$zzc;-><init>(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/ImageRequest;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
