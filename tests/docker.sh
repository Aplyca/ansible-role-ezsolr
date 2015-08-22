#!/bin/bash
# test ezsolr provisiones with Ansible

ANSIBLE_ROLE="aplyca.eZSolr"
DOCKER_IMAGE="ansible/ubuntu14.04-ansible"

docker run -it --name test-ezsolr -v `pwd`:/tmp/${ANSIBLE_ROLE} ${DOCKER_IMAGE} /tmp/${ANSIBLE_ROLE}/tests/tests.sh
docker stop test-ezsolr && docker rm test-ezsolr
