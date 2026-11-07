# AWS IAM Security Best Practices: Managing Users, Roles, and Policies with Terraform

This repository contains Infrastructure as Code (IaC) scripts using Terraform to implement AWS IAM security best practices. It demonstrates how to programmatically manage users, roles, and policies while enforcing the Principle of Least Privilege and eliminating hardcoded account details.

---

## 🔒 Security Best Practices

> **Security Note:**  
> We use the `aws_caller_identity` data source to dynamically fetch account details instead of hardcoding sensitive IDs. This ensures the codebase is 100% safe for public repositories and automated deployment pipelines.

---

## 🏗️ Architecture & Resources

This configuration provisions the following AWS IAM resources:
* **Dynamic Account Context:** Uses `aws_caller_identity` to fetch the current AWS Account ID dynamically.
* **IAM User:** Programmatically provisions managed developer users.
* **IAM Policy:** Enforces least privilege with restricted S3 read-only permissions.
* **Policy Attachment:** Securely binds permissions directly to IAM users and roles.

---

## 🚀 Getting Started

### Prerequisites
* [Terraform](https://www.terraform.io/downloads) (v1.0+)
* [AWS CLI](https://aws.amazon.com/cli/) configured with appropriate administrative access.

### Deployment Steps

1. **Initialize the Terraform working directory:**
   ```bash
   terraform init
   terraform plan
   terraform apply
   terraform destroy
   
