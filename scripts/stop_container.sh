#!/bin/bash
set -e

# Define the container name (make sure to set this to the correct container name) 
CONTAINER_NAME=py-test

# Stop the running container if it exists
if [ $(docker ps -q -f name=$CONTAINER_NAME) ]; then
    echo "Stopping container: $CONTAINER_NAME"
    docker stop $CONTAINER_NAME
else
    echo "No running container found for $CONTAINER_NAME"
fi
