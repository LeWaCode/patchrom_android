.class public Lcom/android/internal/telephony/LewaUsimGroup;
.super Ljava/lang/Object;
.source "LewaUsimGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/LewaUsimGroup;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "LewaUsimGroup"


# instance fields
.field alphaTag:Ljava/lang/String;

.field recordNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/telephony/LewaUsimGroup$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/LewaUsimGroup$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/LewaUsimGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "paramInt"
    .parameter "paramString"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/LewaUsimGroup;->alphaTag:Ljava/lang/String;

    iput p1, p0, Lcom/android/internal/telephony/LewaUsimGroup;->recordNumber:I

    iput-object p2, p0, Lcom/android/internal/telephony/LewaUsimGroup;->alphaTag:Ljava/lang/String;

    return-void
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s"
    .parameter "s1"

    .prologue
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .local v0, flag:Z
    :goto_0
    return v0

    .end local v0           #flag:Z
    :cond_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .restart local v0       #flag:Z
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/LewaUsimGroup;->alphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordIndex()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/LewaUsimGroup;->recordNumber:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/LewaUsimGroup;->alphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isEqual(Lcom/android/internal/telephony/LewaUsimGroup;)Z
    .locals 2
    .parameter "paramUsimGroup"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/LewaUsimGroup;->alphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/LewaUsimGroup;->alphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/LewaUsimGroup;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAlphaTag(Ljava/lang/String;)V
    .locals 0
    .parameter "paramString"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/LewaUsimGroup;->alphaTag:Ljava/lang/String;

    return-void
.end method

.method public setRecordIndex(I)V
    .locals 0
    .parameter "paramInt"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/LewaUsimGroup;->recordNumber:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LewaUsimGroup \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/LewaUsimGroup;->recordNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/LewaUsimGroup;->alphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "paramParcel"
    .parameter "paramInt"

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/LewaUsimGroup;->recordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/LewaUsimGroup;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
