#!/bin/bash

set -e

cd ~/k8s-infrastructure/kubespray
ansible-playbook -i inventory/k8s/hosts.ini cluster.yml -v -b --skip-tags docker
