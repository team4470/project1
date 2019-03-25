#!/bin/bash

echo "Step 1: Make /home Partion" >> InstallLog

(
echo n # Add a new partition

echo p # Primary partition

echo 4  # Partition number

echo  # First sector (Accept default: 1)

echo +5G # Last sector (Accept default: varies)

echo w # Write changes

) | sudo fdisk /dev/sda

echo "Step 1: Complete" >> InstallLog

echo "Step 2: Format Partition" >> InstallLog

partprobe /dev/sda

mkfs.xfs /dev/sda4

xfs_repair /dev/sda4

echo "Step 2: Complete" >> InstallLog

echo "Step 3: Configure /etc/fstab and /etc/exports" >> InstallLog

echo "/dev/sda4 /home   xfs defaults    0 0" > /etc/fstab

echo "/home 10.2.6.*(sync,rw)" > /etc/exports

echo "Step 3: Complete" >> InstallLog

yum install -y nfs-utils

echo "Step 4: Start NFS and Mount Partition" >> InstallLog

mount /home

service nfs start

systemctl enable nfs.service

echo "Step 4: Complete" >> InstallLog

echo "Step 5: Start Firewall" >> InstallLog

systemctl start firewalld

systemctl enable firewalld

echo "Step 5: Compelte" >> InstallLog

echo "Step 6: Configure Firewall" >> InstallLog

firewall-cmd --zone=public --add-port=2049/tcp --permanent

firewall-cmd --zone=public --add-port=111/tcp --permanent

firewall-cmd --zone=public --add-port=20048/tcp --permanent

firewall-cmd --zone=public --add-port=2049/udp --permanent

firewall-cmd --zone=public --add-port=111/udp --permanent

firewall-cmd --zone=public --add-port=20048/udp --permanent

firewall-cmd --reload

echo "Step 6: Complete" >> InstallLog