unset binaries docker_images docker_prefix docker_tag manifest_templates \
    master_ip network_provider kubeconfig

source ${KUBEVIRT_PATH}hack/config-default.sh

# Allow different providers to override default config values
test -f "hack/config-provider-vagrant-kubernetes.sh" && source hack/config-provider-vagrant-kubernetes.sh


# Let devs override any default variables, to avoid needing
# to change the version controlled config-default.sh file
test -f "hack/config-local.sh" && source hack/config-local.sh

export binaries docker_images docker_prefix docker_tag manifest_templates \
    master_ip network_provider kubeconfig