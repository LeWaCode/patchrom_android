.class final Lcom/android/internal/telephony/LewaUsimGroup$1;
.super Ljava/lang/Object;
.source "LewaUsimGroup.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LewaUsimGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/LewaUsimGroup;
    .locals 3
    .parameter "paramParcel"

    .prologue
    new-instance v0, Lcom/android/internal/telephony/LewaUsimGroup;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/LewaUsimGroup;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LewaUsimGroup$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/LewaUsimGroup;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/LewaUsimGroup;
    .locals 1
    .parameter "paramInt"

    .prologue
    new-array v0, p1, [Lcom/android/internal/telephony/LewaUsimGroup;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LewaUsimGroup$1;->newArray(I)[Lcom/android/internal/telephony/LewaUsimGroup;

    move-result-object v0

    return-object v0
.end method
