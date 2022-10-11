#!/bin/bash

#Asks for snappy version
echo "What version of snappymail you want to use? (e.g 2.18.2) "
read SNAPPY_VERSION

#Create folder if doesn't exist
if [[ ! -d /usr/local/CyberCP/public ]]; then
    mkdir -p /usr/local/CyberCP/public
fi
if [[ ! -d /usr/local/CyberCP/public/snappymail/snappymail ]]; then
    mkdir -p /usr/local/CyberCP/public/snappymail/snappymail
fi

#Update snappy to provided version
##Download
cd /tmp
wget https://github.com/the-djmaze/snappymail/releases/download/v$SNAPPY_VERSION/snappymail-$SNAPPY_VERSION.tar.gz
RETVAL=$?

if [[ ! $RETVAL -eq 0 ]]; then
    echo "Unable to download the version $SNAPPY_VERSION"
    echo "Please check if you entered the correct version"
    echo "https://github.com/the-djmaze/snappymail/releases"
    exit 1
fi

##Extract
tar xzvf snappymail-*tar.gz -C /usr/local/CyberCP/public/snappymail/
##Delete tmp
rm -rf snappymail-*tar.gz
#Fix permissions just in case
cd /usr/local/CyberCP/public/snappymail &&
find . -type d -exec chmod 755 {} \; &&
find . -type f -exec chmod 644 {} \;
sed -i "s|\$sCustomDataPath = '';|\$sCustomDataPath = '/usr/local/lscp/cyberpanel/rainloop/data';|g" /usr/local/CyberCP/public/snappymail/snappymail/v/$SNAPPY_VERSION/include.php
#Make more folders if not exist
if [[ ! -d /usr/local/lscp/cyberpanel/rainloop/data/_data_/_default_/configs/ ]]; then
    mkdir -p /usr/local/lscp/cyberpanel/rainloop/data/_data_/_default_/configs/
fi
#Add include
echo "define('APP_DATA_FOLDER_PATH', '/usr/local/lscp/cyberpanel/rainloop/data/');" >>/usr/local/CyberCP/public/snappymail/include.php
echo "sed -i 's|autocreate_system_folders = Off|autocreate_system_folders = On|g'" /usr/local/lscp/cyberpanel/rainloop/data/_data_/_default_/configs/application.ini
echo ""
echo "Snappymail changed to version $SNAPPY_VERSION"