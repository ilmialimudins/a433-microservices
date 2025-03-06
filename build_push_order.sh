#!/bin/sh

# Ganti dengan username Github anda
USERNAME='ilmialimudins'

#  Login ke Github Packages
echo $GITHUB_TOKEN | docker login ghcr.io -u $USERNAME --password-stdin

# Build & Push Order Service
docker build -t ghcr.io/$USERNAME/order-service:latest .
docker push ghcr.io/$USERNAME/order-service:latest  

