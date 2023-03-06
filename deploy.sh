#!/bin/bash

#git
git add *
git commit -am 'update'
git push

#desplega al servidor
ssh root@icra.loading.net "cd /var/www/vhosts/icra.cat/itlab.icra.cat/itlab; git pull"
