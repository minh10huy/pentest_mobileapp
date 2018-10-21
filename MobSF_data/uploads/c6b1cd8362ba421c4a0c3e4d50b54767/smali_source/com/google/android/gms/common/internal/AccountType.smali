.class public final Lcom/google/android/gms/common/internal/AccountType;
.super Ljava/lang/Object;


# static fields
.field public static final ACCEPTABLE_ACCOUNT_TYPES:[Ljava/lang/String;

.field public static final GOOGLE:Ljava/lang/String; = "com.google"

.field public static final SIDEWINDER:Ljava/lang/String; = "cn.google"

.field public static final WORK:Ljava/lang/String; = "com.google.work"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "com.google"

    const-string v1, "com.google.work"

    const-string v2, "cn.google"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/AccountType;->ACCEPTABLE_ACCOUNT_TYPES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
