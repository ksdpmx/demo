#!/bin/bash
_ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

_KIND="${_ROOT_DIR}/kind"
_KUBECTL="${_ROOT_DIR}/kubectl"
_HELM="${_ROOT_DIR}/helm"
_CILIUM="${_ROOT_DIR}/cilium"

_KUBECONFIG="${_ROOT_DIR}/kubeconfig"
