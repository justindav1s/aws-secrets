#!/bin/bash

helm uninstall -n aws-secrets-conf-provider csi-secrets-store
oc delete sa secrets-store-csi-driver
sleep 10

helm install -n aws-secrets-conf-provider csi-secrets-store secrets-store-csi-driver/secrets-store-csi-driver

oc adm policy add-scc-to-user privileged -z secrets-store-csi-driver