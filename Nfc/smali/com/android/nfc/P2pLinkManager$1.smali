.class Lcom/android/nfc/P2pLinkManager$1;
.super Ljava/lang/Object;
.source "P2pLinkManager.java"

# interfaces
.implements Lcom/android/nfc/handover/HandoverServer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/P2pLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/P2pLinkManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/P2pLinkManager;)V
    .locals 0

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager$1;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandoverRequestReceived()V
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager$1;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0}, Lcom/android/nfc/P2pLinkManager;->onReceiveHandover()V

    .line 1018
    return-void
.end method
