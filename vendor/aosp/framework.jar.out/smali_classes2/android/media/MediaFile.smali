.class public Landroid/media/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field public static final FILE_TYPE_3GPP:I = 0x17

.field public static final FILE_TYPE_3GPP2:I = 0x18

.field public static final FILE_TYPE_AAC:I = 0x8

.field public static final FILE_TYPE_AMR:I = 0x4

.field public static final FILE_TYPE_ASF:I = 0x1a

.field public static final FILE_TYPE_AVI:I = 0x1d

.field public static final FILE_TYPE_AWB:I = 0x5

.field public static final FILE_TYPE_BMP:I = 0x22

.field public static final FILE_TYPE_DM:I = 0x34

.field public static final FILE_TYPE_FL:I = 0x33

.field public static final FILE_TYPE_FLAC:I = 0xa

.field public static final FILE_TYPE_GIF:I = 0x20

.field public static final FILE_TYPE_HTML:I = 0x65

.field public static final FILE_TYPE_HTTPLIVE:I = 0x2c

.field public static final FILE_TYPE_IMY:I = 0xd

.field public static final FILE_TYPE_JPEG:I = 0x1f

.field public static final FILE_TYPE_M3U:I = 0x29

.field public static final FILE_TYPE_M4A:I = 0x2

.field public static final FILE_TYPE_M4V:I = 0x16

.field public static final FILE_TYPE_MID:I = 0xb

.field public static final FILE_TYPE_MKA:I = 0x9

.field public static final FILE_TYPE_MKV:I = 0x1b

.field public static final FILE_TYPE_MP2PS:I = 0xc8

.field public static final FILE_TYPE_MP2TS:I = 0x1c

.field public static final FILE_TYPE_MP3:I = 0x1

.field public static final FILE_TYPE_MP4:I = 0x15

.field public static final FILE_TYPE_MS_EXCEL:I = 0x69

.field public static final FILE_TYPE_MS_POWERPOINT:I = 0x6a

.field public static final FILE_TYPE_MS_WORD:I = 0x68

.field public static final FILE_TYPE_OGG:I = 0x7

.field public static final FILE_TYPE_PDF:I = 0x66

.field public static final FILE_TYPE_PLS:I = 0x2a

.field public static final FILE_TYPE_PNG:I = 0x21

.field public static final FILE_TYPE_SMF:I = 0xc

.field public static final FILE_TYPE_TEXT:I = 0x64

.field public static final FILE_TYPE_WAV:I = 0x3

.field public static final FILE_TYPE_WBMP:I = 0x23

.field public static final FILE_TYPE_WEBM:I = 0x1e

.field public static final FILE_TYPE_WEBP:I = 0x24

.field public static final FILE_TYPE_WMA:I = 0x6

.field public static final FILE_TYPE_WMV:I = 0x19

.field public static final FILE_TYPE_WPL:I = 0x2b

.field public static final FILE_TYPE_XML:I = 0x67

.field public static final FILE_TYPE_ZIP:I = 0x6b

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x1

.field private static final FIRST_DRM_FILE_TYPE:I = 0x33

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x1f

.field private static final FIRST_MIDI_FILE_TYPE:I = 0xb

.field private static final FIRST_PLAYLIST_FILE_TYPE:I = 0x29

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x15

.field private static final FIRST_VIDEO_FILE_TYPE2:I = 0xc8

.field public static final HTC_FILE_TYPE_ADTS:I = 0x2ee2

.field public static final HTC_FILE_TYPE_FLV:I = 0x36b1

.field public static final HTC_FILE_TYPE_INK:I = 0x2711

.field public static final HTC_FILE_TYPE_JPS:I = 0x2712

.field public static final HTC_FILE_TYPE_MP3D:I = 0x32c9

.field public static final HTC_FILE_TYPE_MPO:I = 0x2713

.field public static final HTC_FILE_TYPE_QCP:I = 0x2ee1

.field public static final HTC_FILE_TYPE_XVID:I = 0x36b2

.field private static final HTC_FIRST_AUDIO_FILE_TYPE:I = 0x2ee1

.field private static final HTC_FIRST_DRM_AUDIO_FILE_TYPE:I = 0x32c9

.field private static final HTC_FIRST_IMAGE_FILE_TYPE:I = 0x2712

.field private static final HTC_FIRST_VIDEO_FILE_TYPE:I = 0x36b1

.field private static final HTC_LAST_AUDIO_FILE_TYPE:I = 0x2ee2

.field private static final HTC_LAST_DRM_AUDIO_FILE_TYPE:I = 0x32c9

.field private static final HTC_LAST_IMAGE_FILE_TYPE:I = 0x2713

.field private static final HTC_LAST_VIDEO_FILE_TYPE:I = 0x36b2

.field private static final LAST_AUDIO_FILE_TYPE:I = 0xa

.field private static final LAST_DRM_FILE_TYPE:I = 0x34

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x24

.field private static final LAST_MIDI_FILE_TYPE:I = 0xd

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x2c

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x1e

.field private static final LAST_VIDEO_FILE_TYPE2:I = 0xc8

.field public static final UNKNOWN_STRING:Ljava/lang/String; = "<unknown>"

.field private static mCustManager:Lcom/htc/customization/HtcCustomizationManager;

.field private static mCustReader:Lcom/htc/customization/HtcCustomizationReader;

.field public static final sFileExtensions:Ljava/lang/String;

.field private static final sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFileTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFormatToMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const v10, 0xb984

    const/16 v9, 0x2c

    const/16 v8, 0x300b

    const/16 v7, 0xb

    .line 164
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 166
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    .line 169
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    .line 172
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    .line 175
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    .line 215
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v3

    sput-object v3, Landroid/media/MediaFile;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    .line 216
    sget-object v3, Landroid/media/MediaFile;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    if-eqz v3, :cond_6

    sget-object v3, Landroid/media/MediaFile;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    const-string v4, "Android_Multimedia"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v6, v5}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    :goto_0
    sput-object v3, Landroid/media/MediaFile;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 221
    const-string v3, "MP3"

    const-string v4, "audio/mpeg"

    const/16 v5, 0x3009

    invoke-static {v3, v6, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 222
    const-string v3, "MPGA"

    const-string v4, "audio/mpeg"

    const/16 v5, 0x3009

    invoke-static {v3, v6, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 223
    const-string v3, "M4A"

    const/4 v4, 0x2

    const-string v5, "audio/mp4"

    invoke-static {v3, v4, v5, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 224
    const-string v3, "WAV"

    const/4 v4, 0x3

    const-string v5, "audio/x-wav"

    const/16 v6, 0x3008

    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 225
    const-string v3, "AMR"

    const/4 v4, 0x4

    const-string v5, "audio/amr"

    invoke-static {v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 226
    const-string v3, "AWB"

    const/4 v4, 0x5

    const-string v5, "audio/amr-wb"

    invoke-static {v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 227
    const-string v3, "MP3D"

    const/16 v4, 0x32c9

    const-string v5, "audio/mpeg"

    const/16 v6, 0x3009

    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 229
    invoke-static {}, Landroid/media/MediaFile;->isWMAEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    const-string v3, "WMA"

    const/4 v4, 0x6

    const-string v5, "audio/x-ms-wma"

    const v6, 0xb901

    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 232
    :cond_0
    const-string v3, "OGG"

    const/4 v4, 0x7

    const-string v5, "audio/ogg"

    const v6, 0xb902

    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 233
    const-string v3, "OGG"

    const/4 v4, 0x7

    const-string v5, "application/ogg"

    const v6, 0xb902

    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 234
    const-string v3, "OGA"

    const/4 v4, 0x7

    const-string v5, "application/ogg"

    const v6, 0xb902

    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 235
    const-string v3, "AAC"

    const/16 v4, 0x8

    const-string v5, "audio/aac"

    const v6, 0xb903

    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 236
    const-string v3, "AAC"

    const/16 v4, 0x8

    const-string v5, "audio/aac-adts"

    const v6, 0xb903

    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 237
    const-string v3, "ADTS"

    const/16 v4, 0x2ee2

    const-string v5, "audio/aac-adts"

    const v6, 0xb903

    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 238
    const-string v3, "MKA"

    const/16 v4, 0x9

    const-string v5, "audio/x-matroska"

    invoke-static {v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 241
    sget-object v3, Landroid/media/MediaFile;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v3, :cond_1

    sget-object v3, Landroid/media/MediaFile;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v4, "support_qcelp"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    const-string v3, "QCP"

    const/16 v4, 0x2ee1

    const-string v5, "audio/qcelp"

    invoke-static {v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 245
    :cond_1
    const-string v3, "MID"

    const-string v4, "audio/midi"

    invoke-static {v3, v7, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 246
    const-string v3, "MIDI"

    const-string v4, "audio/midi"

    invoke-static {v3, v7, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 247
    const-string v3, "XMF"

    const-string v4, "audio/midi"

    invoke-static {v3, v7, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 248
    const-string v3, "RTTTL"

    const-string v4, "audio/midi"

    invoke-static {v3, v7, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 249
    const-string v3, "SMF"

    const/16 v4, 0xc

    const-string v5, "audio/sp-midi"

    invoke-static {v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 250
    const-string v3, "IMY"

    const/16 v4, 0xd

    const-string v5, "audio/imelody"

    invoke-static {v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 251
    const-string v3, "RTX"

    const-string v4, "audio/midi"

    invoke-static {v3, v7, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 252
    const-string v3, "OTA"

    const-string v4, "audio/midi"

    invoke-static {v3, v7, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 253
    const-string v3, "MXMF"

    const-string v4, "audio/midi"

    invoke-static {v3, v7, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 255
    const-string v3, "MPEG"

    const/16 v4, 0x15

    const-string v5, "video/mpeg"

    invoke-static {v3, v4, v5, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 256
    const-string v3, "MPG"

    const/16 v4, 0x15

    const-string v5, "video/mpeg"

    invoke-static {v3, v4, v5, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 257
    const-string v3, "MP4"

    const/16 v4, 0x15

    const-string v5, "video/mp4"

    invoke-static {v3, v4, v5, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 258
    const-string v3, "M4V"

    const/16 v4, 0x16

    const-string v5, "video/mp4"

    invoke-static {v3, v4, v5, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 259
    const-string v3, "3GP"

    const/16 v4, 0x17

    const-string v5, "video/3gpp"

    invoke-static {v3, v4, v5, v10}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 260
    const-string v3, "3GPP"

    const/16 v4, 0x17

    const-string v5, "video/3gpp"

    invoke-static {v3, v4, v5, v10}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 261
    const-string v3, "3G2"

    const/16 v4, 0x18

    const-string v5, "video/3gpp2"

    invoke-static {v3, v4, v5, v10}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 262
    const-string v3, "3GPP2"

    const/16 v4, 0x18

    const-string v5, "video/3gpp2"

    invoke-static {v3, v4, v5, v10}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 263
    const-string v3, "MKV"

    const/16 v4, 0x1b

    const-string v5, "video/x-matroska"

    invoke-static {v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 264
    const-string v3, "WEBM"

    const/16 v4, 0x1e

    const-string v5, "video/webm"

    invoke-static {v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 265
    const-string v3, "TS"

    const/16 v4, 0x1c

    const-string v5, "video/mp2ts"

    invoke-static {v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 266
    const-string v3, "AVI"

    const/16 v4, 0x1d

    const-string v5, "video/avi"

    invoke-static {v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 267
    const-string v3, "AVI"

    const/16 v4, 0x1d

    const-string v5, "video/x-msvideo"

    invoke-static {v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 268
    const-string v3, "XVID"

    const/16 v4, 0x36b2

    const-string v5, "video/x-xvid"

    invoke-static {v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 269
    const-string v3, "FLV"

    const/16 v4, 0x36b1

    const-string v5, "video/x-flv"

    invoke-static {v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 270
    const-string v3, "M2TS"

    const/16 v4, 0x1c

    const-string v5, "video/mp2ts"

    invoke-static {v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 272
    invoke-static {}, Landroid/media/MediaFile;->isWMVEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 273
    const-string v3, "WMV"

    const/16 v4, 0x19

    const-string v5, "video/x-ms-wmv"

    const v6, 0xb981

    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 274
    const-string v3, "ASF"

    const/16 v4, 0x1a

    const-string v5, "video/x-ms-asf"

    invoke-static {v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 278
    :cond_2
    const-string v3, "JPS"

    const/16 v4, 0x2712

    const-string v5, "image/jps"

    invoke-static {v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 279
    const-string v3, "MPO"

    const/16 v4, 0x2713

    const-string v5, "image/mpo"

    invoke-static {v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 287
    const-string v3, "JPG"

    const/16 v4, 0x1f

    const-string v5, "image/jpeg"

    const/16 v6, 0x3801

    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 288
    const-string v3, "JPEG"

    const/16 v4, 0x1f

    const-string v5, "image/jpeg"

    const/16 v6, 0x3801

    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 289
    const-string v3, "GIF"

    const/16 v4, 0x20

    const-string v5, "image/gif"

    const/16 v6, 0x3807

    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 290
    const-string v3, "PNG"

    const/16 v4, 0x21

    const-string v5, "image/png"

    const/16 v6, 0x380b

    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 291
    const-string v3, "BMP"

    const/16 v4, 0x22

    const-string v5, "image/x-ms-bmp"

    const/16 v6, 0x3804

    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 292
    const-string v3, "WBMP"

    const/16 v4, 0x23

    const-string v5, "image/vnd.wap.wbmp"

    invoke-static {v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 293
    const-string v3, "WEBP"

    const/16 v4, 0x24

    const-string v5, "image/webp"

    invoke-static {v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 295
    const-string v3, "M3U"

    const/16 v4, 0x29

    const-string v5, "audio/x-mpegurl"

    const v6, 0xba11

    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 296
    const-string v3, "M3U"

    const/16 v4, 0x29

    const-string v5, "application/x-mpegurl"

    const v6, 0xba11

    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 297
    const-string v3, "PLS"

    const/16 v4, 0x2a

    const-string v5, "audio/x-scpls"

    const v6, 0xba14

    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 298
    const-string v3, "WPL"

    const/16 v4, 0x2b

    const-string v5, "application/vnd.ms-wpl"

    const v6, 0xba10

    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 299
    const-string v3, "M3U8"

    const-string v4, "application/vnd.apple.mpegurl"

    invoke-static {v3, v9, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 300
    const-string v3, "M3U8"

    const-string v4, "audio/mpegurl"

    invoke-static {v3, v9, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 301
    const-string v3, "M3U8"

    const-string v4, "audio/x-mpegurl"

    invoke-static {v3, v9, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 303
    const-string v3, "FL"

    const/16 v4, 0x33

    const-string v5, "application/x-android-drm-fl"

    invoke-static {v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 304
    const-string v3, "DM"

    const/16 v4, 0x34

    const-string v5, "application/vnd.oma.drm.message"

    invoke-static {v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 306
    const-string v3, "TXT"

    const/16 v4, 0x64

    const-string v5, "text/plain"

    const/16 v6, 0x3004

    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 307
    const-string v3, "HTM"

    const/16 v4, 0x65

    const-string v5, "text/html"

    const/16 v6, 0x3005

    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 308
    const-string v3, "HTML"

    const/16 v4, 0x65

    const-string v5, "text/html"

    const/16 v6, 0x3005

    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 309
    const-string v3, "PDF"

    const/16 v4, 0x66

    const-string v5, "application/pdf"

    invoke-static {v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 310
    const-string v3, "DOC"

    const/16 v4, 0x68

    const-string v5, "application/msword"

    const v6, 0xba83

    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 311
    const-string v3, "XLS"

    const/16 v4, 0x69

    const-string v5, "application/vnd.ms-excel"

    const v6, 0xba85

    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 312
    const-string v3, "PPT"

    const/16 v4, 0x6a

    const-string v5, "application/mspowerpoint"

    const v6, 0xba86

    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 313
    const-string v3, "FLAC"

    const/16 v4, 0xa

    const-string v5, "audio/flac"

    const v6, 0xb906

    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 314
    const-string v3, "ZIP"

    const/16 v4, 0x6b

    const-string v5, "application/zip"

    invoke-static {v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 315
    const-string v3, "MPG"

    const/16 v4, 0xc8

    const-string v5, "video/mp2p"

    invoke-static {v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 316
    const-string v3, "MPEG"

    const/16 v4, 0xc8

    const-string v5, "video/mp2p"

    invoke-static {v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .local v0, "builder":Ljava/lang/StringBuilder;
    sget-object v3, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 321
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 322
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 323
    .local v1, "extension":Ljava/lang/String;
    sget-object v3, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaFile$MediaFileType;

    iget v3, v3, Landroid/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaFile$MediaFileType;

    iget v3, v3, Landroid/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaFile$MediaFileType;

    iget v3, v3, Landroid/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 326
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 327
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 216
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "extension":Ljava/lang/String;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 332
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/media/MediaFile;->sFileExtensions:Ljava/lang/String;

    .line 333
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p0, "extension"    # Ljava/lang/String;
    .param p1, "fileType"    # I
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 179
    sget-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Landroid/media/MediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .param p0, "extension"    # Ljava/lang/String;
    .param p1, "fileType"    # I
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "mtpFormatCode"    # I

    .prologue
    .line 184
    invoke-static {p0, p1, p2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 185
    sget-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    return-void
.end method

.method public static getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 531
    if-nez p0, :cond_0

    move-object v0, v3

    .line 585
    :goto_0
    return-object v0

    .line 533
    :cond_0
    const-string v2, "image/bmp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 534
    const-string v0, "BMP"

    goto :goto_0

    .line 536
    :cond_1
    const-string v2, "audio/wav"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 537
    const-string v0, "WAV"

    goto :goto_0

    .line 539
    :cond_2
    const-string v2, "audio/x-mpeg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 540
    const-string v0, "MP3"

    goto :goto_0

    .line 542
    :cond_3
    const-string v2, "audio/mp3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 543
    const-string v0, "MP3"

    goto :goto_0

    .line 545
    :cond_4
    const-string v2, "video/3g2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 546
    const-string v0, "3G2"

    goto :goto_0

    .line 548
    :cond_5
    const-string v2, "audio/3gpp2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 549
    const-string v0, "3G2"

    goto :goto_0

    .line 551
    :cond_6
    const-string v2, "audio/3gpp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 552
    const-string v0, "3GPP"

    goto :goto_0

    .line 554
    :cond_7
    const-string v2, "audio/aac"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 555
    const-string v0, "AAC"

    goto :goto_0

    .line 557
    :cond_8
    const-string v2, "audio/x-aac"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 558
    const-string v0, "AAC"

    goto :goto_0

    .line 560
    :cond_9
    const-string v2, "audio/x-midi"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 561
    const-string v0, "MIDI"

    goto :goto_0

    .line 564
    :cond_a
    const-string v2, "audio/mp3d"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 565
    const-string v0, "MP3"

    goto :goto_0

    .line 567
    :cond_b
    const-string v2, "audio/mp4a-latm"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 568
    const-string v0, "M4A"

    goto/16 :goto_0

    .line 572
    :cond_c
    const-string v2, "audio/m4a"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 573
    const-string v0, "M4A"

    goto/16 :goto_0

    .line 578
    :cond_d
    sget-object v2, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 580
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 581
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 582
    .local v0, "extension":Ljava/lang/String;
    sget-object v2, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFile$MediaFileType;

    iget-object v2, v2, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto/16 :goto_0

    .end local v0    # "extension":Ljava/lang/String;
    :cond_f
    move-object v0, v3

    .line 585
    goto/16 :goto_0
.end method

.method public static getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 485
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 486
    .local v1, "lastSlash":I
    if-ltz v1, :cond_0

    .line 487
    add-int/lit8 v1, v1, 0x1

    .line 488
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 489
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 493
    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 494
    .local v0, "lastDot":I
    if-lez v0, :cond_1

    .line 495
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 497
    :cond_1
    return-object p0
.end method

.method public static getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 391
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 392
    .local v0, "lastDot":I
    if-gez v0, :cond_0

    .line 393
    const/4 v1, 0x0

    .line 396
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFile$MediaFileType;

    goto :goto_0
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .locals 6
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x18

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 413
    if-nez p0, :cond_1

    .line 473
    :cond_0
    :goto_0
    return v1

    .line 419
    :cond_1
    const-string v5, "audio/3gpp"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v2

    .line 420
    goto :goto_0

    .line 431
    :cond_2
    const-string v5, "video/mp4-3d"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 432
    const/16 v1, 0x15

    goto :goto_0

    .line 437
    :cond_3
    const-string v5, "image/bmp"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 438
    const/16 v1, 0x22

    goto :goto_0

    .line 440
    :cond_4
    const-string v5, "audio/wav"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 441
    const/4 v1, 0x3

    goto :goto_0

    .line 443
    :cond_5
    const-string v5, "audio/x-mpeg"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v1, v3

    .line 444
    goto :goto_0

    .line 446
    :cond_6
    const-string v5, "audio/mp3"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v1, v3

    .line 447
    goto :goto_0

    .line 449
    :cond_7
    const-string v3, "video/3g2"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v1, v4

    .line 450
    goto :goto_0

    .line 452
    :cond_8
    const-string v3, "audio/3gpp2"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v1, v4

    .line 453
    goto :goto_0

    .line 455
    :cond_9
    const-string v3, "audio/x-aac"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 456
    const/16 v1, 0x8

    goto :goto_0

    .line 458
    :cond_a
    const-string v3, "audio/x-midi"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 459
    const/16 v1, 0xb

    goto :goto_0

    .line 461
    :cond_b
    const-string v3, "audio/mp3d"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 462
    const/16 v1, 0x32c9

    goto :goto_0

    .line 464
    :cond_c
    const-string v3, "audio/mp4a-latm"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move v1, v2

    .line 465
    goto :goto_0

    .line 467
    :cond_d
    const-string v3, "audio/m4a"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    move v1, v2

    .line 468
    goto/16 :goto_0

    .line 472
    :cond_e
    sget-object v2, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 473
    .local v0, "value":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto/16 :goto_0
.end method

.method public static getFileTypeValue(Ljava/lang/String;)I
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 402
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v0

    .line 404
    .local v0, "type":Landroid/media/MediaFile$MediaFileType;
    if-nez v0, :cond_0

    .line 405
    const/4 v1, 0x0

    .line 408
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    goto :goto_0
.end method

.method public static getFormatCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 506
    if-eqz p1, :cond_0

    .line 507
    sget-object v4, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 508
    .local v3, "value":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 509
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 526
    .end local v3    # "value":Ljava/lang/Integer;
    :goto_0
    return v4

    .line 512
    :cond_0
    const/16 v4, 0x2e

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 513
    .local v2, "lastDot":I
    if-lez v2, :cond_1

    .line 514
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, "extension":Ljava/lang/String;
    sget-object v4, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 516
    .restart local v3    # "value":Ljava/lang/Integer;
    if-eqz v3, :cond_1

    .line 517
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    .line 521
    .end local v0    # "extension":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 522
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 523
    const/16 v4, 0x3001

    goto :goto_0

    .line 526
    :cond_2
    const/16 v4, 0x3000

    goto :goto_0
.end method

.method public static getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 501
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v0

    .line 502
    .local v0, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getMimeTypeForFormatCode(I)Ljava/lang/String;
    .locals 2
    .param p0, "formatCode"    # I

    .prologue
    .line 589
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isAudioFileType(I)Z
    .locals 3
    .param p0, "fileType"    # I

    .prologue
    const/16 v2, 0x32c9

    const/4 v0, 0x1

    .line 338
    if-lt p0, v0, :cond_0

    const/16 v1, 0xa

    if-le p0, v1, :cond_3

    :cond_0
    const/16 v1, 0xb

    if-lt p0, v1, :cond_1

    const/16 v1, 0xd

    if-le p0, v1, :cond_3

    :cond_1
    const/16 v1, 0x2ee1

    if-lt p0, v1, :cond_2

    const/16 v1, 0x2ee2

    if-le p0, v1, :cond_3

    :cond_2
    if-lt p0, v2, :cond_4

    if-gt p0, v2, :cond_4

    :cond_3
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDrmFileType(I)Z
    .locals 1
    .param p0, "fileType"    # I

    .prologue
    .line 386
    const/16 v0, 0x33

    if-lt p0, v0, :cond_0

    const/16 v0, 0x34

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHtcInkFileType(I)Z
    .locals 1
    .param p0, "fileType"    # I

    .prologue
    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public static isImageFileType(I)Z
    .locals 1
    .param p0, "fileType"    # I

    .prologue
    .line 358
    const/16 v0, 0x1f

    if-lt p0, v0, :cond_0

    const/16 v0, 0x24

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2712

    if-lt p0, v0, :cond_2

    const/16 v0, 0x2713

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMimeTypeMedia(Ljava/lang/String;)Z
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 477
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 478
    .local v0, "fileType":I
    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPlayListFileType(I)Z
    .locals 1
    .param p0, "fileType"    # I

    .prologue
    .line 381
    const/16 v0, 0x29

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2c

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoFileType(I)Z
    .locals 2
    .param p0, "fileType"    # I

    .prologue
    const/16 v1, 0xc8

    .line 349
    const/16 v0, 0x15

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1e

    if-le p0, v0, :cond_2

    :cond_0
    if-lt p0, v1, :cond_1

    if-le p0, v1, :cond_2

    :cond_1
    const/16 v0, 0x36b1

    if-lt p0, v0, :cond_3

    const/16 v0, 0x36b2

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWMAEnabled()Z
    .locals 5

    .prologue
    .line 191
    invoke-static {}, Landroid/media/DecoderCapabilities;->getAudioDecoders()Ljava/util/List;

    move-result-object v2

    .line 192
    .local v2, "decoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/DecoderCapabilities$AudioDecoder;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 193
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 194
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/DecoderCapabilities$AudioDecoder;

    .line 195
    .local v1, "decoder":Landroid/media/DecoderCapabilities$AudioDecoder;
    sget-object v4, Landroid/media/DecoderCapabilities$AudioDecoder;->AUDIO_DECODER_WMA:Landroid/media/DecoderCapabilities$AudioDecoder;

    if-ne v1, v4, :cond_0

    .line 196
    const/4 v4, 0x1

    .line 199
    .end local v1    # "decoder":Landroid/media/DecoderCapabilities$AudioDecoder;
    :goto_1
    return v4

    .line 193
    .restart local v1    # "decoder":Landroid/media/DecoderCapabilities$AudioDecoder;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 199
    .end local v1    # "decoder":Landroid/media/DecoderCapabilities$AudioDecoder;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static isWMVEnabled()Z
    .locals 5

    .prologue
    .line 203
    invoke-static {}, Landroid/media/DecoderCapabilities;->getVideoDecoders()Ljava/util/List;

    move-result-object v2

    .line 204
    .local v2, "decoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/DecoderCapabilities$VideoDecoder;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 205
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 206
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/DecoderCapabilities$VideoDecoder;

    .line 207
    .local v1, "decoder":Landroid/media/DecoderCapabilities$VideoDecoder;
    sget-object v4, Landroid/media/DecoderCapabilities$VideoDecoder;->VIDEO_DECODER_WMV:Landroid/media/DecoderCapabilities$VideoDecoder;

    if-ne v1, v4, :cond_0

    .line 208
    const/4 v4, 0x1

    .line 211
    .end local v1    # "decoder":Landroid/media/DecoderCapabilities$VideoDecoder;
    :goto_1
    return v4

    .line 205
    .restart local v1    # "decoder":Landroid/media/DecoderCapabilities$VideoDecoder;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 211
    .end local v1    # "decoder":Landroid/media/DecoderCapabilities$VideoDecoder;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
