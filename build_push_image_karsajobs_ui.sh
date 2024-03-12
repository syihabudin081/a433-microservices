#!/bin/bash

# Load environment variables from .env file
source .env

# Perintah untuk membuat Docker image dari Dockerfile dengan nama karsajobs dan tag latest
docker build -t ngabtapir/karsajobs-ui:latest .

# Login ke Docker Hub
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

# Mengunggah image ke Docker Hub
docker push ngabtapir/karsajobs-ui:latest
