.class Landroid/hardware/camera2/CameraManager$CameraServiceListener$2;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/CameraManager$CameraServiceListener;->postSingleUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/camera2/CameraManager$CameraServiceListener;

.field final synthetic val$callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/CameraManager$CameraServiceListener;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener$2;->this$1:Landroid/hardware/camera2/CameraManager$CameraServiceListener;

    iput-object p2, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener$2;->val$callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iput-object p3, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener$2;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener$2;->val$callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener$2;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraUnavailable(Ljava/lang/String;)V

    .line 737
    return-void
.end method
