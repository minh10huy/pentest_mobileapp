.class public final Lcom/google/android/gms/common/util/GmsVersionParser;
.super Ljava/lang/Object;


# static fields
.field public static final UNKNOWN:I = -0x1

.field private static zzzy:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseBuildMajorVersion(I)I
    .registers 2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    return v0

    :cond_4
    const v0, 0x186a0

    div-int/2addr p0, v0

    return p0
.end method

.method public static parseBuildNumber(Ljava/lang/String;)J
    .registers 5

    const-wide/16 v0, -0x1

    if-nez p0, :cond_5

    return-wide v0

    :cond_5
    invoke-static {}, Lcom/google/android/gms/common/util/GmsVersionParser;->zzdc()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    :try_start_18
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1c} :catch_1d

    return-wide v2

    :catch_1d
    :cond_1d
    return-wide v0
.end method

.method public static parseBuildType(Ljava/lang/String;)I
    .registers 5

    invoke-static {p0}, Lcom/google/android/gms/common/util/GmsVersionParser;->parseVariantCode(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_c

    const/4 p0, -0x1

    return p0

    :cond_c
    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public static parseBuildVersion(I)I
    .registers 2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    return v0

    :cond_4
    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public static parseScreenDensity(Ljava/lang/String;)I
    .registers 5

    invoke-static {p0}, Lcom/google/android/gms/common/util/GmsVersionParser;->parseVariantCode(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_c

    const/4 p0, -0x1

    return p0

    :cond_c
    const-wide/16 v2, 0x64

    rem-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public static parseTargetArchitecture(Ljava/lang/String;)I
    .registers 5

    invoke-static {p0}, Lcom/google/android/gms/common/util/GmsVersionParser;->parseVariantCode(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_c

    const/4 p0, -0x1

    return p0

    :cond_c
    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    rem-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public static parseVariantCode(Ljava/lang/String;)J
    .registers 5

    const-wide/16 v0, -0x1

    if-nez p0, :cond_5

    return-wide v0

    :cond_5
    invoke-static {}, Lcom/google/android/gms/common/util/GmsVersionParser;->zzdc()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    :try_start_18
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1c} :catch_1d

    return-wide v2

    :catch_1d
    :cond_1d
    return-wide v0
.end method

.method private static zzdc()Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/util/GmsVersionParser;->zzzy:Ljava/util/regex/Pattern;

    if-nez v0, :cond_c

    const-string v0, "\\((?:eng-)?(\\d+)-(.+?)[-)$]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/GmsVersionParser;->zzzy:Ljava/util/regex/Pattern;

    :cond_c
    sget-object v0, Lcom/google/android/gms/common/util/GmsVersionParser;->zzzy:Ljava/util/regex/Pattern;

    return-object v0
.end method
