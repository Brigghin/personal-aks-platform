# Terraform Infrastructure
This directory contains the Terraform configuration used to provision and manage the Azure infrastructure supporting the personal AKS platform.

Infrastructure is managed using Infrastructure as Code (IaC), allowing Azure resources to be deployed, modified, and rebuilt in a consistent and repeatable manner.

# Deployment Workflow

1. Infrastructure changes are made in Terraform configuration files.
2. Terraform generates an execution plan.
3. Terraform provisions or updates Azure resources.
4. Kubernetes resources are deployed separately through ArgoCD and GitOps workflows.