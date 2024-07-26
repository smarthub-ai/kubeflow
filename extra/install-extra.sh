#! /bin/bash

helm install -f nginx-ingress-values.yaml nginx ingress-nginx/ingress-nginx
helm install external-dns -f external-dns-values.yaml oci://registry-1.docker.io/bitnamicharts/external-dns
