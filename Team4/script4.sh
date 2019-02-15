#!/bin/bash

#step 4

echo "Step 4: Generating key."
echo "Step 4: Generating key." >> /root/ApacheInstallLog 2>&1

mkdir /var/www/keys >> /root/ApacheInstallLog 2>&1
cd /var/www/keys >> /root/ApacheInstallLog 2>&1

openssl genrsa -out ca.key 1024 >> /root/ApacheInstallLog 2>&1

openssl req -new -key ca.key -subj "/C=US/ST=Kentucky/L=Highland Heights/O=NKU/CN=$HOSTNAME " -out ca.csr >> /root/ApacheInstallLog 2>&1

openssl x509 -req -days 365 -in ca.csr -signkey ca.key -out ca.crt >> /root/ApacheInstallLog 2>&1

echo "Step 4: Complete."
echo "Step 4: Complete." >> /root/ApacheInstallLog 2>&1
