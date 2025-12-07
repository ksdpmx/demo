#!/bin/bash

../../h1 install cilium cilium/cilium --version 1.18.4 -n cilium --create-namespace --set kubeProxyReplacement=false --set cluster.name=kind-cluster-1 --set cluster.id=1
../../h2 install cilium cilium/cilium --version 1.18.4 -n cilium --create-namespace --set kubeProxyReplacement=false --set cluster.name=kind-cluster-2 --set cluster.id=2
