#!/bin/bash

docker rm tomcat
echo Inicializando o container do tomcat7...
docker run --name tomcat -u bematech -d -v /NFCE/tomcat-conf:/home/bematech/tomcat-conf --volumes-from data -p 8080:8080 bema/tomcat
echo Fim.

