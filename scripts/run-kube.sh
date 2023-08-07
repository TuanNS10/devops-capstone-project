#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="tuannns99/capstoneproject:v1.0.0"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run capstoneproject --image=$dockerpath --port=80 --labels app=capstone-project


# Step 3:
# List kubernetes pods
kubectl get pods


# Step 4:
# Forward the container port to a host
# kubectl expose deployment capstoneproject --type=LoadBalancer --port=80
kubectl port-forward capstoneproject 8000:80