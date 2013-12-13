.class public interface abstract Landroid/provider/ContactsContract$ContactOptionsColumns;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "ContactOptionsColumns"
.end annotation


# static fields
.field public static final CONTACT_TYPE:Ljava/lang/String; = "contact_type"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_FIELD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation
.end field

.field public static final CUSTOM_RINGTONE:Ljava/lang/String; = "custom_ringtone"

.field public static final LAST_TIME_CONTACTED:Ljava/lang/String; = "last_time_contacted"

.field public static final SEND_TO_VOICEMAIL:Ljava/lang/String; = "send_to_voicemail"

.field public static final SIM:Ljava/lang/String; = "sim"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_FIELD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation
.end field

.field public static final STARRED:Ljava/lang/String; = "starred"

.field public static final TIMES_CONTACTED:Ljava/lang/String; = "times_contacted"

.field public static final YL_REMARK:Ljava/lang/String; = "yl_remark"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_FIELD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation
.end field

.field public static final YL_STATUS:Ljava/lang/String; = "yl_status"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_FIELD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation
.end field
