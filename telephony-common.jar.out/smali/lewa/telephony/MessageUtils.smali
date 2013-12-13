.class public Llewa/telephony/MessageUtils;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# static fields
.field private static final TIMESTAMP_LENGTH:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static charToBCD(C)I
    .locals 3
    .parameter "c"

    .prologue
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid char for BCD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static encodeUCS2(Ljava/lang/String;[B)[B
    .locals 7
    .parameter "message"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "utf-16be"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .local v1, textPart:[B
    if-eqz p1, :cond_0

    array-length v3, p1

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .local v2, userData:[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    array-length v3, p1

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .local v0, ret:[B
    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .end local v0           #ret:[B
    .end local v2           #userData:[B
    :cond_0
    move-object v2, v1

    .restart local v2       #userData:[B
    goto :goto_0
.end method

.method public static getDeliveryPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)[B
    .locals 7
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "date"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-static/range {v0 .. v6}, Llewa/telephony/MessageUtils;->getDeliveryPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static getDeliveryPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[BI)[B
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "date"
    .parameter "header"
    .parameter "encoding"

    .prologue
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_1
    if-eqz p5, :cond_3

    const/16 v6, 0x40

    :goto_1
    or-int/lit8 v6, v6, 0x0

    int-to-byte v2, v6

    .local v2, mtiByte:B
    invoke-static {p1, v2}, Llewa/telephony/MessageUtils;->getDeliveryPduHeader(Ljava/lang/String;B)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p6, :cond_2

    const/4 p6, 0x1

    :cond_2
    const/4 v6, 0x1

    if-ne p6, v6, :cond_4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-static {p2, p5, v6, v7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .local v5, userData:[B
    :goto_2
    const/4 v6, 0x1

    if-ne p6, v6, :cond_6

    const/4 v6, 0x0

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xa0

    if-le v6, v7, :cond_5

    const/4 v6, 0x0

    goto :goto_0

    .end local v0           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v2           #mtiByte:B
    .end local v5           #userData:[B
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .restart local v0       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #mtiByte:B
    :cond_4
    :try_start_1
    invoke-static {p2, p5}, Llewa/telephony/MessageUtils;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .restart local v5       #userData:[B
    goto :goto_2

    .end local v5           #userData:[B
    :catch_0
    move-exception v4

    .local v4, uex:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v6, "GSM"

    const-string v7, "Implausible UnsupportedEncodingException "

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v6, 0x0

    goto :goto_0

    .end local v4           #uex:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .local v1, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    invoke-static {p2, p5}, Llewa/telephony/MessageUtils;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v5

    .restart local v5       #userData:[B
    const/4 p6, 0x3

    goto :goto_2

    .end local v5           #userData:[B
    :catch_2
    move-exception v4

    .restart local v4       #uex:Ljava/io/UnsupportedEncodingException;
    const-string v6, "GSM"

    const-string v7, "Implausible UnsupportedEncodingException "

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v6, 0x0

    goto :goto_0

    .end local v1           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v4           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v5       #userData:[B
    :cond_5
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_3
    invoke-static {p3, p4}, Llewa/telephony/MessageUtils;->getTimestamp(J)[B

    move-result-object v3

    .local v3, timestamp:[B
    const/4 v6, 0x0

    array-length v7, v3

    invoke-virtual {v0, v3, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v6, 0x0

    array-length v7, v5

    invoke-virtual {v0, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_0

    .end local v3           #timestamp:[B
    :cond_6
    const/4 v6, 0x0

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x8c

    if-le v6, v7, :cond_7

    const/4 v6, 0x0

    goto :goto_0

    :cond_7
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3
.end method

.method private static getDeliveryPduHeader(Ljava/lang/String;B)Ljava/io/ByteArrayOutputStream;
    .locals 6
    .parameter "destinationAddress"
    .parameter "mtiByte"

    .prologue
    const/4 v3, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .local v1, daBytes:[B
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v4, v2, 0x2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v5, 0xf0

    if-ne v2, v5, :cond_0

    const/4 v2, 0x1

    :goto_0
    sub-int v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-object v0

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private static getTimestamp(J)[B
    .locals 16
    .parameter "time"

    .prologue
    const/4 v13, 0x7

    new-array v9, v13, [B

    .local v9, timestamp:[B
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v13, "yyMMddkkmmss:Z"

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .local v6, sdf:Ljava/text/SimpleDateFormat;
    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, date:[Ljava/lang/String;
    array-length v13, v1

    add-int/lit8 v13, v13, -0x1

    aget-object v11, v1, v13

    .local v11, timezone:Ljava/lang/String;
    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .local v8, signMark:Ljava/lang/String;
    const/4 v13, 0x1

    const/4 v14, 0x3

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .local v3, hour:I
    const/4 v13, 0x3

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .local v5, min:I
    mul-int/lit8 v13, v3, 0x4

    div-int/lit8 v14, v5, 0xf

    add-int v12, v13, v14

    .local v12, timezoneValue:I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    aget-object v14, v1, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .local v10, timestampStr:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, digitCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v4, v13, :cond_1

    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    and-int/lit8 v13, v2, 0x1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    const/4 v7, 0x4

    .local v7, shift:I
    :goto_1
    shr-int/lit8 v13, v2, 0x1

    aget-byte v14, v9, v13

    invoke-static {v0}, Llewa/telephony/MessageUtils;->charToBCD(C)I

    move-result v15

    and-int/lit8 v15, v15, 0xf

    shl-int/2addr v15, v7

    int-to-byte v15, v15

    or-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v9, v13

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v7           #shift:I
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .end local v0           #c:C
    :cond_1
    const-string v13, "-"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    array-length v13, v9

    add-int/lit8 v13, v13, -0x1

    array-length v14, v9

    add-int/lit8 v14, v14, -0x1

    aget-byte v14, v9, v14

    or-int/lit8 v14, v14, 0x8

    int-to-byte v14, v14

    aput-byte v14, v9, v13

    :cond_2
    return-object v9
.end method

.method public static isValidSimAddress(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
