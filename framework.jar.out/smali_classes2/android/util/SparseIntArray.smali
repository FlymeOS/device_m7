.class public Landroid/util/SparseIntArray;
.super Ljava/lang/Object;
.source "SparseIntArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mKeys:[I

.field private mSize:I

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-nez p1, :cond_0

    .line 66
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    .line 67
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    .line 72
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/SparseIntArray;->mSize:I

    .line 73
    return-void

    .line 69
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    .line 70
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    goto :goto_0
.end method


# virtual methods
.method public append(II)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "value"    # I

    .prologue
    .line 223
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-gt p1, v0, :cond_0

    .line 224
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 231
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    .line 229
    iget-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    .line 230
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/SparseIntArray;->mSize:I

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/SparseIntArray;->mSize:I

    .line 216
    return-void
.end method

.method public clone()Landroid/util/SparseIntArray;
    .locals 3

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 79
    .local v1, "clone":Landroid/util/SparseIntArray;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/util/SparseIntArray;

    move-object v1, v0

    .line 80
    iget-object v2, p0, Landroid/util/SparseIntArray;->mKeys:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, Landroid/util/SparseIntArray;->mKeys:[I

    .line 81
    iget-object v2, p0, Landroid/util/SparseIntArray;->mValues:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, Landroid/util/SparseIntArray;->mValues:[I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-object v1

    .line 82
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(I)V
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 114
    iget-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 116
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 117
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 119
    :cond_0
    return-void
.end method

.method public get(I)I
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public get(II)I
    .locals 3
    .param p1, "key"    # I
    .param p2, "valueIfKeyNotFound"    # I

    .prologue
    .line 101
    iget-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 103
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 106
    .end local p2    # "valueIfKeyNotFound":I
    :goto_0
    return p2

    .restart local p2    # "valueIfKeyNotFound":I
    :cond_0
    iget-object v1, p0, Landroid/util/SparseIntArray;->mValues:[I

    aget p2, v1, v0

    goto :goto_0
.end method

.method public indexOfKey(I)I
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 192
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    return v0
.end method

.method public indexOfValue(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    if-ge v0, v1, :cond_1

    .line 205
    iget-object v1, p0, Landroid/util/SparseIntArray;->mValues:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 208
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 204
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 168
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(II)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "value"    # I

    .prologue
    .line 136
    iget-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 138
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 139
    iget-object v1, p0, Landroid/util/SparseIntArray;->mValues:[I

    aput p2, v1, v0

    .line 147
    :goto_0
    return-void

    .line 141
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 143
    iget-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    .line 144
    iget-object v1, p0, Landroid/util/SparseIntArray;->mValues:[I

    iget v2, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v1, v2, v0, p2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseIntArray;->mValues:[I

    .line 145
    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/SparseIntArray;->mSize:I

    goto :goto_0
.end method

.method public removeAt(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 125
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v3, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 126
    iget-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/SparseIntArray;->mValues:[I

    iget v3, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 127
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/SparseIntArray;->mSize:I

    .line 128
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 240
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 241
    const-string v4, "{}"

    .line 257
    :goto_0
    return-object v4

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/util/SparseIntArray;->mSize:I

    mul-int/lit8 v4, v4, 0x1c

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 245
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Landroid/util/SparseIntArray;->mSize:I

    if-ge v1, v4, :cond_2

    .line 247
    if-lez v1, :cond_1

    .line 248
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 251
    .local v2, "key":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 254
    .local v3, "value":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 256
    .end local v2    # "key":I
    .end local v3    # "value":I
    :cond_2
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public valueAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 183
    iget-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    aget v0, v0, p1

    return v0
.end method
