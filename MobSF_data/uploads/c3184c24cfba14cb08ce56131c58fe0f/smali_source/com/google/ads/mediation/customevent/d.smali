.class public final Lcom/google/ads/mediation/customevent/d;
.super Lcom/google/ads/mediation/e;


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Lcom/google/ads/mediation/e$b;
        a = "label"
        b = true
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Lcom/google/ads/mediation/e$b;
        a = "class_name"
        b = true
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Lcom/google/ads/mediation/e$b;
        a = "parameter"
        b = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/ads/mediation/e;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/mediation/customevent/d;->c:Ljava/lang/String;

    return-void
.end method
