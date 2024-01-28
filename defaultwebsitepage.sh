#!/bin/bash
cd /usr/local/CyberCP
wget https://raw.githubusercontent.com/mehdiakram/cyberpanel-tweaks/main/defaultwebsitepage.html
rm /usr/local/CyberCP/index.html
mv /usr/local/CyberCP/defaultwebsitepage.html /usr/local/CyberCP/index.html
