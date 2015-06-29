#! /bin/sh

echo "MSB"

echo "ibase=16;`i2cget -yw 1 0x68 0x3b|cut -c 3-|tr '[:lower:]' '[:upper:]'`"
MSB=$(echo "`i2cget -yw 1 0x68 0x3b|cut -c 3-|tr '[:lower:]' '[:upper:]'`")
echo $MSB


echo "LSB"

echo "ibase=16;`i2cget -yw 1 0x68 0x3c|cut -c 3-|tr '[:lower:]' '[:upper:]'`"
LSB=$(echo "`i2cget -yw 1 0x68 0x3c|cut -c 3-|tr '[:lower:]' '[:upper:]'`")
echo $LSB

echo "ibase=16;$MSB$LSB"|bc
