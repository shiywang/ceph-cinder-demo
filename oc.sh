#!/bin/bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
IP="$(vagrant ssh-config master | grep HostName | tr -s ' '| cut -d ' ' -f 3)"

${DIR}/.oc --config ${DIR}/.kubeconfig --server https://${IP}:8443 "$@"
