.class public interface abstract Lcom/itextpdf/text/pdf/security/ExternalSignature;
.super Ljava/lang/Object;
.source "ExternalSignature.java"


# virtual methods
.method public abstract getEncryptionAlgorithm()Ljava/lang/String;
.end method

.method public abstract getHashAlgorithm()Ljava/lang/String;
.end method

.method public abstract sign([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
