.class public final enum Lcom/htc/camera/InitialCameraOpenPolicy;
.super Ljava/lang/Enum;
.source "InitialCameraOpenPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/InitialCameraOpenPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/InitialCameraOpenPolicy;

.field public static final enum AFTER_CREATING_REALTIME_COMPONENTS:Lcom/htc/camera/InitialCameraOpenPolicy;

.field public static final enum DIRECT:Lcom/htc/camera/InitialCameraOpenPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/htc/camera/InitialCameraOpenPolicy;

    const-string v1, "DIRECT"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/InitialCameraOpenPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/InitialCameraOpenPolicy;->DIRECT:Lcom/htc/camera/InitialCameraOpenPolicy;

    .line 15
    new-instance v0, Lcom/htc/camera/InitialCameraOpenPolicy;

    const-string v1, "AFTER_CREATING_REALTIME_COMPONENTS"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/InitialCameraOpenPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/InitialCameraOpenPolicy;->AFTER_CREATING_REALTIME_COMPONENTS:Lcom/htc/camera/InitialCameraOpenPolicy;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/camera/InitialCameraOpenPolicy;

    sget-object v1, Lcom/htc/camera/InitialCameraOpenPolicy;->DIRECT:Lcom/htc/camera/InitialCameraOpenPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/InitialCameraOpenPolicy;->AFTER_CREATING_REALTIME_COMPONENTS:Lcom/htc/camera/InitialCameraOpenPolicy;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/camera/InitialCameraOpenPolicy;->$VALUES:[Lcom/htc/camera/InitialCameraOpenPolicy;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/InitialCameraOpenPolicy;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/htc/camera/InitialCameraOpenPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/InitialCameraOpenPolicy;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/InitialCameraOpenPolicy;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/htc/camera/InitialCameraOpenPolicy;->$VALUES:[Lcom/htc/camera/InitialCameraOpenPolicy;

    invoke-virtual {v0}, [Lcom/htc/camera/InitialCameraOpenPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/InitialCameraOpenPolicy;

    return-object v0
.end method
