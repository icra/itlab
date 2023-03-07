#!/bin/bash

#git
git add *
git commit -am 'update'
git push

#desplega al servidor
#ssh root@icra.loading.net "cd /var/www/vhosts/icra.cat/itlab.icra.cat/itlab; git pull"

#servidor
servidor='icra.loading.net'
#ruta carpeta servidor
carpeta="/var/www/vhosts/icra.cat/itlab.icra.cat/itlab"

#rsync
# -h human readable format
# -P mostra progrés
# -v incrementa verbositat
# -r actua recursivament
rsync -hPvr . root@$servidor:$carpeta
