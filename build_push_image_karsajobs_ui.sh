#!/bin/bash

# Hentikan eksekusi jika terjadi error
set -e

# Nama Image
DOCKER_USERNAME="ilmi35" # Ganti dengan username Docker Hub
IMAGE_NAME="$DOCKER_USERNAME/karsajobs-ui:latest"

echo "🌀 Membuild Docker image : $IMAGE_NAME"
docker build -t "$IMAGE_NAME" .

echo "🌀 Login ke Docker Hub"
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

echo "🌀 Push Docker image ke Docker Hub"
docker push "$IMAGE_NAME"

echo "✅ Berhasil push ke Docker Hub: $IMAGE_NAME"
