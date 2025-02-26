#!/bin/bash

# Nama image di lokal
IMAGE_NAME=item-app
IMAGE_TAG=v1

# Ganti dengan username Docker Hub Anda
DOCKER_USERNAME=ilmialimudins35  
DOCKER_REPO=$DOCKER_USERNAME/$IMAGE_NAME

echo "Membangun Docker image..."
# Membuat Docker image dengan nama 'item-app' dan tag 'v1'
docker build -t $IMAGE_NAME:$IMAGE_TAG .

echo "Daftar image yang tersedia di lokal:"
# Menampilkan daftar image yang ada di lokal
docker images

echo "Menandai image agar sesuai dengan format Docker Hub..."
# Menandai ulang image agar sesuai dengan format repository Docker Hub
docker tag $IMAGE_NAME:$IMAGE_TAG $DOCKER_REPO:$IMAGE_TAG

echo "Login ke Docker Hub..."
# Melakukan login ke Docker Hub
docker login

echo "Mengunggah image ke Docker Hub..."
# Mengunggah image ke Docker Hub
docker push $DOCKER_REPO:$IMAGE_TAG

echo "Proses selesai. Image telah diunggah ke Docker Hub dengan nama $DOCKER_REPO:$IMAGE_TAG"
