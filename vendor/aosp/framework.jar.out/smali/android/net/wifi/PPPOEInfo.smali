.class public Landroid/net/wifi/PPPOEInfo;
.super Ljava/lang/Object;
.source "PPPOEInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/PPPOEInfo$Status;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/PPPOEInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public online_time:J

.field public status:Landroid/net/wifi/PPPOEInfo$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Landroid/net/wifi/PPPOEInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/PPPOEInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/PPPOEInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Landroid/net/wifi/PPPOEInfo$Status;->OFFLINE:Landroid/net/wifi/PPPOEInfo$Status;

    iput-object v0, p0, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/PPPOEInfo;->online_time:J

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/PPPOEInfo$Status;)V
    .locals 2
    .param p1, "s"    # Landroid/net/wifi/PPPOEInfo$Status;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/PPPOEInfo;->online_time:J

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/PPPOEInfo;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/PPPOEInfo;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p1, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    iput-object v0, p0, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    .line 63
    iget-wide v0, p1, Landroid/net/wifi/PPPOEInfo;->online_time:J

    iput-wide v0, p0, Landroid/net/wifi/PPPOEInfo;->online_time:J

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 49
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, " status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    invoke-virtual {v2}, Landroid/net/wifi/PPPOEInfo$Status;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    const-string v1, ", lcp_echo_interval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/wifi/PPPOEInfo;->online_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 69
    iget-object v0, p0, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    invoke-virtual {v0}, Landroid/net/wifi/PPPOEInfo$Status;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-wide v0, p0, Landroid/net/wifi/PPPOEInfo;->online_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 71
    return-void
.end method
