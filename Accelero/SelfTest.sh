#! /bin/sh


TEMP=$(echo "`i2cget -yw 1 0x68 0x0D|cut -c 3-|tr '[:lower:]' '[:upper:]'`")
echo "0D : $TEMP"
TEMP2=`echo "ibase=16;obase=2;$TEMP"|bc`
size=${#TEMP2}
while [ $size -lt 8 ]
do
TEMP2="0$TEMP2"
size=${#TEMP2}
done
XG_TEST40=`echo $TEMP2|cut -c 4-`
XA_TEST42=`echo $TEMP2|cut -c -3`
TEMP=$(echo "`i2cget -yw 1 0x68 0x10|cut -c 3-|tr '[:lower:]' '[:upper:]'`")
echo "10 : $TEMP"
TEMP2=`echo "ibase=16;obase=2;$TEMP"|bc`
size=${#TEMP2}
while [ $size -lt 8 ]
do
TEMP2="0$TEMP2"
size=${#TEMP2}
done
XA_TEST10=`echo $TEMP2|cut -c 3-4`
echo "XG test : $XG_TEST40"
XA_TEST="$XA_TEST42$XA_TEST10"
echo "XA test : $XA_TEST"

TEMP=$(echo "`i2cget -yw 1 0x68 0x0E|cut -c 3-|tr '[:lower:]' '[:upper:]'`")
echo "0E : $TEMP"
TEMP2=`echo "ibase=16;obase=2;$TEMP"|bc`
size=${#TEMP2}
while [ $size -lt 8 ]
do
TEMP2="0$TEMP2"
size=${#TEMP2}
done
YG_TEST40=`echo $TEMP2|cut -c 4-`
YA_TEST42=`echo $TEMP2|cut -c -3`
TEMP=$(echo "`i2cget -yw 1 0x68 0x10|cut -c 3-|tr '[:lower:]' '[:upper:]'`")
TEMP2=`echo "ibase=16;obase=2;$TEMP"|bc`
size=${#TEMP2}
while [ $size -lt 8 ]
do
TEMP2="0$TEMP2"
size=${#TEMP2}
done
YA_TEST10=`echo $TEMP2|cut -c 5-6`
echo "YG test : $YG_TEST40"
YA_TEST="$YA_TEST42$YA_TEST10"
echo "YA test : $YA_TEST"

TEMP=$(echo "`i2cget -yw 1 0x68 0x0F|cut -c 3-|tr '[:lower:]' '[:upper:]'`")
echo "0F : $TEMP"
TEMP2=`echo "ibase=16;obase=2;$TEMP"|bc`
size=${#TEMP2}
while [ $size -lt 8 ]
do
TEMP2="0$TEMP2"
size=${#TEMP2}
done
ZG_TEST40=`echo $TEMP2|cut -c 4-`
ZA_TEST42=`echo $TEMP2|cut -c -3`
TEMP=$(echo "`i2cget -yw 1 0x68 0x10|cut -c 3-|tr '[:lower:]' '[:upper:]'`")
TEMP2=`echo "ibase=16;obase=2;$TEMP"|bc`
size=${#TEMP2}
while [ $size -lt 8 ]
do
TEMP2="0$TEMP2"
size=${#TEMP2}
done
ZA_TEST10=`echo $TEMP2|cut -c 7-8`
echo "ZG test : $ZG_TEST40"
ZA_TEST="$ZA_TEST42$ZA_TEST10"
echo "ZA test : $ZA_TEST"
