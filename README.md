# 🌩️ Nimbus Infra – Terraform Infrastructure

This repository contains Infrastructure as Code (IaC) for deploying a complete Azure environment using **Terraform**.  
The goal is to provide a clean, modular, and production-ready setup that can be reused for real-world DevOps projects.

---

## 🚀 What’s Inside

- **Resource Group** – Central place for all resources  
- **Storage Account + Blob Container** – Remote backend for Terraform state  
- **Azure Container Registry (ACR)** – Stores Docker images securely  
- **Azure Kubernetes Service (AKS)** – Runs containerized applications  
- **Azure Key Vault** – Securely manages secrets and keys  
- **RBAC Assignments** – Granular permissions for AKS, ACR, and Key Vault  

---

## 📂 Project Structure

```bash
terraform/
├── main.tf             # Resource group and root definitions
├── provider.tf         # Provider configs (AzureRM, etc.)
├── backend.tf          # Remote state backend
├── variables.tf        # Input variables
├── local.tf            # Local naming conventions
├── storage.tf          # Storage Account + Blob Container
├── acr.tf              # Azure Container Registry
├── aks.tf              # Azure Kubernetes Service
├── keyvault.tf         # Azure Key Vault
├── rbac.tf             # Role assignments (ACR pull, KeyVault access)
├── output.tf           # Terraform outputs
└── .gitignore          # Excludes .terraform/, state files, etc.

🛠️ Prerequisites

Terraform
 ≥ v1.5

Azure CLI
 ≥ v2.45

An active Azure subscription

Proper IAM permissions (Owner or Contributor)

Usage

Login to Azure

az login


Initialize Terraform

terraform init


Validate configuration

terraform validate


Preview changes

terraform plan


Apply infrastructure

terraform apply


Destroy (optional)

terraform destroy

📌 Notes

All sensitive data (like secrets, SP credentials) should be managed via Azure Key Vault.

.terraform/ and terraform.tfstate* are excluded from git via .gitignore.

If you hit provider API errors, ensure az provider register --namespace Microsoft.ContainerService and similar are registered.

👨‍💻 Author

Nimbus Compute
DevOps • Cloud • Security • Automation

