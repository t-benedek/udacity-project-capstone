#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# check for username and password as parameter
if [ $# -lt 2 ]
  then
    echo "USAGE: upload_docker.sh <username> <password>"
    exit 1
fi

# set dockerpath
dockerpath=tbenedek/quarkus-hello

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u $1 -p $2

# Step 3:
docker tag quarkus-hello $dockerpath
docker push $dockerpath