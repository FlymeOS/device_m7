.class Lcom/android/server/location/GpsLocationProvider$5;
.super Lcom/android/server/location/GpsNavigationMessageProvider;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Lcom/android/server/location/GpsNavigationMessageProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected isSupported()Z
    .locals 1

    .prologue
    .line 627
    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_is_navigation_message_supported()Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$500()Z

    move-result v0

    return v0
.end method

.method protected registerWithService()Z
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_start_navigation_message_collection()Z
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v0

    return v0
.end method

.method protected unregisterFromService()V
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$5;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_stop_navigation_message_collection()Z
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$700(Lcom/android/server/location/GpsLocationProvider;)Z

    .line 638
    return-void
.end method
