.class synthetic Lcom/htc/camera/data/PropertyBinding$5;
.super Ljava/lang/Object;
.source "PropertyBinding.java"


# static fields
.field static final synthetic $SwitchMap$com$htc$camera$data$BindingMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Lcom/htc/camera/data/BindingMode;->values()[Lcom/htc/camera/data/BindingMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/data/PropertyBinding$5;->$SwitchMap$com$htc$camera$data$BindingMode:[I

    :try_start_0
    sget-object v0, Lcom/htc/camera/data/PropertyBinding$5;->$SwitchMap$com$htc$camera$data$BindingMode:[I

    sget-object v1, Lcom/htc/camera/data/BindingMode;->ONE_WAY:Lcom/htc/camera/data/BindingMode;

    invoke-virtual {v1}, Lcom/htc/camera/data/BindingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/htc/camera/data/PropertyBinding$5;->$SwitchMap$com$htc$camera$data$BindingMode:[I

    sget-object v1, Lcom/htc/camera/data/BindingMode;->ONE_WAY_TO_SOURCE:Lcom/htc/camera/data/BindingMode;

    invoke-virtual {v1}, Lcom/htc/camera/data/BindingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/htc/camera/data/PropertyBinding$5;->$SwitchMap$com$htc$camera$data$BindingMode:[I

    sget-object v1, Lcom/htc/camera/data/BindingMode;->TWO_WAY:Lcom/htc/camera/data/BindingMode;

    invoke-virtual {v1}, Lcom/htc/camera/data/BindingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
