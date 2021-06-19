#!/usr/bin/env bash

# check for username and password as parameter
if [ $# -lt 1 ]
  then
    echo "USAGE: run_kubernetes.sh <docker-username>"
    exit 1
fi

# define variables
dockerpath=$1/quarkus-hello

# This tags and uploads an image to Docker Hub
kubectl delete deployment quarkus-hello

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment quarkus-hello --image=$dockerpath --port=8080

# Step 3:
# sleep for 15 seconds to wait for pod to come up
sleep 15

# Forward the container port to a host
kubectl port-forward deployment/quarkus-hello 8080:80