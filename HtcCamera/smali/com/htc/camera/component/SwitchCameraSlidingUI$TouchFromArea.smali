.class final enum Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;
.super Ljava/lang/Enum;
.source "SwitchCameraSlidingUI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;

.field public static final enum TOP_OF_INVERSELANDSCAPE:Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;

.field public static final enum TOP_OF_LANDSCAPE:Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-instance v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;

    const-string v1, "TOP_OF_LANDSCAPE"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;->TOP_OF_LANDSCAPE:Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;

    .line 91
    new-instance v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;

    const-string v1, "TOP_OF_INVERSELANDSCAPE"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;->TOP_OF_INVERSELANDSCAPE:Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;

    sget-object v1, Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;->TOP_OF_LANDSCAPE:Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;->TOP_OF_INVERSELANDSCAPE:Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;->$VALUES:[Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;

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
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;->$VALUES:[Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;

    invoke-virtual {v0}, [Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;

    return-object v0
.end method
