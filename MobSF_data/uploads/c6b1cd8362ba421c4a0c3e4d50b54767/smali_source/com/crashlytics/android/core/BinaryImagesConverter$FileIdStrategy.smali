.class interface abstract Lcom/crashlytics/android/core/BinaryImagesConverter$FileIdStrategy;
.super Ljava/lang/Object;
.source "BinaryImagesConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/BinaryImagesConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "FileIdStrategy"
.end annotation


# virtual methods
.method public abstract createId(Ljava/io/File;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
