.class final Lcom/htc/camera/io/g;
.super Lcom/htc/camera/io/StorageSlot;
.source "InvalidStorageSlot.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    const-string v0, ""

    invoke-direct {p0, v0, v1, v1}, Lcom/htc/camera/io/StorageSlot;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getFreeSpace()J
    .locals 2

    .prologue
    .line 21
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "unmountable"

    return-object v0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public serializeToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "Invalid"

    return-object v0
.end method
