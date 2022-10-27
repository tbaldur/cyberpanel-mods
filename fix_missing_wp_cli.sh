#!/bin/bash
wget https://github.com/tbaldur/cyberpanel-mods/blob/main/wp?raw=true -O /usr/bin/wp || curl -o /usr/bin/wp https://github.com/tbaldur/cyberpanel-mods/blob/main/wp?raw=true
chmod 755 /usr/bin/wp
if [[ $? -ep 0 ]]; then
    echo "WordPress CLI fixed!"
fi