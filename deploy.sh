#!/bin/bash

#git
git add *
git commit -am 'update'
git push

#desplega al servidor
#ssh root@icra.loading.net "cd /var/www/vhosts/icra.cat/itlab.icra.cat/itlab; git pull"

#servidor
servidor='icra.loading.net' #loading
#ruta carpeta servidor
carpeta="/var/www/vhosts/icra.cat/itlab.icra.cat"

#exclou base de dades
#exclou ruta de la base de dades
rsync -hvr . root@$servidor:$carpeta
