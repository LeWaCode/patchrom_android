.class public Lcom/android/internal/policy/impl/KeyguardUpdateMonitorCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorCallback.java"


# annotations
.annotation build Landroid/annotation/LewaHook;
    value = .enum Landroid/annotation/LewaHook$LewaHookType;->CHANGE_ACCESS:Landroid/annotation/LewaHook$LewaHookType;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .locals 0
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->CHANGE_ACCESS:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .locals 0
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->CHANGE_ACCESS:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->CHANGE_ACCESS:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->CHANGE_ACCESS:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .parameter "status"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->CHANGE_ACCESS:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->CHANGE_ACCESS:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->CHANGE_ACCESS:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0
    .parameter "simState"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->CHANGE_ACCESS:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    return-void
.end method

.method public onTimeChanged()V
    .locals 0
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->CHANGE_ACCESS:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 0
    .parameter "userId"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->CHANGE_ACCESS:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 0
    .parameter "userId"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->CHANGE_ACCESS:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    return-void
.end method
