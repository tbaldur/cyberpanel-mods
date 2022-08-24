#!/bin/bash

find /usr/local/lsws/conf/vhosts/ -type f -iname "vhost.conf" -exec bash -c '
    for file do
		grep -qF "/usr/local/lsws/Example/html/.well-known/acme-challenge" /${file#?} || echo -e "\ncontext /.well-known/acme-challenge {\n  location                /usr/local/lsws/Example/html/.well-known/acme-challenge\n  allowBrowse             1\n\n  rewrite  {\n\n  }\n  addDefaultCharset       off\n\n  phpIniOverride  {\n\n  }\n}" >> /${file#?}
    done
' _ {} +
