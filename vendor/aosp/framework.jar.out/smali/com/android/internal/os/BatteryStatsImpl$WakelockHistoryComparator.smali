.class Lcom/android/internal/os/BatteryStatsImpl$WakelockHistoryComparator;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WakelockHistoryComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/os/BatteryStatsImpl$1;

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistoryComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;)I
    .locals 4
    .param p1, "wh1"    # Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;
    .param p2, "wh2"    # Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;

    .prologue
    .line 522
    iget-wide v0, p1, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mTempSum:J

    iget-wide v2, p2, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mTempSum:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 523
    const/4 v0, -0x1

    .line 526
    :goto_0
    return v0

    .line 524
    :cond_0
    iget-wide v0, p1, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mTempSum:J

    iget-wide v2, p2, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mTempSum:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 525
    const/4 v0, 0x1

    goto :goto_0

    .line 526
    :cond_1
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mName:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 520
    check-cast p1, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$WakelockHistoryComparator;->compare(Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;Lcom/android/internal/os/BatteryStatsImpl$WakelockHistory;)I

    move-result v0

    return v0
.end method
