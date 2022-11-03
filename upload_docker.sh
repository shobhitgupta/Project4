#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=shobhitgupta1982/sg-app
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=shobhitgupta1982
docker tag sg-app $dockerpath
# Step 3:
# Push image to a docker repository
docker push $dockerpath