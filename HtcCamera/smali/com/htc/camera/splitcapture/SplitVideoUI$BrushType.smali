.class final enum Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;
.super Ljava/lang/Enum;
.source "SplitVideoUI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

.field public static final enum BLACK:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

.field public static final enum FULL_VIDEO:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

.field public static final enum HALF_VIDEO:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 356
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    const-string v1, "BLACK"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;->BLACK:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    .line 357
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    const-string v1, "FULL_VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;->FULL_VIDEO:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    .line 358
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    const-string v1, "HALF_VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;->HALF_VIDEO:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    .line 354
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;->BLACK:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;->FULL_VIDEO:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;->HALF_VIDEO:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;->$VALUES:[Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

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
    .line 354
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;
    .locals 1

    .prologue
    .line 354
    const-class v0, Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;
    .locals 1

    .prologue
    .line 354
    sget-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;->$VALUES:[Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    invoke-virtual {v0}, [Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    return-object v0
.end method
