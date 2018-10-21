.class public interface abstract Lcom/itextpdf/text/pdf/interfaces/PdfPageActions;
.super Ljava/lang/Object;
.source "PdfPageActions.java"


# virtual methods
.method public abstract setDuration(I)V
.end method

.method public abstract setPageAction(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfAction;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation
.end method

.method public abstract setTransition(Lcom/itextpdf/text/pdf/PdfTransition;)V
.end method
