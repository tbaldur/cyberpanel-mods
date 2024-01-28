#!/bin/bash
mysql_password=$(cat /etc/cyberpanel/mysqlPassword)
mysql -u root -p"$mysql_password" cyberpanel -e "UPDATE loginSystem_administrator SET twoFA = 0, secretKey = 'None' WHERE loginSystem_administrator.id = 1;"

if [[ $? -eq 0 ]]; then
	echo ""
	echo "Two-factor authentication successfully removed for admin user."
	echo "Please try to login now."
fi
