.class public final Lcom/htc/camera/splitcapture/e;
.super Lcom/htc/camera/component/t;
.source "SplitVideoControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/t",
        "<",
        "Lcom/htc/camera/splitcapture/SplitVideoController;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "Split Video Controller"

    sget-object v1, Lcom/htc/camera/component/ComponentCategory;->Realtime:Lcom/htc/camera/component/ComponentCategory;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/t;-><init>(Ljava/lang/String;Lcom/htc/camera/component/ComponentCategory;)V

    .line 12
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/splitcapture/SplitVideoController;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoController;

    invoke-direct {v0, p1}, Lcom/htc/camera/splitcapture/SplitVideoController;-><init>(Lcom/htc/camera/CameraThread;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/htc/camera/splitcapture/e;->a(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/splitcapture/SplitVideoController;

    move-result-object v0

    return-object v0
.end method
