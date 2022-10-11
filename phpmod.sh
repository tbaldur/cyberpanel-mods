#!/bin/bash
echo "Default PHP version changer for cyberpanel apps"
echo "Version chosen here will be used for phpmyadmin / snappymail"
echo ""
## read php version from input and configures it
read -r -p "Choose one of the following php versions [71-72-73-74-80-81]: " Input_Number
echo ""
case "$Input_Number" in
  71)
  if [ -f /usr/local/lsws/lsphp71/bin/lsphp ]; then
    rm -f /usr/local/lscp/fcgi-bin/lsphp &&
    ln -s /usr/local/lsws/lsphp71/bin/lsphp /usr/local/lscp/fcgi-bin/lsphp
    echo "Changed default version to $Input_Number"
  else
    echo "ERROR! Missing php 7.1? Check if /usr/local/lsws/lsphp71 exists."
  fi
  ;;
  72)
  if [ -f /usr/local/lsws/lsphp72/bin/lsphp ]; then
    rm -f /usr/local/lscp/fcgi-bin/lsphp &&
    ln -s /usr/local/lsws/lsphp72/bin/lsphp /usr/local/lscp/fcgi-bin/lsphp
    echo "Changed default version to $Input_Number"
  else
    echo "ERROR! Missing php 7.2? Check if /usr/local/lsws/lsphp72 exists."
  fi
  ;;
  73)
  if [ -f /usr/local/lsws/lsphp73/bin/lsphp ]; then
    rm -f /usr/local/lscp/fcgi-bin/lsphp &&
    ln -s /usr/local/lsws/lsphp73/bin/lsphp /usr/local/lscp/fcgi-bin/lsphp
    echo "Changed default version to $Input_Number"
  else
    echo "ERROR! Missing php 7.3? Check if /usr/local/lsws/lsphp73 exists."
  fi
  ;;
  74)
  if [ -f /usr/local/lsws/lsphp74/bin/lsphp ]; then
    rm -f /usr/local/lscp/fcgi-bin/lsphp &&
    ln -s /usr/local/lsws/lsphp74/bin/lsphp /usr/local/lscp/fcgi-bin/lsphp
    echo "Changed default version to $Input_Number"
  else
    echo "ERROR! Missing php 7.4? Check if /usr/local/lsws/lsphp74 exists."
  fi
  ;;
  80)
  if [ -f /usr/local/lsws/lsphp80/bin/lsphp ]; then
    rm -f /usr/local/lscp/fcgi-bin/lsphp &&
    ln -s /usr/local/lsws/lsphp80/bin/lsphp /usr/local/lscp/fcgi-bin/lsphp
    echo "Changed default version to $Input_Number"
  else
    echo "ERROR! Missing php 8.0? Check if /usr/local/lsws/lsphp80 exists."
  fi
  ;;
  81)
  if [ -f /usr/local/lsws/lsphp81/bin/lsphp ]; then
    rm -f /usr/local/lscp/fcgi-bin/lsphp &&
    ln -s /usr/local/lsws/lsphp81/bin/lsphp /usr/local/lscp/fcgi-bin/lsphp
    echo "Changed default version to $Input_Number"
  else
    echo "ERROR! Missing php 8.1? Check if /usr/local/lsws/lsphp81 exists."
  fi
  ;;
  *)
  echo -e "  Please write php version in the following format [71-72-73-74-80-81]\n"
  exit
  ;;
esac
