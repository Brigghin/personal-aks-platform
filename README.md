# Personal AKS Platform

A cloud-native personal website platform hosted on **Azure Kubernetes Service (AKS)** and built to showcase modern DevOps, cloud infrastructure, and automation practices.

This project serves as a hands-on learning environment for Infrastructure as Code (IaC), containerization, Kubernetes orchestration, configuration management, and CI/CD automation. Rather than focusing solely on the website itself, the primary goal is to design, deploy, and operate the underlying platform using industry-standard technologies and workflows.

---

## Overview

The platform combines Infrastructure as Code, containerization, Kubernetes, and automation tooling to create a repeatable, scalable, and production-style deployment pipeline.

Key objectives include:

- Provisioning Azure infrastructure using Terraform and Terraspace
- Building and packaging applications with Docker
- Hosting workloads on Azure Kubernetes Service (AKS)
- Managing container images with Azure Container Registry (ACR)
- Automating Kubernetes configuration with Ansible
- Implementing CI/CD pipelines using GitHub Actions
- Gaining hands-on experience with cloud-native technologies and DevOps practices

---

## Architecture

```text
GitHub Repository
│
├── Application Source Code
├── Terraform / Terraspace
├── Ansible
├── Kubernetes Manifests
└── GitHub Actions
        │
        ▼

Terraform / Terraspace
        │
        ▼

Azure Infrastructure
│
├── Resource Group
├── Azure Container Registry (ACR)
├── Azure Kubernetes Service (AKS)
├── Networking
└── Monitoring Components
        │
        ▼

Ansible Configuration
│
├── Kubernetes Namespaces
├── Ingress Controller
├── Monitoring Stack
└── Application Deployment
        │
        ▼

Azure Kubernetes Service
        │
        ▼

Containerized Personal Website
```

---

## Technology Stack

### Cloud Platform
- Microsoft Azure

### Infrastructure as Code
- Terraform
- Terraspace

### Configuration Management
- Ansible

### Containerization
- Docker

### Container Registry
- Azure Container Registry (ACR)

### Container Orchestration
- Kubernetes
- Azure Kubernetes Service (AKS)

### CI/CD
- GitHub Actions

### Monitoring & Observability (Planned)
- Azure Monitor
- Log Analytics
- Prometheus
- Grafana

---

## Repository Structure

```text
personal-aks-platform/
│
├── app/
│   ├── Website source code
│   └── Dockerfile
│
├── infra/
│   └── Terraform and Terraspace infrastructure
│
├── ansible/
│   └── Configuration management and deployment automation
│
├── k8s/
│   └── Kubernetes manifests and resources
│
└── .github/
    └── workflows/
        └── GitHub Actions CI/CD pipelines
```

---

## Infrastructure Components

Terraform and Terraspace are responsible for provisioning and managing Azure resources, including:

- Resource Groups
- Azure Container Registry (ACR)
- Azure Kubernetes Service (AKS)
- Virtual Networks and Subnets
- Managed Identities
- Role Assignments
- Log Analytics Workspaces

All infrastructure is managed through code to ensure consistency, repeatability, and version control.

---

## Application Deployment Workflow

### Development

1. Develop and test the application locally
2. Build and validate Docker images
3. Commit changes to GitHub

### Pull Request Validation

When a Pull Request is opened, GitHub Actions will run automated validation checks:

- Terraform formatting validation
- Terraform validation checks
- Terraform plan generation
- Docker image build verification
- Application build validation
- Linting and code quality checks

This ensures that both infrastructure and application changes are reviewed before deployment.

### Deployment

When changes are merged into the main branch:

1. GitHub Actions builds the Docker image
2. The image is pushed to Azure Container Registry
3. Kubernetes deployment manifests are updated
4. AKS pulls the latest image
5. Kubernetes performs a rolling deployment

The result is a fully automated deployment process with minimal downtime.

---

## Ansible Integration

Ansible is responsible for configuring and managing the Kubernetes environment after infrastructure provisioning.

Examples include:

- Namespace creation
- Ingress controller installation
- Monitoring deployment
- Kubernetes resource management
- Application deployment automation

This ensures the platform configuration remains consistent, repeatable, and documented through code.

---

## Development Roadmap

### Phase 1 – Foundation

- Create GitHub repository
- Build project folder structure
- Develop personal website
- Create project documentation

### Phase 2 – Containerization

- Create Dockerfile
- Build and test Docker containers locally
- Validate application portability

### Phase 3 – Infrastructure

- Provision Azure infrastructure using Terraform and Terraspace
- Deploy Azure Container Registry
- Deploy Azure Kubernetes Service
- Configure networking resources

### Phase 4 – Kubernetes

- Push Docker images to ACR
- Deploy application manually to AKS
- Validate Kubernetes workloads and services

### Phase 5 – Automation

- Implement Ansible playbooks
- Automate AKS configuration
- Automate Kubernetes deployments

### Phase 6 – CI/CD

- Implement GitHub Actions workflows
- Automate build, test, and deployment processes
- Introduce deployment validation and quality checks

### Phase 7 – Production Features

- Configure ingress and routing
- Enable HTTPS/TLS
- Implement monitoring and observability
- Improve platform security and reliability

---

## Future Enhancements

Planned improvements include:

- Custom domain integration
- Helm-based deployments
- Multi-environment deployments (Dev/Test/Prod)
- GitOps workflows
- Blue/Green deployments
- Advanced monitoring dashboards
- Security scanning and policy enforcement
- Infrastructure drift detection

---

## Learning Objectives

This project is designed to provide practical experience with:

- Cloud Infrastructure
- Kubernetes Administration
- Infrastructure as Code
- Configuration Management
- Containerization
- CI/CD Automation
- Azure Services
- DevOps Best Practices
- Platform Engineering Concepts

---

## Current Status

🚧 **In Development**

This repository is being built incrementally, with each phase focusing on a different area of cloud and DevOps engineering. The end goal is a fully automated, production-style platform capable of deploying and managing a containerized personal website on Azure Kubernetes Service.
