.class final enum Lcom/htc/camera/Global$REQUEST_CODE;
.super Ljava/lang/Enum;
.source "Global.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/Global$REQUEST_CODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/Global$REQUEST_CODE;

.field public static final enum INTENT_ALBUM_RESULT:Lcom/htc/camera/Global$REQUEST_CODE;

.field public static final enum REQUEST_CODE_CROP_MSG:Lcom/htc/camera/Global$REQUEST_CODE;

.field public static final enum SCENE_SELECTOR_RESULT:Lcom/htc/camera/Global$REQUEST_CODE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/htc/camera/Global$REQUEST_CODE;

    const-string v1, "INTENT_ALBUM_RESULT"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/Global$REQUEST_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/Global$REQUEST_CODE;->INTENT_ALBUM_RESULT:Lcom/htc/camera/Global$REQUEST_CODE;

    .line 18
    new-instance v0, Lcom/htc/camera/Global$REQUEST_CODE;

    const-string v1, "REQUEST_CODE_CROP_MSG"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/Global$REQUEST_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/Global$REQUEST_CODE;->REQUEST_CODE_CROP_MSG:Lcom/htc/camera/Global$REQUEST_CODE;

    .line 19
    new-instance v0, Lcom/htc/camera/Global$REQUEST_CODE;

    const-string v1, "SCENE_SELECTOR_RESULT"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/Global$REQUEST_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/Global$REQUEST_CODE;->SCENE_SELECTOR_RESULT:Lcom/htc/camera/Global$REQUEST_CODE;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/camera/Global$REQUEST_CODE;

    sget-object v1, Lcom/htc/camera/Global$REQUEST_CODE;->INTENT_ALBUM_RESULT:Lcom/htc/camera/Global$REQUEST_CODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/Global$REQUEST_CODE;->REQUEST_CODE_CROP_MSG:Lcom/htc/camera/Global$REQUEST_CODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/Global$REQUEST_CODE;->SCENE_SELECTOR_RESULT:Lcom/htc/camera/Global$REQUEST_CODE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/camera/Global$REQUEST_CODE;->$VALUES:[Lcom/htc/camera/Global$REQUEST_CODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/Global$REQUEST_CODE;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/htc/camera/Global$REQUEST_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Global$REQUEST_CODE;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/Global$REQUEST_CODE;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/htc/camera/Global$REQUEST_CODE;->$VALUES:[Lcom/htc/camera/Global$REQUEST_CODE;

    invoke-virtual {v0}, [Lcom/htc/camera/Global$REQUEST_CODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/Global$REQUEST_CODE;

    return-object v0
.end method
