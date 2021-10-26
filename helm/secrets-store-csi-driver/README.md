# Install


helm repo add secrets-store-csi-driver https://raw.githubusercontent.com/kubernetes-sigs/secrets-store-csi-driver/master/charts

helm install -n aws-secrets-conf-provider csi-secrets-store secrets-store-csi-driver/secrets-store-csi-driver

oc adm policy add-scc-to-user privileged -z secrets-store-csi-driver


oc apply -f aws-provider-installer.yaml -n aws-secrets-conf-provider

oc adm policy add-scc-to-user privileged -z csi-secrets-store-provider-aws