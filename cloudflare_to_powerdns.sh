#!/bin/sh
# Ask for cloudflare api key
api_key=qwerty1234567890asdfg
email=email@domain.tld
domain_names=( "domain1.com" "domain2.com")
 
for domain in "${domain_names[@]}"
do

	#Get zone ID from domain
	zone_id=$(curl -s -X GET "https://api.cloudflare.com/client/v4/zones?name=$domain&status=active" \
		 -H "X-Auth-Email: $email" \
		 -H "X-Auth-Key: $api_key" \
		 -H "Content-Type: application/json" | \
		 jq -r '.result[].id')

	#Export dns zone
	(curl -s -X GET "https://api.cloudflare.com/client/v4/zones/$zone_id/dns_records/export" \
		 -H "X-Auth-Email: $email" \
		 -H "X-Auth-Key: $api_key" \
		 -H "Content-Type: application/json")>$domain.txt

	#Get zone from txt into sql
	(zone2sql --gmysql --zone=$domain.txt --zone-name="$domain")>$domain.sql

	#Erase first line that contains the domain from sql file
	sed -i '1d' $domain.sql

	#Read mysql password
	mysql_password=$(cat /etc/cyberpanel/mysqlPassword)

	#Delete exiting records from domain

	#Runs query to database
	mysql -u root -p"$mysql_password" cyberpanel < $domain.sql

	#Cleans temporary files
	rm -f $domain.txt
	rm -f $domain.sql
done
