#!/usr/bin/env bash

CONTAINERS=`docker ps -aq`
docker rm $CONTAINERS
IMAGES=`docker images -q`
docker rmi $IMAGES