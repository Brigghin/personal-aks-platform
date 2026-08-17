# Personal Website

This directory contains the source code for my personal website, built using Vue.js and Vite.

The application serves as a portfolio and personal platform for showcasing projects, technical experience, and professional development in cloud infrastructure, DevOps, and automation.

# Development

Install dependencies:
npm install

Start the development server:
npm run dev

Build the application:
npm run build

Preview the production build:
npm run preview

# Deployment Workflow

The website is deployed using a CI/CD and GitOps workflow.

Source Code Changes
        ↓
Commit to GitHub
        ↓
Jenkins Pipeline Triggered
        ↓
Build Docker Image
        ↓
Push Image to Azure Container Registry (ACR)
        ↓
Update Kubernetes Manifest
        ↓
Commit Changes to GitHub
        ↓
ArgoCD Detects Changes
        ↓
ArgoCD Synchronizes Cluster
        ↓
AKS Deploys Updated Application
