.class public final enum Lcom/htc/camera/CameraMode;
.super Ljava/lang/Enum;
.source "CameraMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/CameraMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/CameraMode;

.field public static final enum Photo:Lcom/htc/camera/CameraMode;

.field public static final enum Video:Lcom/htc/camera/CameraMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/htc/camera/CameraMode;

    const-string v1, "Photo"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/CameraMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    .line 6
    new-instance v0, Lcom/htc/camera/CameraMode;

    const-string v1, "Video"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/CameraMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/camera/CameraMode;

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/camera/CameraMode;->$VALUES:[Lcom/htc/camera/CameraMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/CameraMode;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/htc/camera/CameraMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraMode;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/CameraMode;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/htc/camera/CameraMode;->$VALUES:[Lcom/htc/camera/CameraMode;

    invoke-virtual {v0}, [Lcom/htc/camera/CameraMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/CameraMode;

    return-object v0
.end method
