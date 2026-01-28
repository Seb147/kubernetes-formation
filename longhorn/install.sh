#!/bin/bash

helm repo add longhorn https://charts.longhorn.io

helm repo update

helm install longhorn longhorn/longhorn --namespace longhorn-system --create-namespace --version 1.10.1

# Attention, appliquer ce fix pour éviter les erreurs lors de l'affectation d'un pvc sur un pod
# https://docs.opsramp.com/platform-features/nextgen-gateways/troubleshoot/longhorn-pvc-mount-failure/

kubectl -n longhorn-system get pod

