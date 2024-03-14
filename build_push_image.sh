#!/bin/bash

# Load environment variables from .env file
source .env

# Set the image name with GHCR prefix (replace 'username' with your actual username)
IMAGE_NAME=ghcr.io/syihabudin081/a433-microservices/order-service:latest

#build the image
docker build -t "$IMAGE_NAME" .

# Login to GHCR using personal access token with Docker permissions
echo "$GH_TOKEN" | docker login ghcr.io -u syihabudin081 --password-stdin

# Push the image to GHCR
docker push "$IMAGE_NAME"
