#! /bin/bash

while ! kustomize build smarthub | kubectl apply -f -; do echo "Retrying to apply resources"; sleep 10; done

# This is ingress bits that we need to regular k8s clusters. For spot.rackspace based clusters, we don't need it. So commented.
#cd extra && bash ./install-extra.sh
