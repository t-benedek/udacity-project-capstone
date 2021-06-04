#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub
kubectl delete deployment quarkus-hello

# Step 1:
# This is your Docker ID/path
dockerpath=tbenedek/quarkus-hello

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment quarkus-hello --image=$dockerpath --port=80

# Step 3:
# sleep for 15 seconds to wait for pod to come up
sleep 15

# show pods
kubectl get pods

# Step 4:
# Forward the container port to a host
# kubectl port-forward pod/ml-housing 8000:8000

kubectl port-forward deployment/quarkus-hello 80:80