.class public Lcom/android/server/MasterClearReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MasterClearReceiver$MzRebootThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MasterClear"

.field private static mDeleteCarrierPartition:Z

.field private static mDeleteData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    sput-boolean v0, Lcom/android/server/MasterClearReceiver;->mDeleteData:Z

    .line 32
    sput-boolean v0, Lcom/android/server/MasterClearReceiver;->mDeleteCarrierPartition:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/server/MasterClearReceiver;->mDeleteData:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/server/MasterClearReceiver;->mDeleteCarrierPartition:Z

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    const-string v1, "google.com"

    const-string v2, "from"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    const-string v1, "MasterClear"

    const-string v2, "Ignoring master clear request -- not from trusted server."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/android/server/MasterClearReceiver;->mzRebootWipeUserData(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_flyme_0

    return-void

    :cond_flyme_0

    const-string v1, "shutdown"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 44
    .local v4, "shutdown":Z
    const-string v1, "android.intent.extra.REASON"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, "reason":Ljava/lang/String;
    const-string v1, "delete_data"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/MasterClearReceiver;->mDeleteData:Z

    .line 53
    const-string v1, "delete_carrier_partition"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/MasterClearReceiver;->mDeleteCarrierPartition:Z

    .line 56
    const-string v1, "MasterClear"

    const-string v2, "!!! FACTORY RESET !!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Lcom/android/server/MasterClearReceiver$1;

    const-string v2, "Reboot"

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/MasterClearReceiver$1;-><init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Landroid/content/Context;ZLjava/lang/String;)V

    .line 83
    .local v0, "thr":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private mzRebootWipeUserData(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    new-instance v0, Lcom/android/server/MasterClearReceiver$MzRebootThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/MasterClearReceiver$MzRebootThread;-><init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .local v0, "mzRebootThread":Lcom/android/server/MasterClearReceiver$MzRebootThread;
    invoke-virtual {v0}, Lcom/android/server/MasterClearReceiver$MzRebootThread;->start()V

    const/4 v1, 0x1

    return v1
.end method
