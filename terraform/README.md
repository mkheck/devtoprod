# Azure Container Apps Infrastructure

This directory contains Terraform configuration to provision the Azure infrastructure required for the Spring Boot application. The configuration creates:

- Resource Group
- Container App Environment
- Container Registry
- Container App (infrastructure only, not deploying the app)
- Log Analytics Workspace
- Application Insights
- Managed Identity with ACR Pull access

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) (>= 1.2.0)
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)
- Azure subscription with appropriate permissions

## Usage

1. Login to Azure CLI:
   ```
   az login
   ```

2. Initialize Terraform:
   ```
   terraform init
   ```

3. Plan the deployment:
   ```
   terraform plan -out=tfplan
   ```

4. Apply the changes:
   ```
   terraform apply tfplan
   ```

5. When you're done, you can destroy the resources:
   ```
   terraform destroy
   ```

## Configuration

Customize the deployment by modifying the variables in `variables.tf` or by creating a `terraform.tfvars` file with your own values.

## Notes

- The Container App is created with a placeholder image reference.
- You'll need to build and push your Spring Boot application image to the created Azure Container Registry separately.
- For production use, consider using a remote backend for storing Terraform state by configuring the `backend.tf` file.