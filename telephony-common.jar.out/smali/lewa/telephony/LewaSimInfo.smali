.class public Llewa/telephony/LewaSimInfo;
.super Ljava/lang/Object;
.source "LewaSimInfo.java"


# static fields
.field public static final COLOR_1:I = 0x0

.field public static final COLOR_2:I = 0x1

.field public static final COLOR_3:I = 0x2

.field public static final COLOR_4:I = 0x3

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final DATA_ROAMING_DEFAULT:I = 0x0

.field public static final DATA_ROAMING_DISABLE:I = 0x0

.field public static final DATA_ROAMING_ENABLE:I = 0x1

.field private static final DEBUG:Z = true

.field public static final DISLPAY_NUMBER_DEFAULT:I = 0x1

.field public static final DISPALY_NUMBER_NONE:I = 0x0

.field public static final DISPLAY_NUMBER_FIRST:I = 0x1

.field public static final DISPLAY_NUMBER_LAST:I = 0x2

.field public static final SIM_1:I = 0x0

.field public static final SIM_2:I = 0x1

.field public static final SIM_COUNT:I = 0x1

.field public static final SIM_ID_KEY:Ljava/lang/String; = "simId"

.field public static final SIM_INDICATOR_ABSENT:I = 0x0

.field public static final SIM_INDICATOR_CONNECTED:I = 0x7

.field public static final SIM_INDICATOR_INVALID:I = 0x3

.field public static final SIM_INDICATOR_LOCKED:I = 0x2

.field public static final SIM_INDICATOR_NORMAL:I = 0x5

.field public static final SIM_INDICATOR_RADIOOFF:I = 0x1

.field public static final SIM_INDICATOR_ROAMING:I = 0x6

.field public static final SIM_INDICATOR_ROAMINGCONNECTED:I = 0x8

.field public static final SIM_INDICATOR_SEARCHING:I = 0x4

.field public static final SIM_INDICATOR_UNKNOWN:I = -0x1

.field public static final SLOT_NONE:I = -0x1

.field public static final SUBSCRIPTION_KEY:Ljava/lang/String; = "subscription"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public backgroundRes:I

.field public color:I

.field public dataRoaming:I

.field public dispalyNumberFormat:I

.field public displayName:Ljava/lang/String;

.field public mICCId:Ljava/lang/String;

.field public mSimId:I

.field public mSlot:I

.field public number:Ljava/lang/String;

.field public simId:J

.field public slot:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Llewa/telephony/LewaSimInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llewa/telephony/LewaSimInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "slotId"

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Llewa/telephony/LewaSimInfo;->mSlot:I

    iput v0, p0, Llewa/telephony/LewaSimInfo;->mSimId:I

    iput p2, p0, Llewa/telephony/LewaSimInfo;->mSimId:I

    iput p2, p0, Llewa/telephony/LewaSimInfo;->mSlot:I

    iput p2, p0, Llewa/telephony/LewaSimInfo;->slot:I

    int-to-long v0, p2

    iput-wide v0, p0, Llewa/telephony/LewaSimInfo;->simId:J

    invoke-static {p1, p2}, Llewa/telephony/LewaSimInfo;->getDisplayNameBySlot(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/telephony/LewaSimInfo;->displayName:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Llewa/telephony/LewaSimInfo;->dispalyNumberFormat:I

    invoke-static {p1, p2}, Llewa/telephony/LewaSimInfo;->getNumberBySlot(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/telephony/LewaSimInfo;->number:Ljava/lang/String;

    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Llewa/telephony/LewaSimInfo;->getColorById(Landroid/content/Context;J)I

    move-result v0

    iput v0, p0, Llewa/telephony/LewaSimInfo;->color:I

    iget v0, p0, Llewa/telephony/LewaSimInfo;->color:I

    invoke-static {v0}, Llewa/telephony/LewaSimInfo;->getBackgroundResByColorId(I)I

    move-result v0

    iput v0, p0, Llewa/telephony/LewaSimInfo;->backgroundRes:I

    invoke-static {p1}, Llewa/telephony/LewaSimInfo;->getDataRoamingEnabled(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Llewa/telephony/LewaSimInfo;->dataRoaming:I

    return-void
.end method

.method private static getActiveSubscriptionsCount()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public static getAllSimCount(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    invoke-static {p0}, Llewa/telephony/LewaSimInfo;->getAllSimList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static getAllSimList(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Llewa/telephony/LewaSimInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {p0}, Llewa/telephony/LewaSimInfo;->getInsertedSimList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getBackgroundResByColorId(I)I
    .locals 1
    .parameter "colorId"

    .prologue
    if-nez p0, :cond_0

    const v0, 0x1060012

    :goto_0
    return v0

    :cond_0
    const v0, 0x1060018

    goto :goto_0
.end method

.method public static getColorById(Landroid/content/Context;J)I
    .locals 2
    .parameter "context"
    .parameter "simId"

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getDataRoamingEnabled(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static getDisplayNameById(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "simId"

    .prologue
    long-to-int v0, p1

    invoke-static {p0, v0}, Llewa/telephony/LewaSimInfo;->getDisplayNameBySlot(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayNameBySlot(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "slotId"

    .prologue
    invoke-static {p0}, Llewa/telephony/LewaSimInfo;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .local v0, tm:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getIdBySlot(Landroid/content/Context;I)J
    .locals 2
    .parameter "context"
    .parameter "slotId"

    .prologue
    int-to-long v0, p1

    return-wide v0
.end method

.method public static getInsertedSimColorById(Landroid/content/Context;J)I
    .locals 2
    .parameter "context"
    .parameter "simId"

    .prologue
    long-to-int v0, p1

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Llewa/telephony/LewaSimInfo;->getColorById(Landroid/content/Context;J)I

    move-result v0

    return v0
.end method

.method public static getInsertedSimCount(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .local v0, simCount:I
    invoke-static {}, Llewa/telephony/TelephonyHelper;->supportMultipleSims()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Llewa/telephony/LewaSimInfo;->getInsertedSimList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .end local v0           #simCount:I
    :cond_0
    return v0
.end method

.method public static getInsertedSimList(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Llewa/telephony/LewaSimInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {p0}, Llewa/telephony/LewaSimInfo;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .local v4, mTelephonyManager:Landroid/telephony/TelephonyManager;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, list:Ljava/util/List;,"Ljava/util/List<Llewa/telephony/LewaSimInfo;>;"
    const/4 v0, 0x1

    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    :try_start_0
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    new-instance v5, Llewa/telephony/LewaSimInfo;

    invoke-direct {v5, p0, v2}, Llewa/telephony/LewaSimInfo;-><init>(Landroid/content/Context;I)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    sget-object v5, Llewa/telephony/LewaSimInfo;->TAG:Ljava/lang/String;

    const-string v6, "getInsertedSimList"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    return-object v3
.end method

.method private static getMSimTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "context"

    .prologue
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static getNumberBySlot(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "slotId"

    .prologue
    invoke-static {p0}, Llewa/telephony/LewaSimInfo;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .local v0, tm:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSimInfoById(Landroid/content/Context;J)Llewa/telephony/LewaSimInfo;
    .locals 2
    .parameter "context"
    .parameter "simId"

    .prologue
    new-instance v0, Llewa/telephony/LewaSimInfo;

    long-to-int v1, p1

    invoke-direct {v0, p0, v1}, Llewa/telephony/LewaSimInfo;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static getSimInfoBySlot(Landroid/content/Context;I)Llewa/telephony/LewaSimInfo;
    .locals 1
    .parameter "context"
    .parameter "slot"

    .prologue
    new-instance v0, Llewa/telephony/LewaSimInfo;

    invoke-direct {v0, p0, p1}, Llewa/telephony/LewaSimInfo;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static getSlotById(Landroid/content/Context;J)I
    .locals 1
    .parameter "context"
    .parameter "simId"

    .prologue
    long-to-int v0, p1

    return v0
.end method

.method private static getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "context"

    .prologue
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static registerForSimInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    return-void
.end method

.method public static unregisterForSimInfoUpdate(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Llewa/telephony/LewaSimInfo;->simId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llewa/telephony/LewaSimInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dispalyNumberFormat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llewa/telephony/LewaSimInfo;->dispalyNumberFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llewa/telephony/LewaSimInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", color:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llewa/telephony/LewaSimInfo;->color:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backgroundRes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llewa/telephony/LewaSimInfo;->backgroundRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataRoaming:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llewa/telephony/LewaSimInfo;->dataRoaming:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
