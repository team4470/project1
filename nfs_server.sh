#!/bin/bash

(
echo n # Add a new partition

echo p # Primary partition

echo 4  # Partition number

echo  # First sector (Accept default: 1)

echo +5G # Last sector (Accept default: varies)

echo w # Write changes

) | sudo fdisk /dev/sda

partprobe /dev/sda

mkfs.xfs /dev/sda4

xfs_repair /dev/sda4

echo "/dev/sda4 /home   xfs defaults    0 0" > /etc/fstab

echo "/home 10.2.6.*(sync,rw)" > /etc/exports

yum install -y nfs-utils

mount /home

service nfs start

systemctl enable nfs.service

systemctl firewalld start

systemctl enable firewalld

firewall-cmd --zone=public --add-port=2049/tcp --permanent

firewall-cmd --zone=public --add-port=111/tcp --permanent

firewall-cmd --zone=public --add-port=20048/tcp --permanent

firewall-cmd --zone=public --add-port=2049/udp --permanent

firewall-cmd --zone=public --add-port=111/udp --permanent

firewall-cmd --zone=public --add-port=20048/udp --permanent

firewall-cmd --reload