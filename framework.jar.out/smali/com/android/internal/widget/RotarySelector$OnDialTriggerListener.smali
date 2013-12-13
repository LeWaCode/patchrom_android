.class public interface abstract Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;
.super Ljava/lang/Object;
.source "RotarySelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RotarySelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDialTriggerListener"
.end annotation


# static fields
.field public static final LEFT_HANDLE:I = 0x1

.field public static final MID_HANDLE:I = 0x2
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_FIELD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation
.end field

.field public static final RIGHT_HANDLE:I = 0x3
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->CHANGE_CODE:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation
.end field


# virtual methods
.method public abstract onDialTrigger(Landroid/view/View;I)V
.end method

.method public abstract onGrabbedStateChange(Landroid/view/View;I)V
.end method
