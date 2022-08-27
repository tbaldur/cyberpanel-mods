#!/bin/sh
## Download prototype cyberpanel database
(curl https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/cyberpanel.sql -o cyberpanel.sql || wget -q https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/cyberpanel.sql)
#Read mysql password
mysql_password=$(cat /etc/cyberpanel/mysqlPassword)

#Creates empty cyberpanel database
mysql -u root -p"$mysql_password" cyberpanel -e "CREATE DATABASE cyberpanel;"

#Populates cyberpanel database with prototype
mysql -u root -p"$mysql_password" cyberpanel < cyberpanel.sql

#Deletes cyberpanel.sql
rm -f cyberpanel.sql
