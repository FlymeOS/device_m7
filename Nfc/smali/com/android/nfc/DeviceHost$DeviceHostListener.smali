.class public interface abstract Lcom/android/nfc/DeviceHost$DeviceHostListener;
.super Ljava/lang/Object;
.source "DeviceHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/DeviceHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeviceHostListener"
.end annotation


# virtual methods
.method public abstract onAidRoutingTableFull()V
.end method

.method public abstract onCardEmulationAidSelected([B[BI)V
.end method

.method public abstract onCardEmulationDeselected()V
.end method

.method public abstract onConnectivityEvent(I)V
.end method

.method public abstract onEmvcoMultiCardDetectedEvent()V
.end method

.method public abstract onHostCardEmulationActivated()V
.end method

.method public abstract onHostCardEmulationData([B)V
.end method

.method public abstract onHostCardEmulationDeactivated()V
.end method

.method public abstract onLlcpFirstPacketReceived(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
.end method

.method public abstract onLlcpLinkActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
.end method

.method public abstract onLlcpLinkDeactivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
.end method

.method public abstract onRemoteEndpointDiscovered(Lcom/android/nfc/DeviceHost$TagEndpoint;)V
.end method

.method public abstract onRemoteFieldActivated()V
.end method

.method public abstract onRemoteFieldDeactivated()V
.end method

.method public abstract onSWPReaderActivatedEvent()V
.end method

.method public abstract onSWPReaderDeActivatedEvent()V
.end method

.method public abstract onSWPReaderRequestedEvent(ZZ)V
.end method

.method public abstract onSeApduReceived([B)V
.end method

.method public abstract onSeEmvCardRemoval()V
.end method

.method public abstract onSeListenActivated()V
.end method

.method public abstract onSeListenDeactivated()V
.end method

.method public abstract onSeMifareAccess([B)V
.end method
