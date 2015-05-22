#! /bin/bash

echo $#
echo $0 
echo $1
echo $2

tar -xvf /home/blobby/BeagleBoneBlack/buildroot/output/images/rootfs.tar -C $1
cp -rv /home/blobby/BeagleBoneBlack/Save/RFS_boot/boot $1
cp -rv /home/blobby/BeagleBoneBlack/Save/.ssh $1root/ 
cp -v /home/blobby/BeagleBoneBlack/Save/init_script/S41usb0Config $1etc/init.d/ 
umount -v $1
