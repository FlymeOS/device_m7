.class final enum Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;
.super Ljava/lang/Enum;
.source "CaptureBar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

.field public static final enum None:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

.field public static final enum PauseResumeRecording:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

.field public static final enum StartStopRecording:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

.field public static final enum TakePicture:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-instance v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->None:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    .line 91
    new-instance v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    const-string v1, "TakePicture"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->TakePicture:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    .line 92
    new-instance v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    const-string v1, "StartStopRecording"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->StartStopRecording:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    .line 93
    new-instance v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    const-string v1, "PauseResumeRecording"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->PauseResumeRecording:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    .line 88
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    sget-object v1, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->None:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->TakePicture:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->StartStopRecording:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->PauseResumeRecording:Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->$VALUES:[Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->$VALUES:[Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v0}, [Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    return-object v0
.end method
