#!/bin/bash

# Load environment variables from .env file
source .env

# Perintah untuk membuat Docker image dari Dockerfile dengan nama item-app dan tag v1
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 "$DOCKER_USERNAME/item-app:v1"

# Login ke Docker Hub
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

# Mengunggah image ke Docker Hub
docker push "$DOCKER_USERNAME/item-app:v1"
