.class Lcom/android/nfc/handover/BluetoothPeripheralHandover$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 591
    iput-object p1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$2;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$2;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v0, p2}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->handleIntent(Landroid/content/Intent;)V

    .line 595
    return-void
.end method
