.class final Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus$1;
.super Ljava/lang/Object;
.source "DLNAControllerStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;
    .locals 1

    .prologue
    .line 398
    new-instance v0, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;

    invoke-direct {v0, p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;
    .locals 1

    .prologue
    .line 402
    new-array v0, p1, [Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus$1;->newArray(I)[Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAControllerStatus;

    move-result-object v0

    return-object v0
.end method
