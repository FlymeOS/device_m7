.class Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;
.super Landroid/os/Handler;
.source "BluetoothPeripheralHandover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/BluetoothPeripheralHandover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/BluetoothPeripheralHandover;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 578
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 580
    :pswitch_0
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 581
    const-string v0, "BluetoothPeripheralHandover"

    const-string v1, "Timeout completing BT handover"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto :goto_0

    .line 585
    :pswitch_1
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto :goto_0

    .line 578
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
