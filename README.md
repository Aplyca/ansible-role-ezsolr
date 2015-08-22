# Ansible Role: eZSolr

[![Build Status](https://travis-ci.org/Aplyca/ansible-role-ezsolr.svg?branch=master)](https://travis-ci.org/Aplyca/ansible-role-ezsolr)
[![Circle CI](https://circleci.com/gh/Aplyca/ansible-role-ezsolr.svg?style=svg)](https://circleci.com/gh/Aplyca/ansible-role-ezsolr)

Ansible Role that installs and configure eZSolr on Debian/Ubuntu.

## Requirements

Use hash behavior for variables in ansible.cfg
See example: https://github.com/Aplyca/ansible-role-eszolr/blob/master/tests/ansible.cfg
See official docs: http://docs.ansible.com/intro_configuration.html#hash-behaviour

## Installation

Using ansible galaxy:
```bash
ansible-galaxy install aplyca.eZSolr
```
You can add this role as a dependency for other roles, add the role to the meta/main.yml file of your own role:
```yaml
dependencies:
  - { role: mauricios.eZSolr }
```

## Role Variables

See default variables: https://github.com/Aplyca/ansible-role-ezsolr/blob/master/defaults/main.yml

## Dependencies

aplyca.PHP

## Testing
### Using Vagrant:

```bash
tests/vagrant.sh
```
### Using Docker:

```bash
tests/docker.sh
```

## License

MIT / BSD

## Author Information

Mauricio Sánchez from Aplyca SAS (http://www.aplyca.com)
