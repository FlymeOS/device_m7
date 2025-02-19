.class public interface abstract Lcom/android/internal/telephony/Phone;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Phone$SuppService;,
        Lcom/android/internal/telephony/Phone$DataActivityState;
    }
.end annotation


# static fields
.field public static final BM_AUS2_BAND:I = 0x5

.field public static final BM_AUS_BAND:I = 0x4

.field public static final BM_BOUNDARY:I = 0x6

.field public static final BM_EURO_BAND:I = 0x1

.field public static final BM_GSM_ONLY:I = 0x1

.field public static final BM_GSM_UMTS_HYBRID:I = 0x3

.field public static final BM_JPN_BAND:I = 0x3

.field public static final BM_NONE:I = 0x0

.field public static final BM_UMTS_ONLY:I = 0x2

.field public static final BM_UNSPECIFIED:I = 0x0

.field public static final BM_US_BAND:I = 0x2

.field public static final CALL_DOMAIN_AUTOMATIC:I = 0x3

.field public static final CALL_DOMAIN_CS:I = 0x1

.field public static final CALL_DOMAIN_NOT_SET:I = 0x4

.field public static final CALL_DOMAIN_PS:I = 0x2

.field public static final CALL_TYPE_INVALID:I = -0x1

.field public static final CALL_TYPE_SMS:I = 0xa

.field public static final CALL_TYPE_UNKNOWN:I = 0x9

.field public static final CALL_TYPE_VOICE:I = 0x0

.field public static final CALL_TYPE_VT:I = 0x3

.field public static final CALL_TYPE_VT_NODIR:I = 0x4

.field public static final CALL_TYPE_VT_RX:I = 0x2

.field public static final CALL_TYPE_VT_TX:I = 0x1

.field public static final CDMA_OTA_PROVISION_STATUS_ALREADY_SUCCESSFUL:I = 0xc

.field public static final CDMA_OTA_PROVISION_STATUS_A_KEY_EXCHANGED:I = 0x2

.field public static final CDMA_OTA_PROVISION_STATUS_COMMITTED:I = 0x8

.field public static final CDMA_OTA_PROVISION_STATUS_IMSI_DOWNLOADED:I = 0x6

.field public static final CDMA_OTA_PROVISION_STATUS_INITIAL_REQUIRED:I = 0xd

.field public static final CDMA_OTA_PROVISION_STATUS_IN_PROGRESS:I = 0xe

.field public static final CDMA_OTA_PROVISION_STATUS_MDN_DOWNLOADED:I = 0x5

.field public static final CDMA_OTA_PROVISION_STATUS_NAM_DOWNLOADED:I = 0x4

.field public static final CDMA_OTA_PROVISION_STATUS_OTAPA_ABORTED:I = 0xb

.field public static final CDMA_OTA_PROVISION_STATUS_OTAPA_STARTED:I = 0x9

.field public static final CDMA_OTA_PROVISION_STATUS_OTAPA_STOPPED:I = 0xa

.field public static final CDMA_OTA_PROVISION_STATUS_OTAPA_SUCCESSFUL:I = 0x12

.field public static final CDMA_OTA_PROVISION_STATUS_PRL_DOWNLOADED:I = 0x7

.field public static final CDMA_OTA_PROVISION_STATUS_PROGRAM_SUCCESSFUL:I = 0xf

.field public static final CDMA_OTA_PROVISION_STATUS_PROGRAM_UNSUCCESSFUL:I = 0x10

.field public static final CDMA_OTA_PROVISION_STATUS_SPC_DOWNLOADED:I = 0x11

.field public static final CDMA_OTA_PROVISION_STATUS_SPC_RETRIES_EXCEEDED:I = 0x1

.field public static final CDMA_OTA_PROVISION_STATUS_SPL_UNLOCKED:I = 0x0

.field public static final CDMA_OTA_PROVISION_STATUS_SSD_UPDATED:I = 0x3

.field public static final CDMA_OTA_PROVISION_STATUS_UNSUCCESS_THREE_TIMES:I = 0x13

.field public static final CDMA_RM_AFFILIATED:I = 0x1

.field public static final CDMA_RM_ANY:I = 0x2

.field public static final CDMA_RM_HOME:I = 0x0

.field public static final CDMA_SUBSCRIPTION_NV:I = 0x1

.field public static final CDMA_SUBSCRIPTION_RUIM_SIM:I = 0x0

.field public static final CDMA_SUBSCRIPTION_UNKNOWN:I = -0x1

.field public static final CLIR_DEFAULT:I = 0x0

.field public static final CLIR_INVOCATION:I = 0x1

.field public static final CLIR_SUPPRESSION:I = 0x2

.field public static final DATA_GATEWAY_KEY:Ljava/lang/String; = "gateway"

.field public static final DATA_IFACE_NAME_KEY:Ljava/lang/String; = "iface"

.field public static final DATA_NETWORK_ROAMING_KEY:Ljava/lang/String; = "networkRoaming"

.field public static final DEBUG_PHONE:Z = true

.field public static final DEVICE_INFO_SLOT1_CDMA_IMSI:Ljava/lang/String; = "slot1_cdma_imsi"

.field public static final DEVICE_INFO_SLOT1_GSM_IMSI:Ljava/lang/String; = "slot1_gsm_imsi"

.field public static final DEVICE_INFO_SLOT1_IMEI:Ljava/lang/String; = "slot1_imei"

.field public static final DEVICE_INFO_SLOT1_MEID:Ljava/lang/String; = "slot1_meid"

.field public static final DEVICE_INFO_SLOT2_CDMA_IMSI:Ljava/lang/String; = "slot2_cdma_imsi"

.field public static final DEVICE_INFO_SLOT2_GSM_IMSI:Ljava/lang/String; = "slot2_gsm_imsi"

.field public static final DEVICE_INFO_SLOT2_IMEI:Ljava/lang/String; = "slot2_imei"

.field public static final DEVICE_INFO_SLOT2_MEID:Ljava/lang/String; = "slot2_meid"

.field public static final EXTRAS_IS_CONFERENCE_URI:Ljava/lang/String; = "isConferenceUri"

.field public static final EXTRA_SKIP_SCHEMA_PARSING:Ljava/lang/String; = "skipSchemaParsing"

.field public static final FEATURE_ENABLE_ADMIN:Ljava/lang/String; = "enableADMIN"

.field public static final FEATURE_ENABLE_CALLER_NAME_ID:Ljava/lang/String; = "enableCALLERNAMEID"

.field public static final FEATURE_ENABLE_CBS:Ljava/lang/String; = "enableCBS"

.field public static final FEATURE_ENABLE_DUN:Ljava/lang/String; = "enableDUN"

.field public static final FEATURE_ENABLE_DUN_ALWAYS:Ljava/lang/String; = "enableDUNAlways"

.field public static final FEATURE_ENABLE_EMERGENCY:Ljava/lang/String; = "enableEmergency"

.field public static final FEATURE_ENABLE_ENTITLE:Ljava/lang/String; = "enableENTITLE"

.field public static final FEATURE_ENABLE_FOTA:Ljava/lang/String; = "enableFOTA"

.field public static final FEATURE_ENABLE_HIPRI:Ljava/lang/String; = "enableHIPRI"

.field public static final FEATURE_ENABLE_HTTPPROXY:Ljava/lang/String; = "enableHTTPPROXY"

.field public static final FEATURE_ENABLE_IMS:Ljava/lang/String; = "enableIMS"

.field public static final FEATURE_ENABLE_INTERNET:Ljava/lang/String; = "enableINTERNET"

.field public static final FEATURE_ENABLE_MMS:Ljava/lang/String; = "enableMMS"

.field public static final FEATURE_ENABLE_SUPL:Ljava/lang/String; = "enableSUPL"

.field public static final FEATURE_ENABLE_VZW800:Ljava/lang/String; = "enable800APN"

.field public static final FEATURE_ENABLE_VZWAPPAPN:Ljava/lang/String; = "enableVZWAPPAPN"

.field public static final NETWORK_UNAVAILABLE_KEY:Ljava/lang/String; = "networkUnvailable"

.field public static final NT_MODE_CDMA:I = 0x4

.field public static final NT_MODE_CDMA_NO_EVDO:I = 0x5

.field public static final NT_MODE_EVDO_NO_CDMA:I = 0x6

.field public static final NT_MODE_GLOBAL:I = 0x7

.field public static final NT_MODE_GSM_ONLY:I = 0x1

.field public static final NT_MODE_GSM_UMTS:I = 0x3

.field public static final NT_MODE_LTE_CDMA_AND_EVDO:I = 0x8

.field public static final NT_MODE_LTE_CDMA_EVDO_GSM_WCDMA:I = 0xa

.field public static final NT_MODE_LTE_GSM_WCDMA:I = 0x9

.field public static final NT_MODE_LTE_ONLY:I = 0xb

.field public static final NT_MODE_LTE_WCDMA:I = 0xc

.field public static final NT_MODE_WCDMA_ONLY:I = 0x2

.field public static final NT_MODE_WCDMA_PREF:I = 0x0

.field public static final PHONE_IN_ECM_STATE:Ljava/lang/String; = "phoneinECMState"

.field public static final PREFERRED_CDMA_SUBSCRIPTION:I = 0x1

.field public static final PREFERRED_NT_MODE:I = 0x0

.field public static final PROP_KEY_WORLD_PHONE_UI_ENABLED:Ljava/lang/String; = "persist.radio.worldphone"

.field public static final REASON_APN_CHANGED:Ljava/lang/String; = "apnChanged"

.field public static final REASON_APN_FAILED:Ljava/lang/String; = "apnFailed"

.field public static final REASON_APN_SWITCHED:Ljava/lang/String; = "apnSwitched"

.field public static final REASON_CDMA_DATA_ATTACHED:Ljava/lang/String; = "cdmaDataAttached"

.field public static final REASON_CDMA_DATA_DETACHED:Ljava/lang/String; = "cdmaDataDetached"

.field public static final REASON_CONNECTED:Ljava/lang/String; = "connected"

.field public static final REASON_DATA_ATTACHED:Ljava/lang/String; = "dataAttached"

.field public static final REASON_DATA_DEPENDENCY_MET:Ljava/lang/String; = "dependencyMet"

.field public static final REASON_DATA_DEPENDENCY_UNMET:Ljava/lang/String; = "dependencyUnmet"

.field public static final REASON_DATA_DETACHED:Ljava/lang/String; = "dataDetached"

.field public static final REASON_DATA_DISABLED:Ljava/lang/String; = "dataDisabled"

.field public static final REASON_DATA_ENABLED:Ljava/lang/String; = "dataEnabled"

.field public static final REASON_DATA_SPECIFIC_DISABLED:Ljava/lang/String; = "specificDisabled"

.field public static final REASON_DUALIP_PARTIAL_FAILURE:Ljava/lang/String; = "DualIpPartialFailure"

.field public static final REASON_GET_NEW_MPDN_TABLE:Ljava/lang/String; = "getNewMPDNTable"

.field public static final REASON_GLOBAL_ROAMING_OFF:Ljava/lang/String; = "globalRoamingOff"

.field public static final REASON_GLOBAL_ROAMING_ON:Ljava/lang/String; = "globalRoamingOn"

.field public static final REASON_INTERNAL_DATA_DISABLED:Ljava/lang/String; = "internaldataDisabled"

.field public static final REASON_LINK_PROPERTIES_CHANGED:Ljava/lang/String; = "linkPropertiesChanged"

.field public static final REASON_LOST_DATA_CONNECTION:Ljava/lang/String; = "lostDataConnection"

.field public static final REASON_NETWORK_DISCONNECT:Ljava/lang/String; = "networkOrModemDisconnect"

.field public static final REASON_NW_TYPE_CHANGED:Ljava/lang/String; = "nwTypeChanged"

.field public static final REASON_PDP_RESET:Ljava/lang/String; = "pdpReset"

.field public static final REASON_PS_RESTRICT_DISABLED:Ljava/lang/String; = "psRestrictDisabled"

.field public static final REASON_PS_RESTRICT_ENABLED:Ljava/lang/String; = "psRestrictEnabled"

.field public static final REASON_RADIO_TURNED_OFF:Ljava/lang/String; = "radioTurnedOff"

.field public static final REASON_RESTORE_DEFAULT_APN:Ljava/lang/String; = "restoreDefaultApn"

.field public static final REASON_ROAMING_OFF:Ljava/lang/String; = "roamingOff"

.field public static final REASON_ROAMING_ON:Ljava/lang/String; = "roamingOn"

.field public static final REASON_SIM_LOADED:Ljava/lang/String; = "simLoaded"

.field public static final REASON_SINGLE_PDN_ARBITRATION:Ljava/lang/String; = "SinglePdnArbitration"

.field public static final REASON_TRY_SETUP_DATA_DENIED:Ljava/lang/String; = "trySetupDataDenied"

.field public static final REASON_VOICE_CALL_ENDED:Ljava/lang/String; = "2GVoiceCallEnded"

.field public static final REASON_VOICE_CALL_STARTED:Ljava/lang/String; = "2GVoiceCallStarted"

.field public static final TTY_MODE_FULL:I = 0x1

.field public static final TTY_MODE_HCO:I = 0x2

.field public static final TTY_MODE_OFF:I = 0x0

.field public static final TTY_MODE_VCO:I = 0x3


# virtual methods
.method public abstract HtcisDataConnectivityPossible(Ljava/lang/String;)Z
.end method

.method public abstract acceptCall(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract acceptConnectionTypeChange(Lcom/android/internal/telephony/Connection;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Connection;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract acquireOwnershipOfImsPhone(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
.end method

.method public abstract activateCellBroadcastSms(ILandroid/os/Message;)V
.end method

.method public abstract addParticipant(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract addParticipant(Ljava/lang/String;II[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract addPreferredOperatorList(Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract canConference()Z
.end method

.method public abstract canTransfer()Z
.end method

.method public abstract changeCallBarringPassword(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeConnectionType(Landroid/os/Message;Lcom/android/internal/telephony/Connection;ILjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "Lcom/android/internal/telephony/Connection;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract checkFDNCapability()Z
.end method

.method public abstract checkTestIcc()Z
.end method

.method public abstract clearDisconnected()V
.end method

.method public abstract clearVoiceMessageWaiting()V
.end method

.method public abstract conference()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract deflectCall(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract dial(Ljava/lang/String;ILandroid/os/Bundle;Z)Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract disableDnsCheck(Z)V
.end method

.method public abstract disableLocationUpdates()V
.end method

.method public abstract disablePdpForNetworkScanTemporarily(Z)Z
.end method

.method public abstract dispose()V
.end method

.method public abstract enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
.end method

.method public abstract enableLocationUpdates()V
.end method

.method public abstract enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z
.end method

.method public abstract exitEmergencyCallbackMode()V
.end method

.method public abstract explicitCallTransfer()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract genericSimIO(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract getActiveApn(Ljava/lang/String;Lcom/android/internal/telephony/HtcPhoneConstants$IPVersion;)Ljava/lang/String;
.end method

.method public abstract getActiveApnCarrier(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getActiveApnTypes()[Ljava/lang/String;
.end method

.method public abstract getActiveCid()I
.end method

.method public abstract getAllCellInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvailableNetworks(Landroid/os/Message;)V
.end method

.method public abstract getAvailableNetworksAppendAcT(Landroid/os/Message;)V
.end method

.method public abstract getBackgroundCall()Lcom/android/internal/telephony/Call;
.end method

.method public abstract getBandCapability()I
.end method

.method public abstract getCFUNumber()Ljava/lang/String;
.end method

.method public abstract getCallBarringOption(ILandroid/os/Message;)V
.end method

.method public abstract getCallDomain(Lcom/android/internal/telephony/Call;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract getCallForwardingIndicator()Z
.end method

.method public abstract getCallForwardingOption(ILandroid/os/Message;)V
.end method

.method public abstract getCallForwardingUncondTimerOption(ILandroid/os/Message;)V
.end method

.method public abstract getCallType(Lcom/android/internal/telephony/Call;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract getCallWaiting(Landroid/os/Message;)V
.end method

.method public abstract getCdmaEriFileVersion()I
.end method

.method public abstract getCdmaEriIconIndex()I
.end method

.method public abstract getCdmaEriIconMode()I
.end method

.method public abstract getCdmaEriText()Ljava/lang/String;
.end method

.method public abstract getCdmaMin()Ljava/lang/String;
.end method

.method public abstract getCdmaPrlVersion()Ljava/lang/String;
.end method

.method public abstract getCellBroadcastSmsConfig(Landroid/os/Message;)V
.end method

.method public abstract getCellLocation()Landroid/telephony/CellLocation;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
.end method

.method public abstract getDataCFUNumber()Ljava/lang/String;
.end method

.method public abstract getDataCallForwardingOption(ILandroid/os/Message;)V
.end method

.method public abstract getDataCallList(Landroid/os/Message;)V
.end method

.method public abstract getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
.end method

.method public abstract getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
.end method

.method public abstract getDataConnectionStateTime(Ljava/lang/String;)J
.end method

.method public abstract getDataEnabled()Z
.end method

.method public abstract getDataRoamingEnabled()Z
.end method

.method public abstract getDataServiceState()Landroid/telephony/ServiceState;
.end method

.method public abstract getDetailIccStatus()[I
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getDeviceId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDeviceSvn()Ljava/lang/String;
.end method

.method public abstract getDpdtSwitchValue(Landroid/os/Message;)V
.end method

.method public abstract getEnhancedVoicePrivacy(Landroid/os/Message;)V
.end method

.method public abstract getEsn()Ljava/lang/String;
.end method

.method public abstract getFdnEnabledStatus()Z
.end method

.method public abstract getForegroundCall()Lcom/android/internal/telephony/Call;
.end method

.method public abstract getGenericIMEI()Ljava/lang/String;
.end method

.method public abstract getGenericMEID()Ljava/lang/String;
.end method

.method public abstract getGlobalDataRoamingOption()I
.end method

.method public abstract getGprsState()I
.end method

.method public abstract getGroupIdLevel1()Ljava/lang/String;
.end method

.method public abstract getHtcSimTypes(Landroid/os/Message;)V
.end method

.method public abstract getICCRecords()Lcom/android/internal/telephony/uicc/IccRecords;
.end method

.method public abstract getIccCard()Lcom/android/internal/telephony/IccCard;
.end method

.method public abstract getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.end method

.method public abstract getIccRecordsLoaded()Z
.end method

.method public abstract getIccSerialNumber()Ljava/lang/String;
.end method

.method public abstract getIccSerialNumberwithChar()Ljava/lang/String;
.end method

.method public abstract getImei()Ljava/lang/String;
.end method

.method public abstract getImeiSv()Ljava/lang/String;
.end method

.method public abstract getImsPhone()Lcom/android/internal/telephony/Phone;
.end method

.method public abstract getInCallPhoneType()I
.end method

.method public abstract getIsServiceAllowed(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
.end method

.method public abstract getLine1AlphaTag()Ljava/lang/String;
.end method

.method public abstract getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLine1Number()Ljava/lang/String;
.end method

.method public abstract getLine1Number(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
.end method

.method public abstract getLinkProperties(Ljava/lang/String;Lcom/android/internal/telephony/HtcPhoneConstants$IPVersion;)Landroid/net/LinkProperties;
.end method

.method public abstract getLteOnCdmaMode()I
.end method

.method public abstract getMeid()Ljava/lang/String;
.end method

.method public abstract getMessageWaitingIndicator()Z
.end method

.method public abstract getMessageWaitingIndicatorEnhanced()I
.end method

.method public abstract getMsisdn()Ljava/lang/String;
.end method

.method public abstract getMute()Z
.end method

.method public abstract getNeighboringCids(Landroid/os/Message;)V
.end method

.method public abstract getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;
.end method

.method public abstract getOperatorInfo()Ljava/lang/Object;
.end method

.method public abstract getOutgoingCallerIdDisplay(Landroid/os/Message;)V
.end method

.method public abstract getPRIVersion()Ljava/lang/String;
.end method

.method public abstract getPRIVersions()[Ljava/lang/String;
.end method

.method public abstract getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getPdnSettings(ILandroid/os/Message;)V
.end method

.method public abstract getPdnSettings2([Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract getPendingMmiCodes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPhoneId()I
.end method

.method public abstract getPhoneName()Ljava/lang/String;
.end method

.method public abstract getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
.end method

.method public abstract getPhoneType()I
.end method

.method public abstract getPreferredNetworkType(Landroid/os/Message;)V
.end method

.method public abstract getPreferredOperatorList(Landroid/os/Message;)V
.end method

.method public abstract getProposedConnectionFailed(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract getProposedConnectionType(Lcom/android/internal/telephony/Connection;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;
.end method

.method public abstract getRegistrationState(Landroid/os/Message;)V
.end method

.method public abstract getRingingCall()Lcom/android/internal/telephony/Call;
.end method

.method public abstract getSIMOperatorNumeric()Ljava/lang/String;
.end method

.method public abstract getServiceState()Landroid/telephony/ServiceState;
.end method

.method public abstract getSignalStrength()Landroid/telephony/SignalStrength;
.end method

.method public abstract getSimTypes(Landroid/os/Message;)V
.end method

.method public abstract getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;
.end method

.method public abstract getSmscAddress(Landroid/os/Message;)V
.end method

.method public abstract getState()Lcom/android/internal/telephony/PhoneConstants$State;
.end method

.method public abstract getSubId()J
.end method

.method public abstract getSubscriberId()Ljava/lang/String;
.end method

.method public abstract getSubscriberId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSubsidyLock(ILandroid/os/Message;)V
.end method

.method public abstract getUSSDVerificationStatus()Ljava/lang/String;
.end method

.method public abstract getUSSDVerificationStrings()[Ljava/lang/String;
.end method

.method public abstract getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;
.end method

.method public abstract getUnitTestMode()Z
.end method

.method public abstract getUriListinConf()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
.end method

.method public abstract getVoiceMailAlphaTag()Ljava/lang/String;
.end method

.method public abstract getVoiceMailNumber()Ljava/lang/String;
.end method

.method public abstract getVoiceMessageCount()I
.end method

.method public abstract getVoicePhoneServiceState()I
.end method

.method public abstract getVoiceServiceState()Landroid/telephony/ServiceState;
.end method

.method public abstract handleInCallMmiCommands(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract handlePinMmi(Ljava/lang/String;)Z
.end method

.method public abstract hangupUri(ILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract hangupWithReason(ILjava/lang/String;ZILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract htcCdmaExitRadioPowerSaveMode()V
.end method

.method public abstract htcGetCdmaEriCallGuard()I
.end method

.method public abstract htcGetCdmaEriDistinctiveRinger()I
.end method

.method public abstract htcModemLinkOn()Z
.end method

.method public abstract htcNotifyDataConnectionDisconnect(Z)Z
.end method

.method public abstract initSpecificDialNumbers()V
.end method

.method public abstract invokeOemRilRequestRaw([BLandroid/os/Message;)V
.end method

.method public abstract invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract isActEnabled()Z
.end method

.method public abstract isAddParticipantAllowed()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract isChinaMVNOSim()Z
.end method

.method public abstract isCspPlmnEnabled()Z
.end method

.method public abstract isDataConnectivityPossible()Z
.end method

.method public abstract isDataConnectivityPossible(Ljava/lang/String;)Z
.end method

.method public abstract isDefaultTypeStillActive()Z
.end method

.method public abstract isDnsCheckDisabled()Z
.end method

.method public abstract isIMSregistered()Z
.end method

.method public abstract isImsVtCallPresent()Z
.end method

.method public abstract isMinInfoReady()Z
.end method

.method public abstract isOtaSpNumber(Ljava/lang/String;)Z
.end method

.method public abstract isRadioAvailable()Z
.end method

.method public abstract isVTModifyAllowed()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract needsOtaServiceProvisioning()Z
.end method

.method public abstract notifyDataActivity()V
.end method

.method public abstract notifyIWLANHandoverFail()V
.end method

.method public abstract nvReadItem(ILandroid/os/Message;)V
.end method

.method public abstract nvResetConfig(ILandroid/os/Message;)V
.end method

.method public abstract nvWriteCdmaPrl([BLandroid/os/Message;)V
.end method

.method public abstract nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract queryAvailableBandMode(Landroid/os/Message;)V
.end method

.method public abstract queryAvoidNetwork(Landroid/os/Message;)V
.end method

.method public abstract queryCAVE(Landroid/os/Message;)V
.end method

.method public abstract queryCdmaRoamingPreference(Landroid/os/Message;)V
.end method

.method public abstract queryMD5(Landroid/os/Message;)V
.end method

.method public abstract querySSDUpdate(Landroid/os/Message;)V
.end method

.method public abstract querySubsidyLock(ILandroid/os/Message;)V
.end method

.method public abstract queryTTYMode(Landroid/os/Message;)V
.end method

.method public abstract queryUIMAUTH(Landroid/os/Message;)V
.end method

.method public abstract queryVPM(Landroid/os/Message;)V
.end method

.method public abstract reEnableDataRoamingGuardDialog()V
.end method

.method public abstract registerEcallAutoRetry(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForAvpUpgradeFailure(Landroid/os/Handler;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCollidedDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDataRoamingGuardNotification(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForERIInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForFailEntitlementCheck(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForHTCECCStatus(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForHandoverStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLoopBackMode(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForMIPFailCause(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForMMLocationUpdateInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForManualState(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForModifyCallRequest(Landroid/os/Handler;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract registerForModifyCallResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract registerForNBPCDInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNetworkBusy(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNoDunDataPlan(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForPhoneModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRSSI_Report(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRadioOn(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRadioTechnologyChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSignalFade(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSmartDataRoamingStatus(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForToneSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVideoCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVoiceCallConnected(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerIWLANHandoverFail(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract rejectCall()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract rejectConnectionTypeChange(Lcom/android/internal/telephony/Connection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract relinquishOwnershipOfImsPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;
.end method

.method public abstract removePreferredOperatorList(ILandroid/os/Message;)V
.end method

.method public abstract removeReferences()V
.end method

.method public abstract requesetSetPhoneType(ILandroid/os/Message;)V
.end method

.method public abstract requestCAVE(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestCW_UW_DREG(Landroid/os/Message;)V
.end method

.method public abstract requestCW_UW_REG(Landroid/os/Message;)V
.end method

.method public abstract requestClearAvoidNetwork(Landroid/os/Message;)V
.end method

.method public abstract requestEhrpdDomainNameChangeState(Landroid/os/Message;)V
.end method

.method public abstract requestGetEhrpdDeviceCapability(Landroid/os/Message;)V
.end method

.method public abstract requestGetEhrpdDisableCapability(Landroid/os/Message;)V
.end method

.method public abstract requestGetGID1()Ljava/lang/String;
.end method

.method public abstract requestGetNBPCD(Landroid/os/Message;)V
.end method

.method public abstract requestGetPcscfAddresses(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestGetSIMType()I
.end method

.method public abstract requestGetSmartDataRoamingStatus(Landroid/os/Message;)V
.end method

.method public abstract requestGetVolteSipRegFailure(Landroid/os/Message;)V
.end method

.method public abstract requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract requestHtcGetDDTMMode(Landroid/os/Message;)V
.end method

.method public abstract requestHtcGetGPSOneMode(Landroid/os/Message;)V
.end method

.method public abstract requestHtcSetDDTMMode(ILandroid/os/Message;)V
.end method

.method public abstract requestHtcSetGPSOneMode(ILandroid/os/Message;)V
.end method

.method public abstract requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestOTAProvisionStatus(Landroid/os/Message;)V
.end method

.method public abstract requestReleaseAllVoiceCalls(Landroid/os/Message;)V
.end method

.method public abstract requestSSDUpdate(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestSSDUpdateConfirm(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestSelectNextNetwork(Landroid/os/Message;)V
.end method

.method public abstract requestSetEhrpdDisableCapability(ILandroid/os/Message;)V
.end method

.method public abstract requestSetLBSNTFY(I)V
.end method

.method public abstract requestSetPushMailDormantTime(IILandroid/os/Message;)V
.end method

.method public abstract requestSetSmartDataRoaming(ILandroid/os/Message;)V
.end method

.method public abstract requestSetVoiceRoamingMode(IILandroid/os/Message;)V
.end method

.method public abstract requestVPM(Landroid/os/Message;)V
.end method

.method public abstract requesthTcGetHybridMode(Landroid/os/Message;)V
.end method

.method public abstract requesthTcGetSystemNAM(Landroid/os/Message;)V
.end method

.method public abstract requesthTcSetHybridMode(ILandroid/os/Message;)V
.end method

.method public abstract requesthTcSetSystemNAM(ILandroid/os/Message;)V
.end method

.method public abstract resetPdnForSettingsChange()V
.end method

.method public abstract resetVoiceMessageCount(I)V
.end method

.method public abstract restoreSavedNetworkSelection(Landroid/os/Message;)V
.end method

.method public abstract selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
.end method

.method public abstract sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
.end method

.method public abstract sendDtmf(C)V
.end method

.method public abstract sendTamCmd([ILandroid/os/Message;)V
.end method

.method public abstract sendUssdResponse(Ljava/lang/String;)V
.end method

.method public abstract setBandMode(ILandroid/os/Message;)V
.end method

.method public abstract setCBMsgIdEFcbmi([BLandroid/os/Message;)V
.end method

.method public abstract setCFUNumber(ZLjava/lang/String;)Z
.end method

.method public abstract setCallBarringOption(IZLjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setCallForwardingUncondTimerOption(IIIIIILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setCallWaiting(ZLandroid/os/Message;)V
.end method

.method public abstract setCdmaRoamingPreference(ILandroid/os/Message;)V
.end method

.method public abstract setCdmaSubscription(ILandroid/os/Message;)V
.end method

.method public abstract setCellBroadcastSmsConfig([ILandroid/os/Message;)V
.end method

.method public abstract setCellInfoListRate(I)V
.end method

.method public abstract setDataEnabled(Z)V
.end method

.method public abstract setDataNationalRoamingMode(I)V
.end method

.method public abstract setDataRoamingEnabled(Z)V
.end method

.method public abstract setDataRoamingGuardResponse(ZZ)V
.end method

.method public abstract setDataRoamingGuardSetting(I)V
.end method

.method public abstract setDpdtSwitchValue(ILandroid/os/Message;)V
.end method

.method public abstract setEchoSuppressionEnabled()V
.end method

.method public abstract setGlobalDataRoamingOption(I)V
.end method

.method public abstract setImsRegistrationState(Z)V
.end method

.method public abstract setImsToggled(ZLandroid/os/Message;)V
.end method

.method public abstract setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setMute(Z)V
.end method

.method public abstract setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
.end method

.method public abstract setNetworkSelectionRejectStatus(Z)V
.end method

.method public abstract setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOperatorBrandOverride(Ljava/lang/String;)Z
.end method

.method public abstract setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
.end method

.method public abstract setPdnSettings(ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setPdnSettings2([Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setPreferredNetworkType(ILandroid/os/Message;)V
.end method

.method public abstract setPreferredOperatorList([Ljava/lang/String;[ILandroid/os/Message;)V
.end method

.method public abstract setRSSI_Logging(Ljava/lang/Boolean;Landroid/os/Message;)V
.end method

.method public abstract setRX_Diversity(IILandroid/os/Message;)V
.end method

.method public abstract setRadioPower(Z)V
.end method

.method public abstract setRadioPowerExt(Z)V
.end method

.method public abstract setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setTDLabMode(ILandroid/os/Message;)V
.end method

.method public abstract setTDLabModeExt(ILandroid/os/Message;I)V
.end method

.method public abstract setTTYMode(ILandroid/os/Message;)V
.end method

.method public abstract setTempCLIR(I)V
.end method

.method public abstract setTestIcc(Ljava/lang/String;Z)V
.end method

.method public abstract setUSSDVerificationStatus(Ljava/lang/String;)V
.end method

.method public abstract setUSSDVerificationStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setUeSecurityCheck(ILandroid/os/Message;)V
.end method

.method public abstract setUiTTYMode(ILandroid/os/Message;)V
.end method

.method public abstract setUnitTestMode(Z)V
.end method

.method public abstract setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setVoiceMessageWaiting(II)V
.end method

.method public abstract shutdownRadio()V
.end method

.method public abstract startDtmf(C)V
.end method

.method public abstract stopDtmf()V
.end method

.method public abstract switchHoldingAndActive()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract triggerATTSearchForFemto(Landroid/os/Message;)I
.end method

.method public abstract turnOnRadioDueToECC()V
.end method

.method public abstract uiccAkaAuthenticate([B[BLandroid/os/Message;)V
.end method

.method public abstract unregisterEcallAutoRetry(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForAvpUpgradeFailure(Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract unregisterForCallWaiting(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCollidedDisconnect(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDataRoamingGuardNotification(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDisconnect(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDisplayInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForERIInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForEcmTimerReset(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForFailEntitlementCheck(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForHTCECCStatus(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForHandoverStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForIncomingRing(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLineControlInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLoopBackMode(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForMIPFailCause(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForMMLocationUpdateInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForManualState(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForMmiComplete(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForMmiInitiate(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForModifyCallRequest(Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract unregisterForModifyCallResponse(Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract unregisterForNBPCDInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNetworkBusy(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNetworkStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNewRingingConnection(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNoDunDataPlan(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNumberInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForOnHoldTone(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForPhoneModeChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRSSI_Report(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRadioOn(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForResendIncallMute(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRingbackTone(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForServiceStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSignalFade(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSignalInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSimRecordsLoaded(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSmartDataRoamingStatus(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSuppServiceFailed(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSuppServiceNotification(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForT53ClirInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForToneSignalInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForUnknownConnection(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVideoCapabilityChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVoiceCallConnected(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVoiceCallEnded(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVoiceCallStarted(Landroid/os/Handler;)V
.end method

.method public abstract unregisterIWLANHandoverFail(Landroid/os/Handler;)V
.end method

.method public abstract unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
.end method

.method public abstract updatePhoneObject(I)V
.end method

.method public abstract updateServiceLocation()V
.end method
