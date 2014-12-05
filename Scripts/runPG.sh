#!/bin/bash

sudo docker rm postgresql
echo Incializando o container do postgreSql...
	sudo docker run --name postgresql -d -v /NFCE/data:/var/lib/postgresql -p 5432:5432 -e 'DB_USER=bematech' -e 'DB_PASS=bematech@' -e 'DB_NAME=FiscalManager' bema/pgsql /start
echo Done..
