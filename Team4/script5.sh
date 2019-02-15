#!/bin/bash

#step 5 make html

echo "Step 5: Creating webpages."
echo "Step 4: Creating webpages." >> /root/ApacheInstallLog 2>&1

cd /var/www/html >> /root/ApacheInstallLog 2>&1

echo "<!DOCTYPE html><html><head><body>Apache server is working.</body></head></html>" >> /var/www/html
echo "<!DOCTYPE html><html><head><body>Apache server is working.</body></head></html>" >> /root/ApacheInstallLog 2>&1

echo "Step 5: Complete."
echo "Step 5: Complete." >> /root/ApacheInstallLog 2>&1
