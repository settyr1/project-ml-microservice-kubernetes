#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=api


# Step 2
# Run the Docker Hub container with kubernetes
minikube start

# Step 3:
# List kubernetes pods
kubectl get nodes
#kubectl get deployments

# Step 4:
# Forward the container port to a host
kubectl port-forward micro-kubernetes-api-cf49d649d-brl8v 8091:8001
