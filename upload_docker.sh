#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=laviniak/udacity-ml

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
cat ./docker_access_token.txt | docker login --username laviniak --password-stdin
docker tag udacity-ml:latest $dockerpath:latest

# Step 3:
# Push image to a docker repository
docker push $dockerpath:latest