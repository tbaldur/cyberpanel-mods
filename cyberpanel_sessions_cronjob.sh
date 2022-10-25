#!/bin/bash
wget https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/cyberpanel_sessions.sh -O /usr/local/cyberpanel_sessions.sh || curl -o /usr/local/cyberpanel_sessions.sh https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/cyberpanel_sessions.sh
echo "17,47 * * * * /usr/local/cyberpanel_sessions.sh >/dev/null 2>&1" >> /var/spool/cron/root