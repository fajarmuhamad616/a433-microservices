#!/bin/sh

# Variable untuk namespace/username, image, dan tag
IMAGE_NAME_APP="order-service"
TAG_APP="latest"
GITHUB_USERNAME="fajarmuhamad616"

# 1. Build Docker Image dengan tag latest
docker build -t $IMAGE_NAME_APP:$TAG_APP .

# 2. Ubah nama image sesuai format Github packages
# Format: <namespace/username>/<repository>:<tag_version>
docker tag $IMAGE_NAME_APP:$TAG_APP ghcr.io/$GITHUB_USERNAME/$IMAGE_NAME_APP:$TAG_APP 

# 3. Login ke Github packages
docker login ghcr.io -u $GITHUB_USERNAME -p $GHCR_TOKEN

# 4. Push image ke Docker Hub
docker push ghcr.io/$GITHUB_USERNAME/$IMAGE_NAME_APP:$TAG_APP
