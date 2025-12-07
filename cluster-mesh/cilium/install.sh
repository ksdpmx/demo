#!/bin/bash

../../h1 install cilium cilium/cilium --version 1.18.4 -n cilium --create-namespace --set kubeProxyReplacement=false --set cluster.name=kind-cluster-1 --set cluster.id=1 --set ipam.operator.clusterPoolIPv4PodCIDRList=10.241.0.0/16
../../h2 install cilium cilium/cilium --version 1.18.4 -n cilium --create-namespace --set kubeProxyReplacement=false --set cluster.name=kind-cluster-2 --set cluster.id=2 --set ipam.operator.clusterPoolIPv4PodCIDRList=10.242.0.0/16

# TODO for hubble relay
../../k2 -n cilium delete secret cilium-ca
../../k1 -n cilium get secret cilium-ca -o yaml | ../../k2 -n cilium create -f -
