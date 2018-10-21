.class public interface abstract Lcom/google/android/gms/common/data/TextFilterable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/data/TextFilterable$StringFilter;
    }
.end annotation


# static fields
.field public static final CONTAINS:Lcom/google/android/gms/common/data/TextFilterable$StringFilter;

.field public static final STARTS_WITH:Lcom/google/android/gms/common/data/TextFilterable$StringFilter;

.field public static final WORD_STARTS_WITH:Lcom/google/android/gms/common/data/TextFilterable$StringFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/data/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/data/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/data/TextFilterable;->CONTAINS:Lcom/google/android/gms/common/data/TextFilterable$StringFilter;

    new-instance v0, Lcom/google/android/gms/common/data/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/common/data/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/data/TextFilterable;->STARTS_WITH:Lcom/google/android/gms/common/data/TextFilterable$StringFilter;

    new-instance v0, Lcom/google/android/gms/common/data/zze;

    invoke-direct {v0}, Lcom/google/android/gms/common/data/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/data/TextFilterable;->WORD_STARTS_WITH:Lcom/google/android/gms/common/data/TextFilterable$StringFilter;

    return-void
.end method


# virtual methods
.method public abstract setFilterTerm(Landroid/content/Context;Lcom/google/android/gms/common/data/TextFilterable$StringFilter;Ljava/lang/String;)V
.end method

.method public abstract setFilterTerm(Landroid/content/Context;Ljava/lang/String;)V
.end method
