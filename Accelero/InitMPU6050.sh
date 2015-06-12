if echo cat /sys/devices/bone_capemgr.9/slots | egrep -q I2C1; then echo "I2C bus 1 pins already configure"
else
	echo BB-I2C1 > /sys/devices/bone_capemgr.9/slots
	cat /sys/devices/bone_capemgr.9/slots
fi
 
if i2cset -y -r  1 0x68 0x6b 0x00 | egrep -q matched; then echo "MPU6050 ready for config"
else 
	echo "FAIL";exit
 fi
