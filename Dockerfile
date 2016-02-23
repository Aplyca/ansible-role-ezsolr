FROM ubuntu:14.04
MAINTAINER Mauricio Sanchez <msanchez@aplyca.com>
LABEL Description="eZSolr installed and configured using Ansible" Vendor="Aplyca" Version="0.9.1-001"


# Adding Ansible role
ADD . /tmp/Aplyca.eZSolr
WORKDIR /tmp/Aplyca.eZSolr

# Provision image
RUN ./build/provision.sh

# Expose Solr port
EXPOSE 8983

# Start AWS service
ENTRYPOINT ["/bin/bash", "./build/entrypoint.sh"]
