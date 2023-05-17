#!/bin/bash

# Asks for phpMyAdmin version
echo "What version of phpMyAdmin do you want to use? (e.g., 5.2.0)"
read phpmyadmin_version

# Create folder if it doesn't exist
mkdir -p /usr/local/CyberCP/public

# Update phpMyAdmin to the provided version
if ! wget -q "https://files.phpmyadmin.net/phpMyAdmin/$phpmyadmin_version/phpMyAdmin-$phpmyadmin_version-all-languages.tar.gz"; then
    echo "Unable to download version $phpmyadmin_version"
    echo "Please check if you entered the correct version."
    echo "You can find available versions at: https://www.phpmyadmin.net/downloads/"
    exit 1
fi

# Move auto-login configs to tmp
mv -f /usr/local/CyberCP/public/phpmyadmin/config.inc.php /tmp/config.inc.php
mv -f /usr/local/CyberCP/public/phpmyadmin/phpmyadminsignin.php /tmp/phpmyadminsignin.php

# Delete old version
rm -rf /usr/local/CyberCP/public/phpmyadmin/
mkdir -p /usr/local/CyberCP/public/phpmyadmin

# Extract new version
tar -xzf phpMyAdmin-$phpmyadmin_version-all-languages.tar.gz -C /usr/local/CyberCP/public/phpmyadmin/ --strip-components=1

# Delete downloaded tar file
rm -rf phpMyAdmin-$phpmyadmin_version-all-languages.tar.gz

# Move auto-login configs from tmp to final destination
mv -f /tmp/config.inc.php /usr/local/CyberCP/public/phpmyadmin/config.inc.php
mv -f /tmp/phpmyadminsignin.php /usr/local/CyberCP/public/phpmyadmin/phpmyadminsignin.php

# Fix permissions
mkdir -p /usr/local/CyberCP/public/phpmyadmin/tmp/twig
cd /usr/local/CyberCP/public/phpmyadmin/ &&
find . -type d -exec chmod 755 {} \; &&
find . -type f -exec chmod 644 {} \; &&
chown -R lscpd:lscpd /usr/local/CyberCP/public/phpmyadmin/tmp

echo ""
echo "phpMyAdmin changed to version $phpmyadmin_version"
