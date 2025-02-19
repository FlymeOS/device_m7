.class public Lcom/google/android/mms/pdu/QuotedPrintable;
.super Ljava/lang/Object;
.source "QuotedPrintable.java"


# static fields
.field private static ESCAPE_CHAR:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0x3d

    sput-byte v0, Lcom/google/android/mms/pdu/QuotedPrintable;->ESCAPE_CHAR:B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decodeQuotedPrintable([B)[B
    .locals 10
    .param p0, "bytes"    # [B

    .prologue
    const/4 v9, -0x1

    const/4 v5, 0x0

    .line 41
    if-nez p0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-object v5

    .line 44
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 45
    .local v1, "buffer":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, p0

    if-ge v3, v7, :cond_4

    .line 46
    aget-byte v0, p0, v3

    .line 47
    .local v0, "b":I
    sget-byte v7, Lcom/google/android/mms/pdu/QuotedPrintable;->ESCAPE_CHAR:B

    if-ne v0, v7, :cond_3

    .line 49
    const/16 v7, 0xd

    add-int/lit8 v8, v3, 0x1

    :try_start_0
    aget-byte v8, p0, v8

    int-to-char v8, v8

    if-ne v7, v8, :cond_2

    const/16 v7, 0xa

    add-int/lit8 v8, v3, 0x2

    aget-byte v8, p0, v8

    int-to-char v8, v8

    if-ne v7, v8, :cond_2

    .line 51
    add-int/lit8 v3, v3, 0x2

    .line 45
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 54
    :cond_2
    add-int/lit8 v3, v3, 0x1

    aget-byte v7, p0, v3

    int-to-char v7, v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 55
    .local v6, "u":I
    add-int/lit8 v3, v3, 0x1

    aget-byte v7, p0, v3

    int-to-char v7, v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 56
    .local v4, "l":I
    if-eq v6, v9, :cond_0

    if-eq v4, v9, :cond_0

    .line 59
    shl-int/lit8 v7, v6, 0x4

    add-int/2addr v7, v4

    int-to-char v7, v7

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 60
    .end local v4    # "l":I
    .end local v6    # "u":I
    :catch_0
    move-exception v2

    .line 61
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0

    .line 64
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 68
    .end local v0    # "b":I
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 69
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    new-array v5, v7, [B

    .line 70
    .local v5, "mData":[B
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 72
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 73
    :catch_1
    move-exception v2

    .line 74
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
