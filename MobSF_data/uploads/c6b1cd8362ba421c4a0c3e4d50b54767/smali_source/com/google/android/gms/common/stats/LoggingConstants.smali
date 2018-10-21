.class public final Lcom/google/android/gms/common/stats/LoggingConstants;
.super Ljava/lang/Object;


# static fields
.field public static final ALARM_LOG_FILE_NAME:Ljava/lang/String; = ".alarms"

.field public static final CONNECTION_LOG_FILE_NAME:Ljava/lang/String; = ".service_connections"

.field public static final EXTRA_LOG_EVENT:Ljava/lang/String; = "com.google.android.gms.common.stats.EXTRA_LOG_EVENT"

.field public static final EXTRA_WAKE_LOCK_KEY:Ljava/lang/String; = "WAKE_LOCK_KEY"

.field public static IGNORE_INTRA_PROCESS:I = 0x10

.field public static LOG_CLOSE_EVENTS:I = 0x4

.field public static final LOG_FILE_PREFIX:Ljava/lang/String; = "stats"

.field public static LOG_LEVEL_OFF:I = 0x0

.field public static LOG_MEM_INFO:I = 0x20

.field public static LOG_OPEN_EVENTS:I = 0x2

.field public static LOG_TOO_LONG_EVENTS:I = 0x1

.field public static LOG_VERBOSE:I = 0x8

.field public static LOG_WAKEFUL_ALARMS:I = 0x1

.field public static final STATS_SERVICE_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final WAKE_LOCK_LOG_FILE_NAME:Ljava/lang/String; = ".wakelocks"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.common.stats.GmsCoreStatsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/stats/LoggingConstants;->STATS_SERVICE_COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
