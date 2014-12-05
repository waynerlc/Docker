#!/bin/bash

sudo apt-get install -y python-software-properties

sudo add-apt-repository ppa:dotcloud/lxc-docker

sudo apt-get update

sudo apt-get -y install docker.io

sudo ln -sf /usr/bin/docker.io /usr/local/bin/docker

sudo sed -i '$acomplete -F _docker docker' /etc/bash_completion.d/docker.io

sudo update-rc.d docker.io defaults

sudo alias dl='sudo docker ps -l -q'

sudo gpasswd -a bematech docker

sudo service docker restart

cat data.tar | docker import - bema/data
cat tomcat.tar | docker import - bema/tomcat
cat pgsql.tarr | docker import - bema/pgsql
