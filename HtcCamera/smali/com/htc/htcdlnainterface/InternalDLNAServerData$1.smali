.class final Lcom/htc/htcdlnainterface/InternalDLNAServerData$1;
.super Ljava/lang/Object;
.source "InternalDLNAServerData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/htcdlnainterface/InternalDLNAServerData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/htcdlnainterface/InternalDLNAServerData;
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/htc/htcdlnainterface/InternalDLNAServerData;

    invoke-direct {v0, p1}, Lcom/htc/htcdlnainterface/InternalDLNAServerData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/htc/htcdlnainterface/InternalDLNAServerData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/htcdlnainterface/InternalDLNAServerData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/htcdlnainterface/InternalDLNAServerData;
    .locals 1

    .prologue
    .line 133
    new-array v0, p1, [Lcom/htc/htcdlnainterface/InternalDLNAServerData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/htc/htcdlnainterface/InternalDLNAServerData$1;->newArray(I)[Lcom/htc/htcdlnainterface/InternalDLNAServerData;

    move-result-object v0

    return-object v0
.end method
