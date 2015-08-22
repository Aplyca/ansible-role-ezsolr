#!/bin/bash
# Test AWS provisiones with Ansible

echo "Starting VM and provision with role"
vagrant box update
vagrant destroy -f
vagrant up

echo "Running tests"
sleep 5
ansible-playbook -i .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory tests/playbook.yml -u vagrant
