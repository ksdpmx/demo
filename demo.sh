#!/bin/bash
source ./env.sh

sudo "$_KIND" create cluster --config ./cluster-1.yaml --name cluster-1
sudo "$_KIND" create cluster --config ./cluster-2.yaml --name cluster-2

sudo "$_KIND" get kubeconfig --name cluster-1 > kubeconfig-1.yaml
sudo "$_KIND" get kubeconfig --name cluster-2 > kubeconfig-2.yaml

KUBECONFIG=kubeconfig-1.yaml:kubeconfig-2.yaml "$_KUBECTL" config view --flatten > kubeconfig
[[ -f ./kubeconfig-1.yaml ]] && rm kubeconfig-1.yaml
[[ -f ./kubeconfig-2.yaml ]] && rm kubeconfig-2.yaml

./k1 label node cluster-1-worker deployment.group=worker
./k1 label node cluster-1-worker2 deployment.group=worker
./k2 label node cluster-2-worker deployment.group=worker
./k2 label node cluster-2-worker2 deployment.group=worker

>&2 echo "please use ./k1 and ./k2 for kubectl"
