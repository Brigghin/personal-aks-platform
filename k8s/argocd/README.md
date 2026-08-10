# Argocd

Argocd is deployed to AKS using the offical Argocd Helm chart.

# Chart

To add the repo:

helm repo add argo https://argoproj.github.io/argo-helm
helm repo update

# Config

The configuration file is stored in k8s\jenkins\jenkins-values.yaml

# Deployment/ Upgrade

helm upgrade --install argocd argo/argo-cd `
  --namespace argocd `
  --create-namespace `
  -f argocd-values.yaml

# Access

The Argocd server can be accessed at Argocd.brianbargholz.ca
