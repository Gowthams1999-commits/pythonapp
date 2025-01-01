#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull gowtham904/simple-pythonapp:latest

# Run the Docker image as a container
docker run -d -it --name mypython-con -p 80:80 gowtham904/simple-pythonapp:latest
