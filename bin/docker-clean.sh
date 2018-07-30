#!/usr/bin/env bash

# Clean the containers
CONTAINERS=`docker ps -aq`
docker rm $CONTAINERS

# Clean the volumes
VOLUMES=`docker volume ls -q`
docker volume rm $VOLUMES

IMAGES=`docker images -q`
docker rmi $IMAGES