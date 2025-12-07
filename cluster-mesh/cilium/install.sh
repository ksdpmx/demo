#!/bin/bash

# Error: Unable to install Cilium: create: failed to create: namespaces "cilium" not found
../../k1 create ns cilium
../../c1 install --set global.kubeProxyReplacement=disabled --namespace cilium

../../k2 create ns cilium
../../c2 install --set global.kubeProxyReplacement=disabled --namespace cilium
