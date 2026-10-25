# AWS IAM Security Best Practices with Terraform

This repository demonstrates how to manage AWS IAM Users, Roles, and Custom Policies programmatically using Terraform while following the **Principle of Least Privilege (PoLP)**.

This code accompanies the detailed guide published on **Kawtar Cloud Hub**:
📖 **[Read the Full Step-by-Step Article](https://kawtarcloud.com/aws-iam-security-best-practices-managing-users-roles-and-policies-with-terraform/)**

---

## 🏗️ Project Structure

* `main.tf` - AWS Provider configuration.
* `variables.tf` - Configurable variables for region and IAM user name.
* `iam.tf` - IAM User creation, S3 Read-Only Policy definition, and attachment.
* `outputs.tf` - Output metadata (User Name and Policy ARN).

---

## 🚀 Quick Start Guide

### Prerequisites
1. An active **AWS Account**.
2. **Terraform CLI** installed.
3. **AWS CLI** configured with access keys (`aws configure`).

### Execution Steps

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/Kawtar-cloud-hub/terraform-aws-iam-best-practices.git](https://github.com/Kawtar-cloud-hub/terraform-aws-iam-best-practices.git)
   cd terraform-aws-iam-best-practices
terraform init
terraform validate
terraform plan
terraform apply
terraform destroy
