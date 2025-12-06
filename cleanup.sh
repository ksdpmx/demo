#!/bin/bash
source ./env.sh

sudo "$kind" delete cluster --name cluster-1 || echo 0
sudo "$kind" delete cluster --name cluster-2 || echo 0

[[ -f ./kubeconfig ]] && rm ./kubeconfig
