.class public final enum Lcom/htc/camera/burst/BurstCameraState;
.super Ljava/lang/Enum;
.source "BurstCameraState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/burst/BurstCameraState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/burst/BurstCameraState;

.field public static final enum Ready:Lcom/htc/camera/burst/BurstCameraState;

.field public static final enum StoppingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

.field public static final enum TakingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

.field public static final enum TakingOneShot:Lcom/htc/camera/burst/BurstCameraState;

.field public static final enum Unavailable:Lcom/htc/camera/burst/BurstCameraState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/htc/camera/burst/BurstCameraState;

    const-string v1, "Unavailable"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/burst/BurstCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/burst/BurstCameraState;->Unavailable:Lcom/htc/camera/burst/BurstCameraState;

    .line 6
    new-instance v0, Lcom/htc/camera/burst/BurstCameraState;

    const-string v1, "Ready"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/burst/BurstCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/burst/BurstCameraState;->Ready:Lcom/htc/camera/burst/BurstCameraState;

    .line 7
    new-instance v0, Lcom/htc/camera/burst/BurstCameraState;

    const-string v1, "TakingOneShot"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/burst/BurstCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/burst/BurstCameraState;->TakingOneShot:Lcom/htc/camera/burst/BurstCameraState;

    .line 8
    new-instance v0, Lcom/htc/camera/burst/BurstCameraState;

    const-string v1, "TakingBurstShots"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/burst/BurstCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/burst/BurstCameraState;->TakingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

    .line 9
    new-instance v0, Lcom/htc/camera/burst/BurstCameraState;

    const-string v1, "StoppingBurstShots"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/burst/BurstCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/burst/BurstCameraState;->StoppingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/camera/burst/BurstCameraState;

    sget-object v1, Lcom/htc/camera/burst/BurstCameraState;->Unavailable:Lcom/htc/camera/burst/BurstCameraState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/burst/BurstCameraState;->Ready:Lcom/htc/camera/burst/BurstCameraState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/burst/BurstCameraState;->TakingOneShot:Lcom/htc/camera/burst/BurstCameraState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/burst/BurstCameraState;->TakingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/burst/BurstCameraState;->StoppingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/camera/burst/BurstCameraState;->$VALUES:[Lcom/htc/camera/burst/BurstCameraState;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/burst/BurstCameraState;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/htc/camera/burst/BurstCameraState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/burst/BurstCameraState;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/burst/BurstCameraState;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/htc/camera/burst/BurstCameraState;->$VALUES:[Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0}, [Lcom/htc/camera/burst/BurstCameraState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/burst/BurstCameraState;

    return-object v0
.end method
