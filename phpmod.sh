#!/bin/bash

echo "Default PHP version changer for cyberpanel apps"
echo "Version chosen here will be used for phpmyadmin / snappymail"
echo ""

read -r -p "Choose one of the following php versions [71-72-73-74-80-81-82]: " Input_Number
echo ""

install_php_version() {
  if ! (yum -y install lsphp$1 2> /dev/null || apt-get install -y lsphp$1 2> /dev/null); then
    echo "Failed to install PHP $1. Package may not exist or package manager (yum/apt-get) may not be available."
    exit 1
  fi
}

link_php_version() {
  rm -f /usr/local/lscp/fcgi-bin/lsphp &&
  ln -s /usr/local/lsws/lsphp$1/bin/lsphp /usr/local/lscp/fcgi-bin/lsphp
  echo "Changed default version to $Input_Number"
}

change_php_version() {
  if [ -f /usr/local/lsws/lsphp$1/bin/lsphp ]; then
    link_php_version $1
  else
    echo "ERROR! Missing PHP $2. Installing..."
    install_php_version $1 && link_php_version $1
  fi
}

case "$Input_Number" in
  71) change_php_version 71 "7.1" ;;
  72) change_php_version 72 "7.2" ;;
  73) change_php_version 73 "7.3" ;;
  74) change_php_version 74 "7.4" ;;
  80) change_php_version 80 "8.0" ;;
  81) change_php_version 81 "8.1" ;;
  82) change_php_version 82 "8.2" ;;
  *)
    echo -e "Please write PHP version in the following format [71-72-73-74-80-81-82]\n"
    exit 1
  ;;
esac
