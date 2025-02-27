# !/bin/bash

# Hentikan eksekusi jika terjadi error
set -e

# Nama Image
DOCKER_USERNAME="ilmi35" #Ganti dengan nama Docker Hub
IMAGE_NAME="$DOCKER_USERNAME/karsajobs-ui:latest"

echo "🌀 Membuild Docker image"
docker build -t $IMAGE_NAME .

echo "🌀 Login docker hub"
echo $PASSWORD_DOCKER_HUB | docker login -u $DOCKER_USERNAME --password-stdin

echo "🌀 Push Docker image ke Dokcer Hub"
docker push $IMAGE_NAME

echo "✅ Berhasil push ke Dokcer Hub:$IMAGE_NAME"