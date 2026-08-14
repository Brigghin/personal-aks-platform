# Kubernetes

This directory contains all Kubernetes resources and GitOps configurations used by the platform.

Applications are managed using ArgoCD's App of Apps pattern and deployed to Azure Kubernetes Service (AKS).

A root application acts as the single entry point for all cluster-managed applications. When the root application is deployed, ArgoCD automatically discovers and deploys its child applications, which in turn deploy their associated Kubernetes resources.

This approach simplifies cluster bootstrapping and disaster recovery. After provisioning the AKS cluster and installing ArgoCD, only the root application needs to be deployed. ArgoCD then reconciles the desired state defined in Git and automatically deploys all managed applications and resources.

If need be, to redeploy the root application simpily run:
"kubectl apply -f k8s/argocd/root-application/root-app.yaml"
from the root of the project.

# Components

argocd/
Contains the GitOps configuration used to manage cluster resources.

apps/
Application definitions managed by ArgoCD. These manifests define the workloads that ArgoCD should deploy and synchronize within the cluster.

values/
Helm values files used to customize ArgoCD deployments and application configurations.

root-application/
Implements the App of Apps pattern. This root application serves as the entry point for ArgoCD and is responsible for deploying and managing all child applications defined in this repository.

personal-website/
Contains the Kubernetes manifests required to deploy the personal website.

# Ongoing Updates

Application updates follow a CI/CD and GitOps workflow that combines Jenkins, Azure Container Registry (ACR), GitHub, and ArgoCD.

Application Code Change
            ↓
      Commit to GitHub
            ↓
     Jenkins Pipeline
            ↓
      Build Docker Image
            ↓
     Push Image to ACR
            ↓
 Update Kubernetes Manifests
            ↓
      Commit to GitHub
            ↓
   ArgoCD Detects Changes
            ↓
 ArgoCD Synchronizes Cluster
            ↓
 Updated Resources Applied
            ↓
      Application Deployed

This workflow separates image creation from application deployment. Jenkins is responsible for building and publishing container images, while ArgoCD continuously monitors the Git repository and ensures the AKS cluster matches the desired state defined in Kubernetes manifests.
