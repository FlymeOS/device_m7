.class synthetic Lcom/htc/camera/Resolution$1;
.super Ljava/lang/Object;
.source "Resolution.java"


# static fields
.field static final synthetic $SwitchMap$com$htc$camera$AspectRatio:[I

.field static final synthetic $SwitchMap$com$htc$camera$CameraMode:[I

.field static final synthetic $SwitchMap$com$htc$camera$PhotoSizeMode:[I

.field static final synthetic $SwitchMap$com$htc$camera$PictureQuality:[I

.field static final synthetic $SwitchMap$com$htc$camera$Resolution$Category:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 547
    invoke-static {}, Lcom/htc/camera/PhotoSizeMode;->values()[Lcom/htc/camera/PhotoSizeMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/Resolution$1;->$SwitchMap$com$htc$camera$PhotoSizeMode:[I

    :try_start_0
    sget-object v0, Lcom/htc/camera/Resolution$1;->$SwitchMap$com$htc$camera$PhotoSizeMode:[I

    sget-object v1, Lcom/htc/camera/PhotoSizeMode;->Wide:Lcom/htc/camera/PhotoSizeMode;

    invoke-virtual {v1}, Lcom/htc/camera/PhotoSizeMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_11

    :goto_0
    :try_start_1
    sget-object v0, Lcom/htc/camera/Resolution$1;->$SwitchMap$com$htc$camera$PhotoSizeMode:[I

    sget-object v1, Lcom/htc/camera/PhotoSizeMode;->Regular:Lcom/htc/camera/PhotoSizeMode;

    invoke-virtual {v1}, Lcom/htc/camera/PhotoSizeMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_10

    :goto_1
    :try_start_2
    sget-object v0, Lcom/htc/camera/Resolution$1;->$SwitchMap$com$htc$camera$PhotoSizeMode:[I

    sget-object v1, Lcom/htc/camera/PhotoSizeMode;->Square:Lcom/htc/camera/PhotoSizeMode;

    invoke-virtual {v1}, Lcom/htc/camera/PhotoSizeMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_f

    .line 422
    :goto_2
    invoke-static {}, Lcom/htc/camera/CameraMode;->values()[Lcom/htc/camera/CameraMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/Resolution$1;->$SwitchMap$com$htc$camera$CameraMode:[I

    :try_start_3
    sget-object v0, Lcom/htc/camera/Resolution$1;->$SwitchMap$com$htc$camera$CameraMode:[I

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v1}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_e

    :goto_3
    :try_start_4
    sget-object v0, Lcom/htc/camera/Resolution$1;->$SwitchMap$com$htc$camera$CameraMode:[I

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {v1}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_d

    .line 391
    :goto_4
    invoke-static {}, Lcom/htc/camera/AspectRatio;->values()[Lcom/htc/camera/AspectRatio;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/Resolution$1;->$SwitchMap$com$htc$camera$AspectRatio:[I

    :try_start_5
    sget-object v0, Lcom/htc/camera/Resolution$1;->$SwitchMap$com$htc$camera$AspectRatio:[I

    sget-object v1, Lcom/htc/camera/AspectRatio;->Ratio_16x9:Lcom/htc/camera/AspectRatio;

    invoke-virtual {v1}, Lcom/htc/camera/AspectRatio;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_c

    :goto_5
    :try_start_6
    sget-object v0, Lcom/htc/camera/Resolution$1;->$SwitchMap$com$htc$camera$AspectRatio:[I

    sget-object v1, Lcom/htc/camera/AspectRatio;->Ratio_16x10:Lcom/htc/camera/AspectRatio;

    invoke-virtual {v1}, Lcom/htc/camera/AspectRatio;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_b

    :goto_6
    :try_start_7
    sget-object v0, Lcom/htc/camera/Resolution$1;->$SwitchMap$com$htc$camera$AspectRatio:[I

    sget-object v1, Lcom/htc/camera/AspectRatio;->Ratio_5x3:Lcom/htc/camera/AspectRatio;

    invoke-virtual {v1}, Lcom/htc/camera/AspectRatio;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_a

    :goto_7
    :try_start_8
    sget-object v0, Lcom/htc/camera/Resolution$1;->$SwitchMap$com$htc$camera$AspectRatio:[I

    sget-object v1, Lcom/htc/camera/AspectRatio;->Ratio_5x4:Lcom/htc/camera/AspectRatio;

    invoke-virtual {v1}, Lcom/htc/camera/AspectRatio;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_9

    :goto_8
    :try_start_9
    sget-object v0, Lcom/htc/camera/Resolution$1;->$SwitchMap$com$htc$camera$AspectRatio:[I

    sget-object v1, Lcom/htc/camera/AspectRatio;->Ratio_1x1:Lcom/htc/camera/AspectRatio;

    invoke-virtual {v1}, Lcom/htc/camera/AspectRatio;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_8

    :goto_9
    :try_start_a
    sget-object v0, Lcom/htc/camera/Resolution$1;->$SwitchMap$com$htc$camera$AspectRatio:[I

    sget-object v1, Lcom/htc/camera/AspectRatio;->Ratio_4x3:Lcom/htc/camera/AspectRatio;

    invoke-virtual {v1}, Lcom/htc/camera/AspectRatio;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_7

    .line 375
    :goto_a
    invoke-static {}, Lcom/htc/camera/Resolution$Category;->values()[Lcom/htc/camera/Resolution$Category;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/Resolution$1;->$SwitchMap$com$htc$camera$Resolution$Category:[I

    :try_start_b
    sget-object v0, Lcom/htc/camera/Resolution$1;->$SwitchMap$com$htc$camera$Resolution$Category:[I

    sget-object v1, Lcom/htc/camera/Resolution$Category;->Large:Lcom/htc/camera/Resolution$Category;

    invoke-virtual {v1}, Lcom/htc/camera/Resolution$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_6

    :goto_b
    :try_start_c
    sget-object v0, Lcom/htc/camera/Resolution$1;->$SwitchMap$com$htc$camera$Resolution$Category:[I

    sget-object v1, Lcom/htc/camera/Resolution$Category;->Medium:Lcom/htc/camera/Resolution$Category;

    invoke-virtual {v1}, Lcom/htc/camera/Resolution$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_5

    :goto_c
    :try_start_d
    sget-object v0, Lcom/htc/camera/Resolution$1;->$SwitchMap$com$htc$camera$Resolution$Category:[I

    sget-object v1, Lcom/htc/camera/Resolution$Category;->Small:Lcom/htc/camera/Resolution$Category;

    invoke-virtual {v1}, Lcom/htc/camera/Resolution$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_4

    .line 50
    :goto_d
    invoke-static {}, Lcom/htc/camera/PictureQuality;->values()[Lcom/htc/camera/PictureQuality;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/Resolution$1;->$SwitchMap$com$htc$camera$PictureQuality:[I

    :try_start_e
    sget-object v0, Lcom/htc/camera/Resolution$1;->$SwitchMap$com$htc$camera$PictureQuality:[I

    sget-object v1, Lcom/htc/camera/PictureQuality;->Super:Lcom/htc/camera/PictureQuality;

    invoke-virtual {v1}, Lcom/htc/camera/PictureQuality;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_3

    :goto_e
    :try_start_f
    sget-object v0, Lcom/htc/camera/Resolution$1;->$SwitchMap$com$htc$camera$PictureQuality:[I

    sget-object v1, Lcom/htc/camera/PictureQuality;->Fine:Lcom/htc/camera/PictureQuality;

    invoke-virtual {v1}, Lcom/htc/camera/PictureQuality;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_2

    :goto_f
    :try_start_10
    sget-object v0, Lcom/htc/camera/Resolution$1;->$SwitchMap$com$htc$camera$PictureQuality:[I

    sget-object v1, Lcom/htc/camera/PictureQuality;->Normal:Lcom/htc/camera/PictureQuality;

    invoke-virtual {v1}, Lcom/htc/camera/PictureQuality;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_1

    :goto_10
    :try_start_11
    sget-object v0, Lcom/htc/camera/Resolution$1;->$SwitchMap$com$htc$camera$PictureQuality:[I

    sget-object v1, Lcom/htc/camera/PictureQuality;->Basic:Lcom/htc/camera/PictureQuality;

    invoke-virtual {v1}, Lcom/htc/camera/PictureQuality;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_0

    :goto_11
    return-void

    :catch_0
    move-exception v0

    goto :goto_11

    :catch_1
    move-exception v0

    goto :goto_10

    :catch_2
    move-exception v0

    goto :goto_f

    :catch_3
    move-exception v0

    goto :goto_e

    .line 375
    :catch_4
    move-exception v0

    goto :goto_d

    :catch_5
    move-exception v0

    goto :goto_c

    :catch_6
    move-exception v0

    goto :goto_b

    .line 391
    :catch_7
    move-exception v0

    goto :goto_a

    :catch_8
    move-exception v0

    goto :goto_9

    :catch_9
    move-exception v0

    goto/16 :goto_8

    :catch_a
    move-exception v0

    goto/16 :goto_7

    :catch_b
    move-exception v0

    goto/16 :goto_6

    :catch_c
    move-exception v0

    goto/16 :goto_5

    .line 422
    :catch_d
    move-exception v0

    goto/16 :goto_4

    :catch_e
    move-exception v0

    goto/16 :goto_3

    .line 547
    :catch_f
    move-exception v0

    goto/16 :goto_2

    :catch_10
    move-exception v0

    goto/16 :goto_1

    :catch_11
    move-exception v0

    goto/16 :goto_0
.end method
