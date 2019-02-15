#!/bin/bash

#step 3 firewall

echo "Step 3: Configuring firewall."
echo "Step 3: Configuring firewall." >> /root/ApacheInstallLog 2>&1

service firewalld start >> /root/ApacheInstallLog 2>&1
sudo firewall-cmd --permanent --add-port=80/tcp >> /root/ApacheInstallLog 2>&1
sudo firewall-cmd --permanent --add-port=443/tcp >> /root/ApacheInstallLog 2>&1

sudo firewall-cmd --reload >> /root/ApacheInstallLog 2>&1

echo "Step 3: Complete."
echo "Step 3: Complete." >> /root/ApacheInstallLog 2>&1