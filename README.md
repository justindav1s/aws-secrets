# aws-secrets
investigating aws secrets on OPenshift 3.11



## Install

### Method 1 ?

https://docs.aws.amazon.com/secretsmanager/latest/userguide/integrating_csi_driver.html

helm repo add secrets-store-csi-driver https://raw.githubusercontent.com/kubernetes-sigs/secrets-store-csi-driver/master/charts
helm install -n kube-system csi-secrets-store secrets-store-csi-driver/secrets-store-csi-driver


### Method 2

https://aws.amazon.com/blogs/containers/aws-secrets-controller-poc/


