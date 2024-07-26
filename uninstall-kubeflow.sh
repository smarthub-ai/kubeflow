#! /bin/bash

kustomize build smarthub | kubectl delete -f -
cd extra && bash ./uninstall-extra.sh
