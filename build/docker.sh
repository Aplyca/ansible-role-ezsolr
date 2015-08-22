#!/bin/bash
# Build AWS CLI provisioned with Ansible

DOCKER_IMAGE="aplyca/ezsolr"

echo "Building image"
docker build -t ${DOCKER_IMAGE} .

echo "Stopping and removing running db containers"
docker stop ezsolr && docker rm ezsolr

echo "Starting new db container"
docker run -d --name ezsolr -p 8983:8983 aplyca/ezsolr
