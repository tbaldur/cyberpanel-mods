#!/bin/bash

#Asks for phpmyadmin version
echo "What version of phpmyadmin you want to use? (e.g 5.2.0) "
read PHPMYADMIN_VERSION

#Create folder if doesn't exist
if [[ ! -d /usr/local/CyberCP/public ]]; then
    mkdir -p /usr/local/CyberCP/public
fi
if [[ ! -d /usr/local/CyberCP/public/phpmyadmin ]]; then
    mkdir -p /usr/local/CyberCP/public/phpmyadmin
fi

#Update phpmyadmin to provided version
##Download
cd /tmp
wget https://files.phpmyadmin.net/phpMyAdmin/$PHPMYADMIN_VERSION/phpMyAdmin-$PHPMYADMIN_VERSION-all-languages.tar.gz
RETVAL=$?

if [[ ! $RETVAL -eq 0 ]]; then
    echo "Unable to download the version $PHPMYADMIN_VERSION"
    echo "Please check if you entered the correct version"
    echo "https://www.phpmyadmin.net/downloads/"
    exit 1
fi
##Move auto-login configs to tmp
mv -f /usr/local/CyberCP/public/phpmyadmin/config.inc.php /tmp/config.inc.php
mv -f /usr/local/CyberCP/public/phpmyadmin/phpmyadminsignin.php /tmp/phpmyadminsignin.php
##Delete old version
rm -rf /usr/local/CyberCP/public/phpmyadmin
##Extract
tar xzvf phpMyAdmin-$PHPMYADMIN_VERSION-all-languages.tar.gz -C /usr/local/CyberCP/public/phpmyadmin/
##Delete tmp
rm -rf phpMyAdmin-$PHPMYADMIN_VERSION-all-languages.tar.gz
##Move auto-login configs from tmp to final destination
mv -f /tmp/config.inc.php /usr/local/CyberCP/public/phpmyadmin/config.inc.php
mv -f /tmp/phpmyadminsignin.php /usr/local/CyberCP/public/phpmyadmin/phpmyadminsignin.php
##Fix permissions just in case
cd /usr/local/CyberCP/public/phpmyadmin/tmp &&
find . -type d -exec chmod 755 {} \; &&
find . -type f -exec chmod 644 {} \; &&
chown -R lscpd:lscpd /usr/local/CyberCP/public/phpmyadmin/tmp
echo ""
echo "phpMyAdmin changed to version $PHPMYADMIN_VERSION"