#!/bin/bash

sudo apt-get --yes install software-properties-common
sudo apt-add-repository --yes ppa:ansible/ansible
sudo apt-get update
sudo apt-get --yes install ansible
su - vagrant --command 'ansible-playbook /vagrant/ansible.yml'
su - vagrant --command 'ansible-playbook /vagrant/site.yml'
