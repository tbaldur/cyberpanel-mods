#!/bin/bash

# Exit if any command fails.
set -e

# Usage instructions
usage() {
  echo "Usage: $0 -k API_KEY -e EMAIL -d \"DOMAIN1 DOMAIN2 DOMAIN3 ...\""
  exit 1
}

# Install necessary tools
install_tools() {
  for tool in jq zone2sql; do
    if ! command -v $tool &> /dev/null; then
      echo "$tool could not be found. Trying to install..."
      if ! (yum -y install $tool 2> /dev/null || apt-get install -y $tool 2> /dev/null); then
        echo "Failed to install $tool. Please manually install $tool and run the script again."
        exit 1
      fi
    fi
  done
}

# Parse command-line arguments
while getopts ":k:e:d:" opt; do
  case $opt in
    k) api_key="$OPTARG" ;;
    e) email="$OPTARG" ;;
    d) domain_names=($OPTARG) ;;
    *) usage ;;
  esac
done

# Check if necessary arguments are provided
if [ -z "$api_key" ] || [ -z "$email" ] || [ ${#domain_names[@]} -eq 0 ]; then
  usage
fi

# Install necessary tools
install_tools

for domain in "${domain_names[@]}"
do
  zone_id=$(curl -s -X GET "https://api.cloudflare.com/client/v4/zones?name=$domain&status=active" \
          -H "X-Auth-Email: $email" \
          -H "X-Auth-Key: $api_key" \
          -H "Content-Type: application/json" | \
          jq -r '.result[].id')

  (curl -s -X GET "https://api.cloudflare.com/client/v4/zones/$zone_id/dns_records/export" \
        -H "X-Auth-Email: $email" \
        -H "X-Auth-Key: $api_key" \
        -H "Content-Type: application/json")>"$domain".txt

  (zone2sql --gmysql --zone="$domain".txt --zone-name="$domain")>"$domain".sql

  sed -i '1d' "$domain".sql

  mysql_password=$(cat /etc/cyberpanel/mysqlPassword)

  mysql -u root -p"$mysql_password" cyberpanel < "$domain".sql

  rm -f "$domain".txt
  rm -f "$domain".sql
done

