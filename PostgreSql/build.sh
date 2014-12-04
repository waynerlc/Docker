#!/bin/bash

echo Incializando o build do container...
sudo docker build -t="waynerlc/pgsql:final" .
echo Fim.
