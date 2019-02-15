#!/bin/bash

#step 6 conf httpd.conf

echo "Step 6: Configuring Apache."
echo "Step 6: Configuring Apache." >> /root/ApacheInstallLog 2>&1

cp -y httpd.conf /usr/local/apache/conf/httpd.conf >> /root/ApacheInstallLog 2>&1

echo "Step 6: Complete."
echo "Step 6: Complete." >> /root/ApacheInstallLog 2>&1