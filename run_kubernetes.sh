#!/usr/bin/env bash

# This runs a Docker container on Kubernetes

# Assumes that an image is built and tagged via `upload_docker.sh`

# Step 1:
# This is your Docker ID/path
dockerpath=laviniak/udacity-ml

# Step 2
# Run the Docker container with kubernetes
kubectl run udacity-ml-app --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment.apps/udacity-ml-app 8000:80
