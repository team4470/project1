#!/bin/bash

#install Apache

echo "Step 2: Installing Apache."
echo "Step 2: Installing Apache." >> /root/ApacheInstallLog 2>&1

cd httpd-2.2.0 >> /root/ApacheInstallLog 2>&1
./configure –prefix=/usr/local/apache –enable-so >> /root/ApacheInstallLog 2>&1
make >> /root/ApacheInstallLog 2>&1
make install  >> /root/ApacheInstallLog 2>&1

echo "Step 2: Complete."
echo "Step 2: Complete." >> /root/ApacheInstallLog 2>&1