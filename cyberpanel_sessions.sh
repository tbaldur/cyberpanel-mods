#!/bin/bash
for version in $(ls /usr/local/lsws|grep lsphp)
do 
	echo ""
	echo "PHP $version"
	session_time=$(/usr/local/lsws/${version}/bin/php -i |grep -Ei 'session.gc_maxlifetime'| grep -Eo "[[:digit:]]+"|sort -u)
	find -O3 "/var/lib/lsphp/session/${version}" -ignore_readdir_race -depth -mindepth 1 -name 'sess_*' -type f -cmin +$((session_time / 60)) -delete
done
