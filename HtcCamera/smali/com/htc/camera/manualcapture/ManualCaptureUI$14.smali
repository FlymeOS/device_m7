.class synthetic Lcom/htc/camera/manualcapture/ManualCaptureUI$14;
.super Ljava/lang/Object;
.source "ManualCaptureUI.java"


# static fields
.field static final synthetic $SwitchMap$com$htc$camera$CameraMode:[I

.field static final synthetic $SwitchMap$com$htc$camera$TakingPictureState:[I

.field static final synthetic $SwitchMap$com$htc$camera$manualcapture$ManualCaptureUI$ManualType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1395
    invoke-static {}, Lcom/htc/camera/CameraMode;->values()[Lcom/htc/camera/CameraMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$14;->$SwitchMap$com$htc$camera$CameraMode:[I

    :try_start_0
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$14;->$SwitchMap$com$htc$camera$CameraMode:[I

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v1}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$14;->$SwitchMap$com$htc$camera$CameraMode:[I

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {v1}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    .line 731
    :goto_1
    invoke-static {}, Lcom/htc/camera/TakingPictureState;->values()[Lcom/htc/camera/TakingPictureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$14;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    :try_start_2
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$14;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Reviewing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$14;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$14;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$14;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    sget-object v1, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 327
    :goto_5
    invoke-static {}, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->values()[Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$14;->$SwitchMap$com$htc$camera$manualcapture$ManualCaptureUI$ManualType:[I

    :try_start_6
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$14;->$SwitchMap$com$htc$camera$manualcapture$ManualCaptureUI$ManualType:[I

    sget-object v1, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->Focus:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    invoke-virtual {v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$14;->$SwitchMap$com$htc$camera$manualcapture$ManualCaptureUI$ManualType:[I

    sget-object v1, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->Shutter:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    invoke-virtual {v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$14;->$SwitchMap$com$htc$camera$manualcapture$ManualCaptureUI$ManualType:[I

    sget-object v1, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->ISO:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    invoke-virtual {v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$14;->$SwitchMap$com$htc$camera$manualcapture$ManualCaptureUI$ManualType:[I

    sget-object v1, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->Exposure:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    invoke-virtual {v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$14;->$SwitchMap$com$htc$camera$manualcapture$ManualCaptureUI$ManualType:[I

    sget-object v1, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->WhiteBalance:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    invoke-virtual {v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    return-void

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    .line 731
    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_3

    :catch_8
    move-exception v0

    goto :goto_2

    .line 1395
    :catch_9
    move-exception v0

    goto/16 :goto_1

    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method
