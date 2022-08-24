# cyberpanel-mods
Small changes to cyberpanel core installation

phpMyAdmin + Snappymail version changer. Enter php version without "."

For php8.1 write choose "81" in the script.
```
sh <(curl https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/phpmod.sh || wget -O - https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/phpmod.sh)
```
![](https://community.cyberpanel.net/uploads/default/original/2X/0/00feaa708386036ce807b7d7b67c57230f2dfe45.png)

______________________________
# ALPHA! NEEDS PROPER TESTING

## Cyberpanel core permissions fix

Run in case you messed your cyberpanel permissions. 
```
sh <(curl https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/fix_permissions.sh || wget -O - https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/fix_permissions.sh)
```

______________________________
# Fix missing acme-challenge context on all vhosts config
```
sh <(curl [https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/fix_permissions.sh](https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/fix_ssl_missing_context.sh) || wget -O - [https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/fix_permissions.sh](https://raw.githubusercontent.com/tbaldur/cyberpanel-mods/main/fix_ssl_missing_context.sh))
```
