# !/bin/bash

# Hentikan eksekusi jika terjadi error
set -e

# Nama image
DOCKER_USERNAME="ilmi35" # Ganti dengan username Docker Hub 
IMAGE_NAME="$DOCKER_USERNAME/karsajobs:latest"

echo "🌀 Membuild Docker image: $IMAGE_NAME"
docker build -t $IMAGE_NAME .

echo "🌀 Login ke Docker Hub"
echo $PASSWORD_DOCKER_HUB | docker login -u $DOCKER_USERNAME --password-stdin

echo "🌀 Push Docker image Docker Hub"
docker push $IMAGE_NAME  

echo "✅ Berhasil push ke Docker Hub: $IMAGE_NAME "