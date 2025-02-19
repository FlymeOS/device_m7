.class public Lcom/android/internal/util/BitwiseOutputStream;
.super Ljava/lang/Object;
.source "BitwiseOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    }
.end annotation


# instance fields
.field private mBuf:[B

.field private mEnd:I

.field private mPos:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "startingLength"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    .line 54
    shl-int/lit8 v0, p1, 0x3

    iput v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    .line 56
    return-void
.end method

.method private possExpand(I)V
    .locals 4
    .param p1, "bits"    # I

    .prologue
    const/4 v3, 0x0

    .line 76
    iget v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    if-ge v1, v2, :cond_0

    .line 81
    :goto_0
    return-void

    .line 77
    :cond_0
    iget v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    add-int/2addr v1, p1

    ushr-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 78
    .local v0, "newBuf":[B
    iget-object v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    iget v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    ushr-int/lit8 v2, v2, 0x3

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 79
    iput-object v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    .line 80
    array-length v1, v0

    shl-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    goto :goto_0
.end method


# virtual methods
.method public skip(I)V
    .locals 1
    .param p1, "bits"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/internal/util/BitwiseOutputStream;->possExpand(I)V

    .line 128
    iget v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    .line 129
    return-void
.end method

.method public toByteArray()[B
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 64
    iget v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    ushr-int/lit8 v4, v2, 0x3

    iget v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    and-int/lit8 v2, v2, 0x7

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    add-int v0, v4, v2

    .line 65
    .local v0, "len":I
    new-array v1, v0, [B

    .line 66
    .local v1, "newBuf":[B
    iget-object v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 67
    return-object v1

    .end local v0    # "len":I
    .end local v1    # "newBuf":[B
    :cond_0
    move v2, v3

    .line 64
    goto :goto_0
.end method

.method public write(II)V
    .locals 6
    .param p1, "bits"    # I
    .param p2, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    .line 93
    if-ltz p1, :cond_0

    if-le p1, v5, :cond_1

    .line 94
    :cond_0
    new-instance v2, Lcom/android/internal/util/BitwiseOutputStream$AccessException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "illegal write ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bits)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/util/BitwiseOutputStream$AccessException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/util/BitwiseOutputStream;->possExpand(I)V

    .line 97
    const/4 v2, -0x1

    rsub-int/lit8 v3, p1, 0x20

    ushr-int/2addr v2, v3

    and-int/2addr p2, v2

    .line 98
    iget v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    ushr-int/lit8 v0, v2, 0x3

    .line 99
    .local v0, "index":I
    iget v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    and-int/lit8 v2, v2, 0x7

    rsub-int/lit8 v2, v2, 0x10

    sub-int v1, v2, p1

    .line 100
    .local v1, "offset":I
    shl-int/2addr p2, v1

    .line 101
    iget v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    .line 102
    iget-object v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    aget-byte v3, v2, v0

    ushr-int/lit8 v4, p2, 0x8

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 103
    if-ge v1, v5, :cond_2

    iget-object v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v4, v2, v3

    and-int/lit16 v5, p2, 0xff

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 104
    :cond_2
    return-void
.end method

.method public writeByteArray(I[B)V
    .locals 4
    .param p1, "bits"    # I
    .param p2, "arr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 114
    const/16 v2, 0x8

    shl-int/lit8 v3, v0, 0x3

    sub-int v3, p1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 115
    .local v1, "increment":I
    if-lez v1, :cond_0

    .line 116
    aget-byte v2, p2, v0

    rsub-int/lit8 v3, v1, 0x8

    ushr-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 113
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    .end local v1    # "increment":I
    :cond_1
    return-void
.end method
