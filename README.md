# cyberpanel-mods
Small changes to cyberpanel core installation

phpMyAdmin + Snappymail version changer. Enter php version without "."

# For php8.1 write choose "81" in the script.
```
sh <(curl https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/phpmod.sh || wget -O - https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/phpmod.sh)
```
![](https://community.cyberpanel.net/uploads/default/original/2X/0/00feaa708386036ce807b7d7b67c57230f2dfe45.png)
______________________________
# OWSAP modsecurity rules version changer
Input version you want to change to e.g 3.3.4
```
bash <(curl -s https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/modsec_rules_v_changer.sh) || bash <(wget -O - https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/modsec_rules_v_changer.sh) 
```
![imagem](https://github.com/tbaldur/cyberpanel-mods/assets/97204751/a94ab169-6333-40ab-9e11-8632b38aba90)

______________________________

# Snappymail version changer
Input version you want to change to e.g 2.18.2
```
sh <(curl https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/snappymail_v_changer.sh || wget -O - https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/snappymail_v_changer.sh)
```
![imagem](https://user-images.githubusercontent.com/97204751/192609788-355a24ec-e0cf-407a-91b7-51bb4121e5f4.png)


______________________________
# phpMyAdmin version changer
Input version you want to change to e.g 5.2.0
```
sh <(curl https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/phpmyadmin_v_changer.sh || wget -O - https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/phpmyadmin_v_changer.sh)
```
![imagem](https://user-images.githubusercontent.com/97204751/208486782-a0205d4f-8698-4cdb-bad1-9f47e19bf5ba.png)



______________________________
# Fix missing acme-challenge context on all vhosts config
```
sh <(curl https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/fix_ssl_missing_context.sh || wget -O - https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/fix_ssl_missing_context.sh)
```

![imagem](https://user-images.githubusercontent.com/97204751/186309709-30e11069-4833-4d05-b118-d7ba55960b56.png)

_____________________________
# Remove two-step authentification when you lost it
```
sh <(curl https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/disable_2fa.sh || wget -O - https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/disable_2fa.sh)
```

![imagem](https://user-images.githubusercontent.com/97204751/186309709-30e11069-4833-4d05-b118-d7ba55960b56.png)

_____________________________
# Install cyberpanel core database in case you deleted it
```
sh <(curl https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/restore_cyberpanel_database.sh || wget -O - https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/restore_cyberpanel_database.sh)
```

______________________________
# ALPHA FEATURES BELLOW! NEEDS PROPER TESTING! USE AT YOUR OWN RISK!
## Cyberpanel core permissions fix

Run in case you messed your cyberpanel permissions. 
```
sh <(curl https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/fix_permissions.sh || wget -O - https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/fix_permissions.sh)
```
