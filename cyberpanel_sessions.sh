#!/bin/bash
# Iterate over all PHP versions installed.
for version in $(ls /usr/local/lsws | grep lsphp)
do 
    echo ""
    echo "Processing PHP $version..."

    # Fetch the session timeout value
    session_time=$(/usr/local/lsws/${version}/bin/php -i | grep -Ei 'session.gc_maxlifetime' | grep -Eo "[[:digit:]]+" | sort -u)

    if [ -z "$session_time" ]; then
        echo "Failed to fetch session.gc_maxlifetime for PHP $version. Skipping..."
        continue
    fi

    # Define the session path
    session_path="/var/lib/lsphp/session/${version}"

    if [ ! -d "$session_path" ]; then
        echo "Session path $session_path does not exist. Skipping..."
        continue
    fi

    # Delete expired sessions.
    expired_sessions_count=$(find -O3 "$session_path" -ignore_readdir_race -depth -mindepth 1 -name 'sess_*' -type f -cmin +$((session_time / 60)) -print -delete | wc -l)

    echo "Deleted $expired_sessions_count expired sessions for PHP $version."
done
