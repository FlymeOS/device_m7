.class Lcom/htc/lib1/panoviewer/SEGLSurfaceView$LogWriter;
.super Ljava/io/Writer;
.source "SEGLSurfaceView.java"


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1410
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 1437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method private flushBuilder()V
    .locals 3

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1435
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 1412
    invoke-direct {p0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$LogWriter;->flushBuilder()V

    .line 1413
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 1416
    invoke-direct {p0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$LogWriter;->flushBuilder()V

    .line 1417
    return-void
.end method

.method public write([CII)V
    .locals 3

    .prologue
    .line 1420
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 1421
    add-int v1, p2, v0

    aget-char v1, p1, v1

    .line 1422
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 1423
    invoke-direct {p0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$LogWriter;->flushBuilder()V

    .line 1420
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1426
    :cond_0
    iget-object v2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1429
    :cond_1
    return-void
.end method
