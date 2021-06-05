#!/usr/bin/env bash

# define variables
dockerpath=tbenedek/quarkus-hello
deplname = quarkus-hello

# This tags and uploads an image to Docker Hub
kubectl delete deployment $deplname

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment $deplname --image=$dockerpath --port=8080

# Step 3:
# sleep for 15 seconds to wait for pod to come up
sleep 15

# Forward the container port to a host
kubectl port-forward deployment/$deplname 8080:80