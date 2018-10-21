.class public interface abstract Lcom/itextpdf/text/pdf/interfaces/PdfEncryptionSettings;
.super Ljava/lang/Object;
.source "PdfEncryptionSettings.java"


# virtual methods
.method public abstract setEncryption([B[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation
.end method

.method public abstract setEncryption([Ljava/security/cert/Certificate;[II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation
.end method
