.class synthetic Lcom/htc/camera/component/ObjectTrackingRenderer$12;
.super Ljava/lang/Object;
.source "ObjectTrackingRenderer.java"


# static fields
.field static final synthetic $SwitchMap$com$htc$camera$ObjectTrackingInfoType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 154
    invoke-static {}, Lcom/htc/camera/ObjectTrackingInfoType;->values()[Lcom/htc/camera/ObjectTrackingInfoType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/component/ObjectTrackingRenderer$12;->$SwitchMap$com$htc$camera$ObjectTrackingInfoType:[I

    :try_start_0
    sget-object v0, Lcom/htc/camera/component/ObjectTrackingRenderer$12;->$SwitchMap$com$htc$camera$ObjectTrackingInfoType:[I

    sget-object v1, Lcom/htc/camera/ObjectTrackingInfoType;->Face:Lcom/htc/camera/ObjectTrackingInfoType;

    invoke-virtual {v1}, Lcom/htc/camera/ObjectTrackingInfoType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
