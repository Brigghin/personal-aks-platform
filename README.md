# Personal AKS Platform

A cloud-native platform built on Azure Kubernetes Service (AKS) to demonstrate modern DevOps practices, Infrastructure as Code, GitOps, Kubernetes orchestration, and secure cloud-native platform operations. The platform was validated by deploying and operating a personal website as a production workload.

This project showcases the design and operation of a production-ready platform using industry-standard tools: Terraform for infrastructure, Docker for containerization, Azure services for cloud hosting, ArgoCD for GitOps-based deployments, and Jenkins for CI/CD automation.

## Key Components:

- **Infrastructure as Code**: Terraform for provisioning and managing Azure resources
- **Containerization**: Docker for application packaging and Jenkins agent images
- **Container Orchestration**: Azure Kubernetes Service (AKS) with Workload Identity
- **Container Registry**: Azure Container Registry (ACR) for image management
- **GitOps**: ArgoCD with App of Apps pattern for declarative deployments
- **CI/CD**: Jenkins pipelines for automated build and image publishing
- **Monitoring & Observability**: Prometheus and Grafana for metrics and dashboards
- **Identity & Security**: Azure Workload Identity for secure pod authentication
- **Secret Management**: Azure Key Vault, External Secrets Operator (ESO), and Azure Workload Identity for secure credential management
- **Web Framework**: Vue.js + Vite for the personal website frontend

# Architecture

```
GitHub Repository
│
├── Application Source Code (Vue.js + Vite)
├── Terraform Infrastructure as Code
├── Kubernetes Manifests
└── Jenkins Pipeline Configuration
        │
        ▼
Terraform Modules
        │
        ▼
Azure Infrastructure
├── Resource Group
├── Azure Kubernetes Service (AKS)
│   ├── Workload Identity enabled
│   ├── OIDC issuer enabled
│   └── Cluster-level monitoring
├── Azure Container Registry (ACR)
├── Azure Key Vault
├── User Assigned Managed Identity
└── RBAC Role Assignments
        │
        ├──────────────┐
        │              │
        ▼              ▼
Jenkins Pipeline    External Secrets Operator
        │              │
        │              ├─ Authenticate using Workload Identity
        │              ├─ Read secrets from Azure Key Vault
        │              └─ Create Kubernetes Secrets
        │
        ├─ Build Docker Image
        │
        ├─ Push Image to ACR
        │
        └─ Update Kubernetes Manifests
                │
                ▼
        GitHub Repository (Updated Manifests)
                │
                ▼
        ArgoCD Root Application
                │
                ├─ ArgoCD Application
                ├─ Jenkins Application
                ├─ Monitoring Application
                ├─ External Secrets Application
                └─ Personal Website Application
                        │
                        ▼
        Azure Kubernetes Service
        ├── ArgoCD (GitOps management)
        ├── Jenkins (CI/CD automation)
        ├── Prometheus + Grafana (Monitoring)
        ├── External Secrets Operator
        └── Personal Website (Vue.js application)

Azure Key Vault
        │
        ▼
External Secrets Operator
        │
        ▼
Kubernetes Secrets
        ├── Jenkins Credentials
        └── Grafana Credentials
```

# Technology Stack

| Category | Technology |
|----------|-----------|
| **Cloud Platform** | Microsoft Azure |
| **Infrastructure as Code** | Terraform (modularized) |
| **Containerization** | Docker |
| **Container Registry** | Azure Container Registry (ACR) |
| **Container Orchestration** | Kubernetes / Azure Kubernetes Service (AKS) |
| **Identity & Access** | Azure Workload Identity, RBAC |
| **GitOps** | ArgoCD (v3.5.0, App of Apps pattern) |
| **CI/CD** | Jenkins, GitHub |
| **Monitoring & Observability** | Prometheus, Grafana, kube-prometheus-stack |
| **Web Framework** | Vue.js + Vite |
| **HTTPS/TLS** | cert-manager with Let's Encrypt |
| **Secret Managment** | Azure Key Vault, External Secrets Operator (ESO) |

# Infrastructure Components

Terraform provisions and manages all Azure resources through modular configuration:

- **Resource Group Module** (`Modules/rg`): Container for all Azure resources
- **AKS Module** (`Modules/aks`): Kubernetes cluster with Workload Identity and OIDC issuer enabled
- **ACR Module** (`Modules/acr`): Container registry for storing application images
- **User Assigned Identity Module** (`Modules/uai`): Managed identity for pod authentication
- **Role Assignment Module** (`Modules/ra`): RBAC configurations for service principal access
- **Azure Key Vault** (`Modules/kv`): Centralized storage for application and platform secrets synchronized into Kubernetes through External Secrets Operator

All infrastructure is version-controlled and deployed consistently through Infrastructure as Code principles.

# GitOps Architecture

This project uses ArgoCD with the **App of Apps pattern** to manage all Kubernetes resources declaratively. Git serves as the single source of truth for the desired cluster state.

## Application Hierarchy

```
Root Application
├── ArgoCD Application (Self-management)
├── Jenkins Application (CI/CD platform)
├── Monitoring Application (Prometheus + Grafana)
├── External Secrets Application (Key Vault integration)
└── Personal Website Application (Vue.js frontend)
```

**Root Application** (`k8s/argocd/root-application.yaml`): Acts as the single entry point for ArgoCD. When deployed, it automatically discovers and manages all child applications defined in the cluster, eliminating manual application management.

**Child Applications**: Each child application is defined in `k8s/argocd/apps/` and uses corresponding Helm values from `k8s/argocd/values/` for customization. This separation of configuration promotes consistency and reusability.

## Advantages of App of Apps Pattern

- **Single deployment point**: Deploy the entire platform with one manifest
- **Simplified cluster bootstrap**: New clusters can be fully configured from Git in minutes
- **Disaster recovery**: Entire cluster can be recreated from source control
- **Scalability**: Adding new applications requires only creating new child application manifests
- **Consistent updates**: All resources stay synchronized with Git

## Deployment Workflow

### Initial Deployment

```
Terraform
  ↓
Provision Azure Infrastructure
  ↓
Create AKS Cluster with Workload Identity & OIDC
  ↓
Install ArgoCD via Helm
  ↓
Deploy Root Application
  ↓
ArgoCD Discovers Child Applications
  ↓
ArgoCD Deploys All Managed Applications
  ↓
Cluster Ready with All Services
```

### Ongoing Application Updates

```
Developer Updates Application Code
  ↓
Commit to GitHub
  ↓
GitHub Webhook Triggers Jenkins Pipeline
  ↓
Jenkins:
  - Builds Docker Image from Dockerfile
  - Runs Tests (if configured)
  - Pushes Image to ACR with new tag
  ↓
Jenkins publishes container images to Azure Container Registry
Deployment manifests remain version-controlled in Git and synchronized to the cluster through ArgoCD
  ↓
GitHub Webhook Notifies ArgoCD
  ↓
ArgoCD Detects Repository Changes
  ↓
ArgoCD Synchronizes Cluster State
  ↓
AKS Pulls New Image from ACR
  ↓
Deployment Rolled Out with New Version
```

This workflow separates concerns: Jenkins handles building and publishing images, while ArgoCD continuously ensures the cluster matches the desired state defined in Git.

### Cluster Recovery

```
Disaster Occurs (cluster needs recreation)
  ↓
Terraform Recreates Azure Infrastructure
  ↓
New AKS Cluster Provisioned with Workload Identity
  ↓
Install ArgoCD
  ↓
Deploy Root Application
  ↓
ArgoCD Automatically Restores All Applications
  ↓
Full Platform Restored from Git
```

Because all application configuration lives in Git, disaster recovery is simplified: provision infrastructure, install ArgoCD, and let GitOps restore the desired state.

# Key Features

- **Modularized Infrastructure as Code**: Terraform with organized, reusable modules for each Azure resource
- **Containerized Applications**: Docker for consistent development, testing, and production environments
- **Azure Kubernetes Service (AKS)**: Production-grade Kubernetes cluster with security best practices
- **GitOps Deployment Pattern**: ArgoCD for declarative, Git-driven cluster management
- **App of Apps Architecture**: Simplified platform management through hierarchical application organization
- **Automated CI/CD Pipelines**: Jenkins for building, testing, and publishing container images
- **Azure Workload Identity**: Pod-level authentication without storing credentials in secrets
- **Monitoring & Observability**: Prometheus for metrics collection and Grafana for visualization
- **External Secrets Operator (ESO)**: Automated synchronization of secrets from Azure Key Vault into Kubernetes
- **Azure Key Vault Integration**: Centralized secret management for platform credentials
- **Workload Identity Federation**: Secure Azure authentication without storing service principal credentials
- **HTTPS/TLS Automation**: cert-manager with Let's Encrypt for automatic certificate management
- **Version-Controlled Everything**: Infrastructure, applications, and configuration managed in Git
- **Disaster Recovery**: Entire platform recoverable from Git after infrastructure recreation
- **Custom Build Environment**: Purpose-built Jenkins agent Docker image with required tools


# Directory Structure
```
personal-aks-platform/
├── infra/                          # Terraform Infrastructure as Code
│   ├── Modules/
│   │   ├── aks/                   # AKS cluster module
│   │   ├── acr/                   # Container registry module
│   │   ├── rg/                    # Resource group module
│   │   ├── kv/                    # Key vault module
│   │   ├── uai/                   # User assigned identity module
│   │   └── ra/                    # Role assignment module
│   ├── main.tf                    # Root Terraform configuration
│   ├── variables.tf               # Input variables
│   ├── providers.tf               # Azure provider configuration
│   └── output.tf                  # Output values
│
├── app/                            # Vue.js Application
│   ├── src/
│   │   ├── components/            # Vue components (Home, About, Projects, etc.)
│   │   ├── App.vue
│   │   ├── main.js
│   │   └── style.css
│   ├── public/
│   ├── Dockerfile                 # Application container image
│   ├── vite.config.js
│   ├── package.json
│   └── README.md
│
├── k8s/                            # Kubernetes Manifests & GitOps
│   ├── argocd/
│   │   ├── root-application.yaml  # Root Application for App of Apps
│   │   ├── apps/
│   │   │   ├── argocd-application.yaml
│   │   │   ├── jenkins-application.yaml
│   │   │   ├── monitoring-application.yaml
│   │   │   └── personal-website-application.yaml
│   │   └── values/
│   │       ├── argocd-values.yaml
│   │       ├── jenkins-values.yaml
│   │       └── monitoring-values.yaml
│   ├── external-secrets/
│   │   ├── namespace.yaml
│   │   ├── secret-store.yaml
│   │   ├── jenkins-admin-secret.yaml
│   │   └── grafana-admin-secret.yaml
│   └── personal-website/
│       ├── namespace.yaml
│       ├── deployment.yaml
│       ├── service.yaml
│       ├── ingress.yaml
│       └── cluster-issuer-application.yaml
│
├── jenkins-agent/
│   ├── Dockerfile                 # Custom Jenkins agent image
│   └── README.md
│
├── Jenkinsfile                     # Jenkins pipeline definition
└── README.md                       # This file
```

# Learning Outcomes

This project demonstrates practical experience with:

- **Cloud Infrastructure**: Azure resource provisioning, identity management, and RBAC
- **Infrastructure as Code**: Terraform modularization and best practices
- **Kubernetes Administration**: Cluster configuration, RBAC, Workload Identity, networking
- **GitOps**: ArgoCD architecture, App of Apps pattern, declarative management
- **CI/CD Automation**: Jenkins pipelines, artifact management, deployment automation
- **Containerization**: Docker image creation, registry management, multi-stage builds
- **Container Orchestration**: Pod management, service discovery, ingress configuration
- **Platform Engineering**: Designing resilient, scalable, recovery-focused platforms
- **DevOps Best Practices**: Version control, infrastructure reproducibility, monitoring
- **Azure Services**: AKS, ACR, Managed Identities, OIDC federation, RBAC
- **Secrets Management**: Azure Key Vault integration, External Secrets Operator, and secure secret delivery patterns
- **Identity Federation**: Azure Workload Identity and OIDC-based authentication
