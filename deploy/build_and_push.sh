#!/bin/bash

APP="autoops-app"
IMAGE="shanil4120/$APP:latest"

docker build -t $IMAGE .
docker login
docker push $IMAGE
