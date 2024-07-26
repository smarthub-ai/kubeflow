#! /bin/bash

while ! kustomize build smarthub | kubectl apply -f -; do echo "Retrying to apply resources"; sleep 10; done

cd extra && bash ./install-extra.sh
