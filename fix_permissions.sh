#!/usr/bin/env bash
apt install acl -y || dnf install acl -y || yum install acl -y
echo "Lets try  to fix..."
cd /root  &&
(curl https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/cp_permissions.txt || wget -O - https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/cp_permissions.txt) > cp_permissions.txt &&
cd / &&
setfacl --restore=/root/cp_permissions.txt
systemctl restart lsws &&
systemctl restart lscpd &&
echo "Permissions fixed"
