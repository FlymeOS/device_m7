.class Lcom/htc/camera/component/CameraMenuUI$12;
.super Ljava/lang/Object;
.source "CameraMenuUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/TakingPictureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CameraMenuUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraMenuUI;)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI$12;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/TakingPictureState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/TakingPictureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 815
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$12;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->updateButtonStates()V
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$3800(Lcom/htc/camera/component/CameraMenuUI;)V

    .line 816
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$12;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/CameraMenuUI;->updateCameraMenuButtonVisibility()V

    .line 817
    return-void
.end method
