#!/bin/bash

set -e

cd ~/k8s-infrastructure
ansible-playbook -i kubespray/inventory/k8s/hosts.ini playbooks/helm_init.yml -v -b
ansible-playbook -i kubespray/inventory/k8s/hosts.ini playbooks/prometheus.yml -v -b
ansible-playbook -i kubespray/inventory/k8s/hosts.ini playbooks/kube-dashboard.yml -v -b
ansible-playbook -i kubespray/inventory/k8s/hosts.ini playbooks/nvidia-gpu-plugin.yml -v -b
ansible-playbook -i kubespray/inventory/k8s/hosts.ini playbooks/prom-pushgateway.yml -v -b
ansible-playbook -i kubespray/inventory/k8s/hosts.ini playbooks/node-util.yml -v -b
ansible-playbook -i kubespray/inventory/k8s/hosts.ini playbooks/tensorflow.yml -v -b
ansible-playbook -i kubespray/inventory/k8s/hosts.ini playbooks/gpu-prom-exporter.yml -v -b
