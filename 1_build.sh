#!/bin/bash

TAG="v1.20.3-rc1"

docker build -f build/docker/Dockerfile.self-local \
  -t aauren/watchtower:latest \
  -t aauren/watchtower:"${TAG}" .
docker push aauren/watchtower:latest
docker push aauren/watchtower:"${TAG}"
