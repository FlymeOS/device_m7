.class public Landroid/app/Notification;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$BuilderRemoteViews;,
        Landroid/app/Notification$WearableExtender;,
        Landroid/app/Notification$Extender;,
        Landroid/app/Notification$MediaStyle;,
        Landroid/app/Notification$InboxStyle;,
        Landroid/app/Notification$BigTextStyle;,
        Landroid/app/Notification$BigPictureStyle;,
        Landroid/app/Notification$Style;,
        Landroid/app/Notification$Builder;,
        Landroid/app/Notification$Action;
    }
.end annotation


# static fields
.field public static final AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

.field public static final CATEGORY_ALARM:Ljava/lang/String; = "alarm"

.field public static final CATEGORY_CALL:Ljava/lang/String; = "call"

.field public static final CATEGORY_EMAIL:Ljava/lang/String; = "email"

.field public static final CATEGORY_ERROR:Ljava/lang/String; = "err"

.field public static final CATEGORY_EVENT:Ljava/lang/String; = "event"

.field public static final CATEGORY_MESSAGE:Ljava/lang/String; = "msg"

.field public static final CATEGORY_PROGRESS:Ljava/lang/String; = "progress"

.field public static final CATEGORY_PROMO:Ljava/lang/String; = "promo"

.field public static final CATEGORY_RECOMMENDATION:Ljava/lang/String; = "recommendation"

.field public static final CATEGORY_SERVICE:Ljava/lang/String; = "service"

.field public static final CATEGORY_SOCIAL:Ljava/lang/String; = "social"

.field public static final CATEGORY_STATUS:Ljava/lang/String; = "status"

.field public static final CATEGORY_SYSTEM:Ljava/lang/String; = "sys"

.field public static final CATEGORY_TRANSPORT:Ljava/lang/String; = "transport"

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ALL:I = -0x1

.field public static final DEFAULT_LIGHTS:I = 0x4

.field public static final DEFAULT_SOUND:I = 0x1

.field public static final DEFAULT_VIBRATE:I = 0x2

.field public static final EXTRA_ALLOW_DURING_SETUP:Ljava/lang/String; = "android.allowDuringSetup"

.field public static final EXTRA_AS_HEADS_UP:Ljava/lang/String; = "headsup"

.field public static final EXTRA_BACKGROUND_IMAGE_URI:Ljava/lang/String; = "android.backgroundImageUri"

.field public static final EXTRA_BIG_TEXT:Ljava/lang/String; = "android.bigText"

.field public static final EXTRA_COMPACT_ACTIONS:Ljava/lang/String; = "android.compactActions"

.field public static final EXTRA_INFO_TEXT:Ljava/lang/String; = "android.infoText"

.field public static final EXTRA_LARGE_ICON:Ljava/lang/String; = "android.largeIcon"

.field public static final EXTRA_LARGE_ICON_BIG:Ljava/lang/String; = "android.largeIcon.big"

.field public static final EXTRA_MEDIA_SESSION:Ljava/lang/String; = "android.mediaSession"

.field public static final EXTRA_ORIGINATING_USERID:Ljava/lang/String; = "android.originatingUserId"

.field public static final EXTRA_PEOPLE:Ljava/lang/String; = "android.people"

.field public static final EXTRA_PICTURE:Ljava/lang/String; = "android.picture"

.field public static final EXTRA_PROGRESS:Ljava/lang/String; = "android.progress"

.field public static final EXTRA_PROGRESS_INDETERMINATE:Ljava/lang/String; = "android.progressIndeterminate"

.field public static final EXTRA_PROGRESS_MAX:Ljava/lang/String; = "android.progressMax"

.field public static final EXTRA_SHOW_CHRONOMETER:Ljava/lang/String; = "android.showChronometer"

.field public static final EXTRA_SHOW_WHEN:Ljava/lang/String; = "android.showWhen"

.field public static final EXTRA_SMALL_ICON:Ljava/lang/String; = "android.icon"

.field public static final EXTRA_SUB_TEXT:Ljava/lang/String; = "android.subText"

.field public static final EXTRA_SUMMARY_TEXT:Ljava/lang/String; = "android.summaryText"

.field public static final EXTRA_TEMPLATE:Ljava/lang/String; = "android.template"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "android.text"

.field public static final EXTRA_TEXT_LINES:Ljava/lang/String; = "android.textLines"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.title"

.field public static final EXTRA_TITLE_BIG:Ljava/lang/String; = "android.title.big"

.field public static final FLAG_AUTO_CANCEL:I = 0x10

.field public static final FLAG_FOREGROUND_SERVICE:I = 0x40

.field public static final FLAG_GROUP_SUMMARY:I = 0x200

.field public static final FLAG_HIGH_PRIORITY:I = 0x80

.field public static final FLAG_HTCAPP:I = -0x80000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_INSISTENT:I = 0x4

.field public static final FLAG_LOCAL_ONLY:I = 0x100

.field public static final FLAG_NO_CLEAR:I = 0x20

.field public static final FLAG_ONGOING_EVENT:I = 0x2

.field public static final FLAG_ONLY_ALERT_ONCE:I = 0x8

.field public static final FLAG_SHOW_LIGHTS:I = 0x1

.field public static final HEADS_UP_ALLOWED:I = 0x1

.field public static final HEADS_UP_NEVER:I = 0x0

.field public static final HEADS_UP_REQUESTED:I = 0x2

.field public static final HTC_EXTRA_IGNORE_DND:Ljava/lang/String; = "HTC_Extra_Ignore_DND"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INTENT_CATEGORY_NOTIFICATION_PREFERENCES:Ljava/lang/String; = "android.intent.category.NOTIFICATION_PREFERENCES"

.field private static final MAX_CHARSEQUENCE_LENGTH:I = 0x1400

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x1

.field public static final PRIORITY_LOW:I = -0x1

.field public static final PRIORITY_MAX:I = 0x2

.field public static final PRIORITY_MIN:I = -0x2

.field public static final STREAM_DEFAULT:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Notification"

.field public static final TAG_CL_ALERT:Ljava/lang/String; = "CL_ALERT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_VZW_CMAS:Ljava/lang/String; = "VZW_CMAS_IgnoreNotification2Mute"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VISIBILITY_PRIVATE:I = 0x0

.field public static final VISIBILITY_PUBLIC:I = 0x1

.field public static final VISIBILITY_SECRET:I = -0x1


# instance fields
.field public actions:[Landroid/app/Notification$Action;

.field public audioAttributes:Landroid/media/AudioAttributes;

.field public audioStreamType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public bigContentView:Landroid/widget/RemoteViews;

.field public category:Ljava/lang/String;

.field public color:I

.field public contentIntent:Landroid/app/PendingIntent;

.field public contentView:Landroid/widget/RemoteViews;

.field public defaults:I

.field public deleteIntent:Landroid/app/PendingIntent;

.field public extras:Landroid/os/Bundle;

.field public flags:I

.field public fullScreenIntent:Landroid/app/PendingIntent;

.field public headsUpContentView:Landroid/widget/RemoteViews;

.field public icon:I

.field public iconLevel:I

.field public largeIcon:Landroid/graphics/Bitmap;

.field public ledARGB:I

.field public ledOffMS:I

.field public ledOnMS:I

.field private mGroupKey:Ljava/lang/String;

.field private mSortKey:Ljava/lang/String;

.field public number:I

.field public priority:I

.field public publicVersion:Landroid/app/Notification;

.field public sound:Landroid/net/Uri;

.field public tickerText:Ljava/lang/CharSequence;

.field public tickerView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public vibrate:[J

.field public visibility:I

.field public when:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 308
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .line 1604
    new-instance v0, Landroid/app/Notification$1;

    invoke-direct {v0}, Landroid/app/Notification$1;-><init>()V

    sput-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    .line 316
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 521
    iput v2, p0, Landroid/app/Notification;->color:I

    .line 685
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/Notification;->when:J

    .line 1222
    iput v2, p0, Landroid/app/Notification;->priority:I

    .line 1223
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;J)V
    .locals 1
    .param p1, "icon"    # I
    .param p2, "tickerText"    # Ljava/lang/CharSequence;
    .param p3, "when"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    .line 316
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 521
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification;->color:I

    .line 685
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1253
    iput p1, p0, Landroid/app/Notification;->icon:I

    .line 1254
    iput-object p2, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1255
    iput-wide p3, p0, Landroid/app/Notification;->when:J

    .line 1256
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # I
    .param p3, "tickerText"    # Ljava/lang/CharSequence;
    .param p4, "when"    # J
    .param p6, "contentTitle"    # Ljava/lang/CharSequence;
    .param p7, "contentText"    # Ljava/lang/CharSequence;
    .param p8, "contentIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 1230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    .line 316
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 521
    iput v1, p0, Landroid/app/Notification;->color:I

    .line 685
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1231
    iput-wide p4, p0, Landroid/app/Notification;->when:J

    .line 1232
    iput p2, p0, Landroid/app/Notification;->icon:I

    .line 1233
    iput-object p3, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1234
    invoke-static {p1, v1, p8, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0, p1, p6, p7, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1236
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    .line 316
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 521
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/Notification;->color:I

    .line 685
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1265
    .local v0, "version":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/app/Notification;->when:J

    .line 1266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->icon:I

    .line 1267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->number:I

    .line 1268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1269
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1271
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1272
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 1274
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1275
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1277
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 1278
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 1280
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 1281
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1283
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 1284
    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 1286
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->defaults:I

    .line 1287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->flags:I

    .line 1288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1289
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1292
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    .line 1293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    .line 1294
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 1296
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->vibrate:[J

    .line 1297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->ledARGB:I

    .line 1298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->ledOnMS:I

    .line 1299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->ledOffMS:I

    .line 1300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->iconLevel:I

    .line 1302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 1303
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 1306
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->priority:I

    .line 1308
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 1310
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    .line 1312
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    .line 1314
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1316
    sget-object v1, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/app/Notification$Action;

    iput-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 1318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 1319
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1322
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 1323
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 1326
    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->visibility:I

    .line 1328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 1329
    sget-object v1, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification;

    iput-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 1332
    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->color:I

    .line 1333
    return-void
.end method

.method static synthetic access$2400(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;
    .locals 1
    .param p0, "x0"    # Landroid/os/Bundle;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p0, p1}, Landroid/app/Notification;->getNotificationArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification;

    .prologue
    .line 77
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/app/Notification;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification;

    .prologue
    .line 77
    iget-object v0, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/app/Notification;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    return-object p1
.end method

.method private static getNotificationArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 4894
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 4895
    .local v0, "array":[Landroid/os/Parcelable;
    instance-of v2, v0, [Landroid/app/Notification;

    if-nez v2, :cond_0

    if-nez v0, :cond_1

    .line 4896
    :cond_0
    check-cast v0, [Landroid/app/Notification;

    .end local v0    # "array":[Landroid/os/Parcelable;
    check-cast v0, [Landroid/app/Notification;

    move-object v1, v0

    .line 4901
    :goto_0
    return-object v1

    .line 4898
    .restart local v0    # "array":[Landroid/os/Parcelable;
    :cond_1
    array-length v2, v0

    const-class v3, [Landroid/app/Notification;

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/app/Notification;

    .line 4900
    .local v1, "typedArray":[Landroid/app/Notification;
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public static safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v1, 0x1400

    .line 1465
    if-nez p0, :cond_1

    .line 1475
    .end local p0    # "cs":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p0

    .line 1466
    .restart local p0    # "cs":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 1467
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 1469
    :cond_2
    instance-of v0, p0, Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 1470
    const-string v0, "Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance is a custom Parcelable and not allowed in Notification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static visibilityToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "vis"    # I

    .prologue
    .line 1744
    packed-switch p0, :pswitch_data_0

    .line 1752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1746
    :pswitch_0
    const-string v0, "PRIVATE"

    goto :goto_0

    .line 1748
    :pswitch_1
    const-string v0, "PUBLIC"

    goto :goto_0

    .line 1750
    :pswitch_2
    const-string v0, "SECRET"

    goto :goto_0

    .line 1744
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public clone()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 1337
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 1338
    .local v0, "that":Landroid/app/Notification;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 1339
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public cloneInto(Landroid/app/Notification;Z)V
    .locals 9
    .param p1, "that"    # Landroid/app/Notification;
    .param p2, "heavy"    # Z

    .prologue
    const/4 v8, 0x0

    .line 1348
    iget-wide v6, p0, Landroid/app/Notification;->when:J

    iput-wide v6, p1, Landroid/app/Notification;->when:J

    .line 1349
    iget v5, p0, Landroid/app/Notification;->icon:I

    iput v5, p1, Landroid/app/Notification;->icon:I

    .line 1350
    iget v5, p0, Landroid/app/Notification;->number:I

    iput v5, p1, Landroid/app/Notification;->number:I

    .line 1353
    iget-object v5, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object v5, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1354
    iget-object v5, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iput-object v5, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 1355
    iget-object v5, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    iput-object v5, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 1357
    iget-object v5, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    .line 1358
    iget-object v5, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1360
    :cond_0
    if-eqz p2, :cond_1

    iget-object v5, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_1

    .line 1361
    iget-object v5, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v5}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v5

    iput-object v5, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 1363
    :cond_1
    if-eqz p2, :cond_2

    iget-object v5, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_2

    .line 1364
    iget-object v5, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v5}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v5

    iput-object v5, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1366
    :cond_2
    if-eqz p2, :cond_3

    iget-object v5, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    .line 1367
    iget-object v5, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-static {v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 1369
    :cond_3
    iget v5, p0, Landroid/app/Notification;->iconLevel:I

    iput v5, p1, Landroid/app/Notification;->iconLevel:I

    .line 1370
    iget-object v5, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v5, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1371
    iget v5, p0, Landroid/app/Notification;->audioStreamType:I

    iput v5, p1, Landroid/app/Notification;->audioStreamType:I

    .line 1372
    iget-object v5, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v5, :cond_4

    .line 1373
    new-instance v5, Landroid/media/AudioAttributes$Builder;

    iget-object v6, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v5, v6}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v5

    iput-object v5, p1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 1376
    :cond_4
    iget-object v4, p0, Landroid/app/Notification;->vibrate:[J

    .line 1377
    .local v4, "vibrate":[J
    if-eqz v4, :cond_5

    .line 1378
    array-length v0, v4

    .line 1379
    .local v0, "N":I
    new-array v3, v0, [J

    iput-object v3, p1, Landroid/app/Notification;->vibrate:[J

    .line 1380
    .local v3, "vib":[J
    invoke-static {v4, v8, v3, v8, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 1383
    .end local v0    # "N":I
    .end local v3    # "vib":[J
    :cond_5
    iget v5, p0, Landroid/app/Notification;->ledARGB:I

    iput v5, p1, Landroid/app/Notification;->ledARGB:I

    .line 1384
    iget v5, p0, Landroid/app/Notification;->ledOnMS:I

    iput v5, p1, Landroid/app/Notification;->ledOnMS:I

    .line 1385
    iget v5, p0, Landroid/app/Notification;->ledOffMS:I

    iput v5, p1, Landroid/app/Notification;->ledOffMS:I

    .line 1386
    iget v5, p0, Landroid/app/Notification;->defaults:I

    iput v5, p1, Landroid/app/Notification;->defaults:I

    .line 1388
    iget v5, p0, Landroid/app/Notification;->flags:I

    iput v5, p1, Landroid/app/Notification;->flags:I

    .line 1390
    iget v5, p0, Landroid/app/Notification;->priority:I

    iput v5, p1, Landroid/app/Notification;->priority:I

    .line 1392
    iget-object v5, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    iput-object v5, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 1394
    iget-object v5, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    iput-object v5, p1, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    .line 1396
    iget-object v5, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    iput-object v5, p1, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    .line 1398
    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v5, :cond_6

    .line 1400
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-direct {v5, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1402
    iget-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->size()I
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1409
    :cond_6
    :goto_0
    iget-object v5, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v5, :cond_7

    .line 1410
    iget-object v5, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v5, v5

    new-array v5, v5, [Landroid/app/Notification$Action;

    iput-object v5, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 1411
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v5, v5

    if-ge v2, v5, :cond_7

    .line 1412
    iget-object v5, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    iget-object v6, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/app/Notification$Action;->clone()Landroid/app/Notification$Action;

    move-result-object v6

    aput-object v6, v5, v2

    .line 1411
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1403
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 1404
    .local v1, "e":Landroid/os/BadParcelableException;
    const-string v5, "Notification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not unparcel extras from notification: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1405
    const/4 v5, 0x0

    iput-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    goto :goto_0

    .line 1416
    .end local v1    # "e":Landroid/os/BadParcelableException;
    :cond_7
    if-eqz p2, :cond_8

    iget-object v5, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_8

    .line 1417
    iget-object v5, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v5}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v5

    iput-object v5, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1420
    :cond_8
    if-eqz p2, :cond_9

    iget-object v5, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_9

    .line 1421
    iget-object v5, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v5}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v5

    iput-object v5, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 1424
    :cond_9
    iget v5, p0, Landroid/app/Notification;->visibility:I

    iput v5, p1, Landroid/app/Notification;->visibility:I

    .line 1426
    iget-object v5, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v5, :cond_a

    .line 1427
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 1428
    iget-object v5, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v6, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v5, v6, p2}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 1431
    :cond_a
    iget v5, p0, Landroid/app/Notification;->color:I

    iput v5, p1, Landroid/app/Notification;->color:I

    .line 1433
    if-nez p2, :cond_b

    .line 1434
    invoke-virtual {p1}, Landroid/app/Notification;->lightenPayload()V

    .line 1436
    :cond_b
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1479
    const/4 v0, 0x0

    return v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    return-object v0
.end method

.method public isGroupChild()Z
    .locals 1

    .prologue
    .line 1776
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupSummary()Z
    .locals 1

    .prologue
    .line 1769
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 1762
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.rebuild.contentView"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final lightenPayload()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1444
    iput-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 1445
    iput-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1446
    iput-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1447
    iput-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 1448
    iput-object v0, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 1449
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.largeIcon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1451
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.largeIcon.big"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1452
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.picture"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1453
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.bigText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1455
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.rebuild"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1457
    :cond_0
    return-void
.end method

.method public setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentTitle"    # Ljava/lang/CharSequence;
    .param p3, "contentText"    # Ljava/lang/CharSequence;
    .param p4, "contentIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1639
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1643
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-wide v2, p0, Landroid/app/Notification;->when:J

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1644
    iget v1, p0, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1645
    iget v1, p0, Landroid/app/Notification;->priority:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1646
    iget-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1647
    iget v1, p0, Landroid/app/Notification;->number:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 1648
    iget v1, p0, Landroid/app/Notification;->color:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1649
    iget v1, p0, Landroid/app/Notification;->flags:I

    # setter for: Landroid/app/Notification$Builder;->mFlags:I
    invoke-static {v0, v1}, Landroid/app/Notification$Builder;->access$302(Landroid/app/Notification$Builder;I)I

    .line 1650
    iget-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v2, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    .line 1651
    iget v1, p0, Landroid/app/Notification;->defaults:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 1652
    iget-object v1, p0, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 1655
    if-eqz p2, :cond_0

    .line 1656
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1658
    :cond_0
    if-eqz p3, :cond_1

    .line 1659
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1661
    :cond_1
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1662
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->buildInto(Landroid/app/Notification;)Landroid/app/Notification;

    .line 1663
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1667
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1668
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "Notification(pri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1669
    iget v4, p0, Landroid/app/Notification;->priority:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1670
    const-string v4, " contentView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1671
    iget-object v4, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_6

    .line 1672
    iget-object v4, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    const-string v4, "/0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1674
    iget-object v4, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1678
    :goto_0
    const-string v4, " vibrate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1679
    iget v4, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_7

    .line 1680
    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1695
    :goto_1
    const-string v4, " sound="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1696
    iget v4, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_b

    .line 1697
    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1703
    :goto_2
    const-string v4, " defaults=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1704
    iget v4, p0, Landroid/app/Notification;->defaults:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1705
    const-string v4, " flags=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1706
    iget v4, p0, Landroid/app/Notification;->flags:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1707
    const-string v4, " color=0x%08x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Landroid/app/Notification;->color:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1708
    iget-object v4, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1709
    const-string v4, " category="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1710
    iget-object v4, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1712
    :cond_0
    iget-object v4, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1713
    const-string v4, " groupKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    iget-object v4, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1716
    :cond_1
    iget-object v4, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1717
    const-string v4, " sortKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1718
    iget-object v4, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1720
    :cond_2
    iget-object v4, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v4, :cond_3

    .line 1721
    const-string v4, " actions="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1722
    iget-object v4, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1724
    :cond_3
    const-string v4, " vis="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1725
    iget v4, p0, Landroid/app/Notification;->visibility:I

    invoke-static {v4}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1726
    iget-object v4, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v4, :cond_4

    .line 1727
    const-string v4, " publicVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1728
    iget-object v4, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v4}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1731
    :cond_4
    iget-object v4, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_5

    .line 1732
    const-string v1, "com.htc.features"

    .line 1733
    .local v1, "htcFeaturesKey":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1734
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " features=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v5, v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1736
    .end local v1    # "htcFeaturesKey":Ljava/lang/String;
    :cond_5
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1737
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1676
    :cond_6
    const-string/jumbo v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1681
    :cond_7
    iget-object v4, p0, Landroid/app/Notification;->vibrate:[J

    if-eqz v4, :cond_a

    .line 1682
    iget-object v4, p0, Landroid/app/Notification;->vibrate:[J

    array-length v4, v4

    add-int/lit8 v0, v4, -0x1

    .line 1683
    .local v0, "N":I
    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1684
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v0, :cond_8

    .line 1685
    iget-object v4, p0, Landroid/app/Notification;->vibrate:[J

    aget-wide v4, v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1686
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1684
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1688
    :cond_8
    const/4 v4, -0x1

    if-eq v0, v4, :cond_9

    .line 1689
    iget-object v4, p0, Landroid/app/Notification;->vibrate:[J

    aget-wide v4, v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1691
    :cond_9
    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1693
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_a
    const-string/jumbo v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1698
    :cond_b
    iget-object v4, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v4, :cond_c

    .line 1699
    iget-object v4, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1701
    :cond_c
    const-string/jumbo v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1487
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1489
    iget-wide v0, p0, Landroid/app/Notification;->when:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1490
    iget v0, p0, Landroid/app/Notification;->icon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1491
    iget v0, p0, Landroid/app/Notification;->number:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1492
    iget-object v0, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 1493
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1494
    iget-object v0, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1498
    :goto_0
    iget-object v0, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 1499
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1500
    iget-object v0, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1504
    :goto_1
    iget-object v0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 1505
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1506
    iget-object v0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1510
    :goto_2
    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_3

    .line 1511
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1512
    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1516
    :goto_3
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_4

    .line 1517
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1518
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v3}, Landroid/widget/RemoteViews;->setActionCombineEnabled(Z)V

    .line 1519
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1523
    :goto_4
    iget-object v0, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 1524
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1525
    iget-object v0, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1530
    :goto_5
    iget v0, p0, Landroid/app/Notification;->defaults:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1531
    iget v0, p0, Landroid/app/Notification;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1533
    iget-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v0, :cond_6

    .line 1534
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1535
    iget-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v0, p1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1539
    :goto_6
    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1541
    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_7

    .line 1542
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1543
    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p1, v2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1548
    :goto_7
    iget-object v0, p0, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1549
    iget v0, p0, Landroid/app/Notification;->ledARGB:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1550
    iget v0, p0, Landroid/app/Notification;->ledOnMS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1551
    iget v0, p0, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1552
    iget v0, p0, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1554
    iget-object v0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_8

    .line 1555
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1556
    iget-object v0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1561
    :goto_8
    iget v0, p0, Landroid/app/Notification;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1563
    iget-object v0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1565
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1567
    iget-object v0, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1569
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1571
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1573
    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_9

    .line 1574
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1575
    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v3}, Landroid/widget/RemoteViews;->setActionCombineEnabled(Z)V

    .line 1576
    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1581
    :goto_9
    iget-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_a

    .line 1582
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1583
    iget-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v3}, Landroid/widget/RemoteViews;->setActionCombineEnabled(Z)V

    .line 1584
    iget-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1589
    :goto_a
    iget v0, p0, Landroid/app/Notification;->visibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1591
    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v0, :cond_b

    .line 1592
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1593
    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v0, p1, v2}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1598
    :goto_b
    iget v0, p0, Landroid/app/Notification;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1599
    return-void

    .line 1496
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1502
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 1508
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    .line 1514
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3

    .line 1521
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_4

    .line 1527
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_5

    .line 1537
    :cond_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_6

    .line 1545
    :cond_7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_7

    .line 1558
    :cond_8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 1578
    :cond_9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 1586
    :cond_a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 1595
    :cond_b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b
.end method
