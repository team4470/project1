#!/bin/bash

#log output

echo "Apache installation will now begin."
echo "Apache installation will now begin." >> /root/ApacheInstallLog 2>&1

#update neccessary system software to install Apache

echo "Step 1: Updating neccessary system software to install Apache."
echo "Step 1: Updating neccessary system software to install Apache." >> /root/ApacheInstallLog 2>&1

yum -y update >> /root/ApacheInstallLog 2>&1
yum install -y wget >> /root/ApacheInstallLog 2>&1
yum -y install make >> /root/ApacheInstallLog 2>&1
yum -y install openssl >> /root/ApacheInstallLog 2>&1
yum -y install mod_ssl >> /root/ApacheInstallLog 2>&1
yum -y install gcc >> /root/ApacheInstallLog 2>&1


echo "Step 1: Complete."
echo "Step 1: Complete." >> /root/ApacheInstallLog 2>&1
