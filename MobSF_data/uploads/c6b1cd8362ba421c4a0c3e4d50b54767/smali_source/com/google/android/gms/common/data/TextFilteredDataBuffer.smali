.class public final Lcom/google/android/gms/common/data/TextFilteredDataBuffer;
.super Lcom/google/android/gms/common/data/FilteredDataBuffer;

# interfaces
.implements Lcom/google/android/gms/common/data/TextFilterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/data/FilteredDataBuffer<",
        "TT;>;",
        "Lcom/google/android/gms/common/data/TextFilterable;"
    }
.end annotation


# instance fields
.field private final zzob:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzoc:Lcom/google/android/gms/common/data/AbstractDataBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/data/AbstractDataBuffer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final zzoo:Ljava/lang/String;

.field private zzop:Ljava/lang/String;

.field private zzoq:Lcom/google/android/gms/common/data/TextFilterable$StringFilter;

.field private zzor:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/AbstractDataBuffer;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/AbstractDataBuffer<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/FilteredDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataBuffer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->zzob:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->zzoc:Lcom/google/android/gms/common/data/AbstractDataBuffer;

    iput-object p2, p0, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->zzoo:Ljava/lang/String;

    return-void
.end method

.method private final zzh(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->zzor:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_26

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isIdentifierIgnorable(C)Z

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final computeRealPosition(I)I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->zzop:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return p1

    :cond_9
    if-ltz p1, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_14

    goto :goto_21

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_21
    :goto_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x35

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Position "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is out of bounds for this buffer"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->zzop:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->mDataBuffer:Lcom/google/android/gms/common/data/DataBuffer;

    invoke-interface {v0}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    move-result v0

    return v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final setFilterTerm(Landroid/content/Context;Lcom/google/android/gms/common/data/TextFilterable$StringFilter;Ljava/lang/String;)V
    .registers 9

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->zzop:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->zzoq:Lcom/google/android/gms/common/data/TextFilterable$StringFilter;

    iget-object p2, p0, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->zzop:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_70

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p1, p0, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->zzor:Ljava/util/Locale;

    iget-object p1, p0, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->zzop:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->zzh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->zzop:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->zzoc:Lcom/google/android/gms/common/data/AbstractDataBuffer;

    iget-object p1, p1, Lcom/google/android/gms/common/data/AbstractDataBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget-object p2, p0, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->zzoo:Ljava/lang/String;

    iget-object p3, p0, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->zzoc:Lcom/google/android/gms/common/data/AbstractDataBuffer;

    instance-of p3, p3, Lcom/google/android/gms/common/data/EntityBuffer;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->zzoc:Lcom/google/android/gms/common/data/AbstractDataBuffer;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->getCount()I

    move-result v1

    :goto_39
    if-ge v0, v1, :cond_6f

    if-eqz p3, :cond_46

    iget-object v2, p0, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->zzoc:Lcom/google/android/gms/common/data/AbstractDataBuffer;

    check-cast v2, Lcom/google/android/gms/common/data/EntityBuffer;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/data/EntityBuffer;->zzi(I)I

    move-result v2

    goto :goto_47

    :cond_46
    move v2, v0

    :goto_47
    invoke-virtual {p1, v2}, Lcom/google/android/gms/common/data/DataHolder;->getWindowIndex(I)I

    move-result v3

    invoke-virtual {p1, p2, v2, v3}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6c

    iget-object v3, p0, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->zzoq:Lcom/google/android/gms/common/data/TextFilterable$StringFilter;

    invoke-direct {p0, v2}, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->zzh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->zzop:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Lcom/google/android/gms/common/data/TextFilterable$StringFilter;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6c

    iget-object v2, p0, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_6f
    return-void

    :cond_70
    iget-object p1, p0, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final setFilterTerm(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->CONTAINS:Lcom/google/android/gms/common/data/TextFilterable$StringFilter;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/data/TextFilteredDataBuffer;->setFilterTerm(Landroid/content/Context;Lcom/google/android/gms/common/data/TextFilterable$StringFilter;Ljava/lang/String;)V

    return-void
.end method
