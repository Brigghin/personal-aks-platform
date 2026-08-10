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
