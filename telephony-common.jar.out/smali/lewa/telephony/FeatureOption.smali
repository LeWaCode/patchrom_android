.class public Llewa/telephony/FeatureOption;
.super Ljava/lang/Object;
.source "FeatureOption.java"


# static fields
.field public static EVENT_PRE_3G_SWITCH:Ljava/lang/String;

.field public static MTK_BT_PROFILE_BPP:Z

.field public static MTK_DIALER_SEARCH_SUPPORT:Z

.field public static MTK_DRM_APP:Z

.field public static MTK_GEMINI_3G_SWITCH:Z

.field public static MTK_GEMINI_SUPPORT:Z

.field public static MTK_SEARCH_DB_SUPPORT:Z

.field public static MTK_SEND_RR_SUPPORT:Z

.field public static MTK_SEND_RR_SUhavePPORT:Z

.field public static MTK_VT3G324M_SUPPORT:Z

.field public static MTK_WAPPUSH_SUPPORT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Llewa/telephony/FeatureOption;->EVENT_PRE_3G_SWITCH:Ljava/lang/String;

    sput-boolean v1, Llewa/telephony/FeatureOption;->MTK_BT_PROFILE_BPP:Z

    sput-boolean v1, Llewa/telephony/FeatureOption;->MTK_DRM_APP:Z

    sput-boolean v2, Llewa/telephony/FeatureOption;->MTK_DIALER_SEARCH_SUPPORT:Z

    sput-boolean v1, Llewa/telephony/FeatureOption;->MTK_WAPPUSH_SUPPORT:Z

    sput-boolean v1, Llewa/telephony/FeatureOption;->MTK_SEND_RR_SUhavePPORT:Z

    invoke-static {}, Llewa/telephony/TelephonyHelper;->supportMultipleSims()Z

    move-result v0

    sput-boolean v0, Llewa/telephony/FeatureOption;->MTK_GEMINI_SUPPORT:Z

    sput-boolean v1, Llewa/telephony/FeatureOption;->MTK_GEMINI_3G_SWITCH:Z

    sput-boolean v1, Llewa/telephony/FeatureOption;->MTK_VT3G324M_SUPPORT:Z

    sput-boolean v2, Llewa/telephony/FeatureOption;->MTK_SEND_RR_SUPPORT:Z

    sput-boolean v2, Llewa/telephony/FeatureOption;->MTK_SEARCH_DB_SUPPORT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
