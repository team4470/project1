!#/bin/bash

#step 7 start Apache

echo "Step 7: Starting Apache."
echo "Step 7: Starting Apache." >> /root/ApacheInstallLog 2>&1

cd /usr/local/apache/bin >> /root/ApacheInstallLog 2>&1
./apachectl restart >> /root/ApacheInstallLog 2>&1

echo "Step 7: Complete."
echo "Step 7: Complete." >> /root/ApacheInstallLog 2>&1