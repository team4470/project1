#!/bin/bash

yum install -y partprobe

yum install -y mkfs

yum install -y xfs_repair

partprobe /dev/sda

mkfs.xfs /dev/sda4

xfs_repair /dev/sda4

echo "/dev/sda4 /home   xfs defaults    0 0" > /etc/fstab

echo "/home 10.2.6.*(sync,rw)" > /etc/exports

yum install -y nfs-utils

mount /home

service nfs start

systemctl enable nfs.service

firewall-cmd --zone=public --add-port=2049/tcp --permanent

firewall-cmd --zone=public --add-port=111/tcp --permanent

firewall-cmd --zone=public --add-port=20048/tcp --permanent

firewall-cmd --zone=public --add-port=2049/udp --permanent

firewall-cmd --zone=public --add-port=111/udp --permanent

firewall-cmd --zone=public --add-port=20048/udp -–permanent

firewall-cmd --reload