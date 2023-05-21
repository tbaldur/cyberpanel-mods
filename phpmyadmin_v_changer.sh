#!/bin/bash
set -e

# Asks for phpMyAdmin version
read -p "What version of phpMyAdmin do you want to use? (e.g., 5.2.1): " phpmyadmin_version

# Define constants
dest_dir=/usr/local/CyberCP/public/phpmyadmin
temp_dir=/tmp
download_url="https://files.phpmyadmin.net/phpMyAdmin/$phpmyadmin_version/phpMyAdmin-$phpmyadmin_version-all-languages.tar.gz"

# Create folder if it doesn't exist
mkdir -p $dest_dir

# Download phpMyAdmin archive
if ! wget -q -O $temp_dir/phpmyadmin.tar.gz $download_url; then
    echo "Unable to download version $phpmyadmin_version"
    echo "Please check if you entered the correct version."
    echo "You can find available versions at: https://www.phpmyadmin.net/downloads/"
    exit 1
fi

# Move auto-login configs to tmp
mv -f $dest_dir/config.inc.php $temp_dir
mv -f $dest_dir/phpmyadminsignin.php $temp_dir

# Delete old version
rm -rf $dest_dir
mkdir -p $dest_dir

# Extract new version
tar -xzf $temp_dir/phpmyadmin.tar.gz -C $dest_dir --strip-components=1

# Delete downloaded tar file
rm -f $temp_dir/phpmyadmin.tar.gz

# Move auto-login configs from tmp to final destination
mv -f $temp_dir/config.inc.php $dest_dir/config.inc.php
mv -f $temp_dir/phpmyadminsignin.php $dest_dir/phpmyadminsignin.php

# Fix permissions
mkdir -p $dest_dir/tmp/twig
cd $dest_dir &&
find . -type d -exec chmod 755 {} \; &&
find . -type f -exec chmod 644 {} \; &&
chown -R lscpd:lscpd $dest_dir/tmp

echo ""
echo "phpMyAdmin changed to version $phpmyadmin_version"
