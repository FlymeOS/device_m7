.class public Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;
.super Ljava/lang/Object;
.source "KddiJudgeSmsType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;,
        Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;,
        Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;
    }
.end annotation


# static fields
.field private static final KDDI_CUT_WORD:Ljava/lang/String; = ","

.field private static final KDDI_NEW_SMS_TYPE:[B

.field private static final KDDI_SMS_ARRAY_COUNT:I = 0x2

.field private static final KDDI_TAG:Ljava/lang/String; = "KDDI_SMS"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mResourceId:I

.field protected mSmsTypeRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;->KDDI_NEW_SMS_TYPE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x70t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;->mResourceId:I

    .line 44
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;->mContext:Landroid/content/Context;

    .line 45
    iput p2, p0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;->mResourceId:I

    .line 47
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;->kddiReadSmsTypeTable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    const-string v0, "KDDI_SMS"

    const-string v1, "KDDIreadSmsTypeTable() failed to read target resource"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    return-void
.end method

.method private kddiAsByteArray(Ljava/lang/String;I)[B
    .locals 5
    .param p1, "hex"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    const/4 v4, 0x2

    .line 385
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 390
    :cond_0
    new-array v0, p2, [B

    .line 393
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 395
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x1

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    :cond_1
    return-object v0
.end method

.method private kddiCheckNullWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 370
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 371
    const/4 p1, 0x0

    .line 373
    :cond_0
    return-object p1
.end method

.method private kddiSetRecord([Ljava/lang/String;)Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;
    .locals 18
    .param p1, "splitList"    # [Ljava/lang/String;

    .prologue
    .line 284
    const-string v4, ""

    .line 285
    .local v4, "sendAction":Ljava/lang/String;
    const-string v5, ""

    .line 286
    .local v5, "sendPermission":Ljava/lang/String;
    const/4 v6, 0x0

    .line 287
    .local v6, "responseType":I
    const/4 v7, 0x0

    .line 288
    .local v7, "smsType":[B
    const/4 v8, 0x0

    .line 289
    .local v8, "addCondition":B
    const/4 v11, 0x0

    .line 290
    .local v11, "conditionOffset":I
    const/4 v10, 0x0

    .line 291
    .local v10, "conditionLen":I
    const/4 v9, 0x0

    .line 294
    .local v9, "conditionFree":[B
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v12, v3, :cond_1

    .line 295
    packed-switch v12, :pswitch_data_0

    .line 294
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 297
    :pswitch_0
    aget-object v3, p1, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;->kddiCheckNullWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 298
    goto :goto_1

    .line 300
    :pswitch_1
    aget-object v3, p1, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;->kddiCheckNullWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 301
    goto :goto_1

    .line 303
    :pswitch_2
    aget-object v3, p1, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 304
    goto :goto_1

    .line 306
    :pswitch_3
    aget-object v3, p1, v12

    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v3, v1}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;->kddiAsByteArray(Ljava/lang/String;I)[B

    move-result-object v7

    .line 307
    goto :goto_1

    .line 310
    :pswitch_4
    const-string v16, ""

    .line 311
    .local v16, "str":Ljava/lang/String;
    aget-object v16, p1, v12

    .line 312
    const/4 v3, 0x0

    const/16 v17, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v17, "0x"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 315
    :cond_0
    const/16 v3, 0x10

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v8, v3

    .line 316
    goto :goto_1

    .line 323
    .end local v16    # "str":Ljava/lang/String;
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;-><init>(Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;Ljava/lang/String;Ljava/lang/String;I[BB)V

    .line 325
    .local v2, "smsTypeRecord":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mAddConditionList:Ljava/util/ArrayList;

    .line 328
    if-eqz v8, :cond_3

    .line 331
    const/4 v3, -0x1

    if-ne v8, v3, :cond_2

    .line 332
    const/4 v14, 0x2

    .line 339
    .local v14, "loopCnt":I
    :goto_2
    const/4 v12, 0x5

    .line 340
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_3
    if-ge v13, v14, :cond_3

    .line 342
    aget-object v3, p1, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 343
    add-int/lit8 v12, v12, 0x1

    .line 346
    aget-object v3, p1, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 347
    add-int/lit8 v12, v12, 0x1

    .line 350
    aget-object v3, p1, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;->kddiAsByteArray(Ljava/lang/String;I)[B

    move-result-object v9

    .line 351
    add-int/lit8 v12, v12, 0x1

    .line 354
    new-instance v15, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v11, v10, v9}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;-><init>(Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;II[B)V

    .line 356
    .local v15, "smsTypeAddCondition":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    iget-object v3, v2, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mAddConditionList:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 335
    .end local v13    # "j":I
    .end local v14    # "loopCnt":I
    .end local v15    # "smsTypeAddCondition":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    :cond_2
    move v14, v8

    .restart local v14    # "loopCnt":I
    goto :goto_2

    .line 360
    .end local v14    # "loopCnt":I
    :cond_3
    return-object v2

    .line 295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public kddiJudgeType([B)Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    .locals 1
    .param p1, "userdata"    # [B

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;->kddiJudgeType([BZ)Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    move-result-object v0

    return-object v0
.end method

.method public kddiJudgeType([BZ)Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    .locals 7
    .param p1, "userdata"    # [B
    .param p2, "skipEsnCheck"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 67
    const/4 v2, 0x0

    .line 70
    .local v2, "offset":I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;->mSmsTypeRecordList:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;->kddiReadSmsTypeTable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    new-instance v0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;-><init>(Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;Ljava/lang/String;Ljava/lang/String;I)V

    .local v0, "accessory":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    move-object v1, v0

    .line 87
    .end local v0    # "accessory":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    .local v1, "accessory":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 79
    .end local v1    # "accessory":Ljava/lang/Object;
    :cond_0
    if-nez p2, :cond_1

    array-length v3, p1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    .line 80
    sget-object v3, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;->KDDI_NEW_SMS_TYPE:[B

    aget-byte v3, v3, v5

    aget-byte v4, p1, v5

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;->KDDI_NEW_SMS_TYPE:[B

    aget-byte v3, v3, v6

    aget-byte v4, p1, v6

    if-ne v3, v4, :cond_1

    .line 82
    const/4 v2, 0x2

    .line 86
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;->kddiUserdataJudgment([BI)Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    move-result-object v0

    .restart local v0    # "accessory":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    move-object v1, v0

    .line 87
    .restart local v1    # "accessory":Ljava/lang/Object;
    goto :goto_0
.end method

.method protected kddiReadSmsTypeTable()Z
    .locals 14

    .prologue
    .line 208
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v4, "filelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 213
    .local v6, "in":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 215
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 219
    .local v8, "result":Z
    const/4 v3, 0x0

    .line 221
    .local v3, "fileline":I
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;->mResourceId:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 222
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 224
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->ready()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 226
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, "lineStr":Ljava/lang/String;
    const-string v11, "#"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 229
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 v3, v3, 0x1

    .line 231
    const-string v11, "SMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "read sms type> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 255
    .end local v7    # "lineStr":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 256
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/lang/NumberFormatException;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 269
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_2
    return v8

    .line 237
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 239
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;->mSmsTypeRecordList:Ljava/util/ArrayList;

    .line 242
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v3, :cond_2

    .line 244
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 247
    .local v10, "splitStr":[Ljava/lang/String;
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;->kddiSetRecord([Ljava/lang/String;)Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;

    move-result-object v9

    .line 250
    .local v9, "smsTypeRecord":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;->mSmsTypeRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 242
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 253
    .end local v9    # "smsTypeRecord":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;
    .end local v10    # "splitStr":[Ljava/lang/String;
    :cond_2
    const/4 v8, 0x1

    move-object v0, v1

    .line 267
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 257
    .end local v5    # "i":I
    :catch_1
    move-exception v2

    .line 258
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_4
    const-string v11, "KDDI_SMS"

    const-string v12, "readSmsTypeTable() Target resource is not found"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v11, "SMS"

    const-string v12, "readSmsTypeTable() Target resource is not found"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_2

    .line 261
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_2
    move-exception v2

    .line 262
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_5
    const-string v11, "KDDI_SMS"

    const-string v12, "readSmsTypeTable() Reading failure of target resource"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v11, "SMS"

    const-string v12, "readSmsTypeTable() Reading failure of target resource"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_2

    .line 265
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_3
    move-exception v2

    .line 266
    .local v2, "e":Ljava/io/IOException;
    :goto_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 265
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .line 261
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 257
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 255
    :catch_7
    move-exception v2

    goto :goto_1
.end method

.method protected kddiUserdataJudgment([BI)Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    .locals 14
    .param p1, "userdata"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 94
    const/4 v6, 0x0

    .line 95
    .local v6, "listNum":I
    const/4 v5, 0x0

    .line 100
    .local v5, "judgeSms":Z
    array-length v10, p1

    .line 103
    .local v10, "userdataLen":I
    :goto_0
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;->mSmsTypeRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_7

    .line 105
    move/from16 v8, p2

    .line 107
    .local v8, "pos":I
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;->mSmsTypeRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;

    .line 111
    .local v9, "smsTypeRecord":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;
    iget-object v11, v9, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mSmsType:[B

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    iget-object v11, v9, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mSmsType:[B

    const/4 v12, 0x1

    aget-byte v11, v11, v12

    const/4 v12, -0x1

    if-eq v11, v12, :cond_3

    .line 113
    :cond_0
    sub-int v11, v10, v8

    const/4 v12, 0x2

    if-lt v11, v12, :cond_1

    .line 114
    aget-byte v11, p1, v8

    iget-object v12, v9, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mSmsType:[B

    const/4 v13, 0x0

    aget-byte v12, v12, v13

    if-ne v11, v12, :cond_1

    add-int/lit8 v11, v8, 0x1

    aget-byte v11, p1, v11

    iget-object v12, v9, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mSmsType:[B

    const/4 v13, 0x1

    aget-byte v12, v12, v13

    if-eq v11, v12, :cond_2

    .line 103
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 119
    :cond_2
    const/4 v5, 0x1

    .line 128
    :cond_3
    iget-byte v11, v9, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mAddCondition:B

    const/4 v12, -0x1

    if-eq v11, v12, :cond_9

    .line 130
    iget-byte v2, v9, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mAddCondition:B

    .line 132
    .local v2, "conditionNum":I
    if-lez v2, :cond_6

    .line 133
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_6

    .line 135
    iget-object v11, v9, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mAddConditionList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;

    .line 137
    .local v1, "addCondition":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    iget v11, v1, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mConditionOffset:I

    add-int/2addr v8, v11

    .line 139
    sub-int v11, v10, v8

    iget v12, v1, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mConditionLen:I

    if-lt v11, v12, :cond_5

    .line 140
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    iget v11, v1, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mConditionLen:I

    if-ge v4, v11, :cond_5

    .line 141
    aget-byte v11, p1, v8

    iget-object v12, v1, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mCondition:[B

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_4

    .line 142
    const/4 v5, 0x1

    .line 143
    add-int/lit8 v8, v8, 0x1

    .line 140
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 145
    :cond_4
    const/4 v5, 0x0

    .line 150
    .end local v4    # "j":I
    :cond_5
    const/4 v11, 0x1

    if-eq v5, v11, :cond_8

    .line 182
    .end local v1    # "addCondition":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    .end local v2    # "conditionNum":I
    .end local v3    # "i":I
    :cond_6
    :goto_3
    const/4 v11, 0x1

    if-ne v5, v11, :cond_1

    .line 187
    .end local v8    # "pos":I
    .end local v9    # "smsTypeRecord":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;
    :cond_7
    const-string v11, "SMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "judgeSms> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v11, 0x1

    if-ne v5, v11, :cond_b

    .line 189
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;->mSmsTypeRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;

    iget-object v0, v11, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mKddiSmsAccessory:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    .line 195
    .local v0, "accessory":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    :goto_4
    return-object v0

    .line 133
    .end local v0    # "accessory":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    .restart local v1    # "addCondition":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    .restart local v2    # "conditionNum":I
    .restart local v3    # "i":I
    .restart local v8    # "pos":I
    .restart local v9    # "smsTypeRecord":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 159
    .end local v1    # "addCondition":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    .end local v2    # "conditionNum":I
    .end local v3    # "i":I
    :cond_9
    iget-object v11, v9, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mAddConditionList:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;

    .line 161
    .restart local v1    # "addCondition":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    iget-object v11, v9, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mAddConditionList:Ljava/util/ArrayList;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;

    .line 163
    .local v7, "nextRecord":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    iget v11, v1, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mConditionOffset:I

    add-int/2addr v8, v11

    .line 166
    sub-int v11, v10, v8

    iget v12, v1, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mConditionLen:I

    if-lt v11, v12, :cond_6

    .line 167
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    iget v11, v1, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mConditionLen:I

    if-ge v3, v11, :cond_6

    .line 168
    aget-byte v11, p1, v8

    and-int/lit16 v11, v11, 0xff

    iget-object v12, v1, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mCondition:[B

    aget-byte v12, v12, v3

    and-int/lit16 v12, v12, 0xff

    if-lt v11, v12, :cond_6

    aget-byte v11, p1, v8

    and-int/lit16 v11, v11, 0xff

    iget-object v12, v7, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mCondition:[B

    aget-byte v12, v12, v3

    and-int/lit16 v12, v12, 0xff

    if-gt v11, v12, :cond_6

    .line 170
    iget-object v11, v1, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mCondition:[B

    aget-byte v11, v11, v3

    iget-object v12, v7, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mCondition:[B

    aget-byte v12, v12, v3

    if-eq v11, v12, :cond_a

    .line 171
    const/4 v5, 0x1

    .line 172
    goto :goto_3

    .line 174
    :cond_a
    add-int/lit8 v8, v8, 0x1

    .line 167
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 193
    .end local v1    # "addCondition":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    .end local v3    # "i":I
    .end local v7    # "nextRecord":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    .end local v8    # "pos":I
    .end local v9    # "smsTypeRecord":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;
    :cond_b
    new-instance v0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    const-string v11, "android.provider.Telephony.SMS_RECEIVED"

    const-string v12, "android.permission.RECEIVE_SMS"

    const/4 v13, 0x0

    invoke-direct {v0, p0, v11, v12, v13}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;-><init>(Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;Ljava/lang/String;Ljava/lang/String;I)V

    .restart local v0    # "accessory":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    goto :goto_4
.end method
