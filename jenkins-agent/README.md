# Monitoring Stack

The monitoring stack is deployed to Azure Kubernetes Service (AKS) using the kube-prometheus-stack Helm chart.

# Chart

Add the Prometheus Community Helm repository:

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

# Config

The monitoring stack configuration file is stored at:

k8s\monitoring\kube-prometheus-stack-values.yaml

# Components

The monitoring stack includes:

- Prometheus
- Grafana
- Alertmanager
- kube-state-metrics
- node-exporter

# Deployment / Upgrade

Deploy or upgrade the monitoring stack:

helm upgrade --install monitoring prometheus-community/kube-prometheus-stack `
  --namespace monitoring `
  --create-namespace `
  -f kube-prometheus-stack-values.yaml

# Access

Grafana can be accessed at:

https://grafana.brianbargholz.ca



# Jenkins

Jenkins is deployed to AKS using the offical Jenkins Helm chart.

# Chart

To add the repo:

helm repo add jenkins https://charts.jenkins.io
helm repo update

# Config

The configuration file is stored in k8s\jenkins\jenkins-values.yaml

# Deployment/ Upgrade

helm upgrade --install jenkins jenkins/jenkins `
  --namespace jenkins `
  --create-namespace `
  -f jenkins-values.yaml

# Access

The Jenkins server can be accessed at Jenkins.brianbargholz.ca

# Argocd

Argocd is deployed to AKS using the offical Argocd Helm chart.

# Chart

To add the repo:

helm repo add argo https://argoproj.github.io/argo-helm
helm repo update

# Config

The configuration file is stored in k8s\jenkins\argocd-values.yaml

# Deployment/ Upgrade

helm upgrade --install argocd argo/argo-cd `
  --namespace argocd `
  --create-namespace `
  -f argocd-values.yaml

# Access

The Argocd server can be accessed at Argocd.brianbargholz.ca


