.class public Llewa/telephony/SmsMemoryStatus;
.super Ljava/lang/Object;
.source "SmsMemoryStatus.java"


# instance fields
.field public mTotal:I

.field public mUsed:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "total"
    .parameter "used"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Llewa/telephony/SmsMemoryStatus;->mTotal:I

    iput p2, p0, Llewa/telephony/SmsMemoryStatus;->mUsed:I

    return-void
.end method


# virtual methods
.method public getTotal()I
    .locals 1

    .prologue
    iget v0, p0, Llewa/telephony/SmsMemoryStatus;->mTotal:I

    return v0
.end method

.method public getUsed()I
    .locals 1

    .prologue
    iget v0, p0, Llewa/telephony/SmsMemoryStatus;->mUsed:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llewa/telephony/SmsMemoryStatus;->mTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Used:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llewa/telephony/SmsMemoryStatus;->mUsed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
