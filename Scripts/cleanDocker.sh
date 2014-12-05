#!/bin/bash

sudo docker rm `sudo docker ps -a  | grep Exit | awk '{ print $1 }'`
