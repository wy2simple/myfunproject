#!/bin/bash

set -e

cd ~/k8s-infrastructure
ansible-playbook -i kubespray/inventory/k8s/hosts.ini playbooks/nvidia.yml -v -b
ansible-playbook -i kubespray/inventory/k8s/hosts.ini playbooks/wait-server-reboot.yml -v -b
ansible-playbook -i kubespray/inventory/k8s/hosts.ini playbooks/docker.yml -v -b
ansible-playbook -i kubespray/inventory/k8s/hosts.ini playbooks/nvidia-docker.yml -v -b
ansible-playbook -i kubespray/inventory/k8s/hosts.ini playbooks/docker-runtime-node.yml -v -b
