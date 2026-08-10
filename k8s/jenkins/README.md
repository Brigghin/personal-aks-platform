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
