.class public Llewa/telephony/TelephonyHelper;
.super Ljava/lang/Object;
.source "TelephonyHelper.java"


# static fields
.field public static final EVENT_PRE_3G_SWITCH:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = null

.field public static final USIM_ERROR_GROUP_COUNT:I = -0x14

.field public static final USIM_ERROR_NAME_LEN:I = -0xa

.field private static isMultiSimEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-class v0, Llewa/telephony/TelephonyHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llewa/telephony/TelephonyHelper;->TAG:Ljava/lang/String;

    const-string v0, "persist.multisim.config"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Llewa/telephony/TelephonyHelper;->isMultiSimEnabled:Z

    sget-object v0, Llewa/telephony/FeatureOption;->EVENT_PRE_3G_SWITCH:Ljava/lang/String;

    sput-object v0, Llewa/telephony/TelephonyHelper;->EVENT_PRE_3G_SWITCH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addContactToGroup(II)Z
    .locals 1
    .parameter "paramInt1"
    .parameter "paramInt2"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static get3GCapabilitySIM()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static getCallState(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "simId"

    .prologue
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    return v0
.end method

.method public static getDataState(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "simId"

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    return v0
.end method

.method public static getDefaultSubscription()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDeviceId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "simId"

    .prologue
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLine1Number(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "slotId"

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferredDataSubscription()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static getPreferredVoiceSubscription()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static getSimCount()I
    .locals 1

    .prologue
    invoke-static {}, Llewa/telephony/TelephonyHelper;->isSimInserted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSimIndicatorState(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v2, -0x1

    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .local v0, iTel:Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_0

    :cond_0
    return v2
.end method

.method public static getSimState(I)I
    .locals 1
    .parameter "slotId"

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    return v0
.end method

.method public static getSimType(I)Ljava/lang/String;
    .locals 1
    .parameter "slotId"

    .prologue
    const-string v0, "SIM"

    .local v0, type:Ljava/lang/String;
    return-object v0
.end method

.method public static getSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSubscriberId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "simId"

    .prologue
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUSIMGrpMaxCount()I
    .locals 1

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public static getUSIMGrpMaxNameLen()I
    .locals 1

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public static getUsimGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/LewaUsimGroup;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVoiceMailNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static handlePinMmi(Ljava/lang/String;I)Z
    .locals 5
    .parameter "dialString"
    .parameter "simId"

    .prologue
    const/4 v2, 0x0

    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .local v1, iTel:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    sget-object v3, Llewa/telephony/TelephonyHelper;->TAG:Ljava/lang/String;

    const-string v4, "fdnRequest iTel is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    :try_start_0
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Llewa/telephony/TelephonyHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static hasIccCard()Z
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public static hasIccCard(I)Z
    .locals 1
    .parameter "simId"

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public static insertUSIMGroup(Ljava/lang/String;)I
    .locals 1
    .parameter "str"

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public static isFdnEnabled()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .local v0, bRet:Z
    return v0
.end method

.method public static isFdnEnabled(I)Z
    .locals 1
    .parameter "slotId"

    .prologue
    const/4 v0, 0x0

    .local v0, bRet:Z
    return v0
.end method

.method public static isNetworkRoaming(I)Z
    .locals 1
    .parameter "slotId"

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method public static isPhbReady()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static isPhbReady(I)Z
    .locals 1
    .parameter "slotId"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static isPhoneBookReady(I)Z
    .locals 1
    .parameter "slotId"

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public static isRadioOn(I)Z
    .locals 5
    .parameter "slotId"

    .prologue
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .local v2, iTel:Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    sget-object v3, Llewa/telephony/TelephonyHelper;->TAG:Ljava/lang/String;

    const-string v4, "fdnRequest iTel is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .local v0, bRet:Z
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Llewa/telephony/TelephonyHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isRejectAllVideoCall()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static isRejectAllVoiceCall()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static isSimInserted()Z
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public static isSimInserted(I)Z
    .locals 1
    .parameter "slotId"

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public static registerPhoneStateListener(Landroid/content/Context;Landroid/telephony/PhoneStateListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    const/16 v0, 0x21

    invoke-static {p0, p1, v0}, Llewa/telephony/TelephonyHelper;->registerPhoneStateListenerWithState(Landroid/content/Context;Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static registerPhoneStateListenerWithState(Landroid/content/Context;Landroid/telephony/PhoneStateListener;I)V
    .locals 2
    .parameter "context"
    .parameter "listener"
    .parameter "stateToListen"

    .prologue
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static removeContactFromGroup(II)Z
    .locals 1
    .parameter "paramInt1"
    .parameter "paramInt2"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static removeUSIMGroupById(I)Z
    .locals 1
    .parameter "paramInt"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static setPreferredDataSubscription(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static support3gSwitch()Z
    .locals 1

    .prologue
    sget-boolean v0, Llewa/telephony/FeatureOption;->MTK_GEMINI_3G_SWITCH:Z

    return v0
.end method

.method public static supportBtProfile()Z
    .locals 1

    .prologue
    sget-boolean v0, Llewa/telephony/FeatureOption;->MTK_BT_PROFILE_BPP:Z

    return v0
.end method

.method public static supportDialerSearch()Z
    .locals 1

    .prologue
    sget-boolean v0, Llewa/telephony/FeatureOption;->MTK_DIALER_SEARCH_SUPPORT:Z

    return v0
.end method

.method public static supportDrm()Z
    .locals 1

    .prologue
    sget-boolean v0, Llewa/telephony/FeatureOption;->MTK_DRM_APP:Z

    return v0
.end method

.method public static supportMultipleSims()Z
    .locals 1

    .prologue
    sget-boolean v0, Llewa/telephony/TelephonyHelper;->isMultiSimEnabled:Z

    return v0
.end method

.method public static supportReadReport()Z
    .locals 1

    .prologue
    sget-boolean v0, Llewa/telephony/FeatureOption;->MTK_SEND_RR_SUPPORT:Z

    return v0
.end method

.method public static supportSearchInDb()Z
    .locals 1

    .prologue
    sget-boolean v0, Llewa/telephony/FeatureOption;->MTK_SEARCH_DB_SUPPORT:Z

    return v0
.end method

.method public static supportVideoCall()Z
    .locals 1

    .prologue
    sget-boolean v0, Llewa/telephony/FeatureOption;->MTK_VT3G324M_SUPPORT:Z

    return v0
.end method

.method public static supportWapPush()Z
    .locals 1

    .prologue
    sget-boolean v0, Llewa/telephony/FeatureOption;->MTK_WAPPUSH_SUPPORT:Z

    return v0
.end method

.method public static unregisterPhoneStateListener(Landroid/content/Context;Landroid/telephony/PhoneStateListener;)V
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .local v0, tm:Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static unregisterPhoneStateListener(Landroid/content/Context;Landroid/telephony/PhoneStateListener;I)V
    .locals 2
    .parameter "context"
    .parameter "listener"
    .parameter "sim"

    .prologue
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .local v0, tm:Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static updateUSIMGroup(ILjava/lang/String;)I
    .locals 1
    .parameter "paramInt"
    .parameter "paramString"

    .prologue
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public getPhoneStateListener()Landroid/telephony/PhoneStateListener;
    .locals 1

    .prologue
    new-instance v0, Landroid/telephony/PhoneStateListener;

    invoke-direct {v0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .local v0, phoneStateListener:Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method public getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1
    .parameter "sub"

    .prologue
    new-instance v0, Landroid/telephony/PhoneStateListener;

    invoke-direct {v0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .local v0, phoneStateListener:Landroid/telephony/PhoneStateListener;
    return-object v0
.end method
