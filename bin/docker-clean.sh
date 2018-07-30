#!/usr/bin/env bash

# Clean the containers
CONTAINERS=`docker ps -aq`
if [ -n "$CONTAINERS" ]; then 
    docker rm $CONTAINERS
else
    echo "No containers to clean"
fi


# Clean the volumes
VOLUMES=`docker volume ls -q`
if [ -n "$VOLUMES" ]; then 
    docker volume rm $VOLUMES
else
    echo "No volumes to clean"
fi

IMAGES=`docker images -q`
if [ -n "$IMAGES" ]; then 
    docker rmi $IMAGES
else
    echo "No images to clean"
fi
