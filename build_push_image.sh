#!/bin/bash

# Load environment variables from .env file
source .env

# Build Docker image
docker build -t item-app:v1 .

# Tag Docker image
docker tag item-app:v1 "$DOCKER_USERNAME/item-app:v1"

# Login to Docker Hub
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

# Push Docker image to Docker Hub
docker push "$DOCKER_USERNAME/item-app:v1"
