#!/bin/bash
set -e

# Define the Docker image name (make sure to set this to the correct image name)
DOCKER_IMAGE="gowtham904/simple-pythonapp:latest"

# Pull the Docker image from Docker Hub (if needed)
echo "Pulling Docker image: $DOCKER_IMAGE"
docker pull $DOCKER_IMAGE

# Run the Docker container
echo "Starting container: $DOCKER_IMAGE"
docker run -d --name myapp-container -p 80:80 $DOCKER_IMAGE
