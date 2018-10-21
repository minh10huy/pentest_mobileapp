.class public final Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Collector"
.end annotation


# instance fields
.field private zzvx:Z

.field private zzvy:Z

.field private zzvz:I

.field private zzwa:Ljava/lang/StringBuilder;

.field private final synthetic zzwb:Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->zzwb:Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->zzwa:Ljava/lang/StringBuilder;

    return-void
.end method

.method private final append(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->zzvx:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iput-boolean v1, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->zzvx:Z

    iget-object v0, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->zzwa:Ljava/lang/StringBuilder;

    const-string v1, ","

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    :cond_f
    iget-boolean v0, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->zzvy:Z

    if-eqz v0, :cond_1a

    iput-boolean v1, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->zzvy:Z

    iget-object v0, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->zzwa:Ljava/lang/StringBuilder;

    const-string v1, "/"

    goto :goto_b

    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->zzwa:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final addPiece(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->append(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->zzvy:Z

    return-void
.end method

.method public final beginSubCollection(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->append(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->zzwa:Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->zzvz:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->zzvz:I

    return-void
.end method

.method public final endSubCollection()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->zzwa:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->zzvz:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->zzvz:I

    iget v0, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->zzvz:I

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->zzwb:Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;

    iget-object v1, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->zzwa:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->addField(Ljava/lang/String;)Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;

    iget-object v0, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->zzwa:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iput-boolean v1, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->zzvx:Z

    iput-boolean v1, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->zzvy:Z

    return-void

    :cond_27
    iput-boolean v1, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->zzvx:Z

    return-void
.end method

.method public final finishPiece(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->append(Ljava/lang/String;)V

    iget p1, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->zzvz:I

    if-nez p1, :cond_19

    iget-object p1, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->zzwb:Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;

    iget-object v0, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->zzwa:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->addField(Ljava/lang/String;)Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;

    iget-object p1, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->zzwa:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    :cond_19
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;->zzvx:Z

    return-void
.end method
