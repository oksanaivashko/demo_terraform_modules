# Terraform Infrastructure as Code (IaC)

### This repository contains Terraform modules code to provision and manage infrastructure components using the Infrastructure as Code (IaC) approach.

## Table of Contents
- Description
- Directory Structure
- Getting Started
- Usage
- License

## Description
This demo demonstrates how to use Terraform to provision and manage infrastructure resources in different environments (dev and prod) using separate configuration files. It also includes reusable modules for creating EC2 instances, security group and VPC.

## Structure
![Alt text](image.png)

- `environments:` This directory contains environment specific configurations. Each environment dev and prod has its own set of Terraform files, including main.tf for defining resources, variables.tf for input variables, and backend.tf for backend configuration.

`environments/`
- ` dev/:` Configuration files for the development environment.
- `prod/:` Configuration files for the production environment.

- `modules:` This directory holds reusable modules that can be used across different environments. Each module ec2, sg, and vpc has its own set of Terraform files, including main.tf for defining module resources, variables.tf for input variables, and outputs.tf for module outputs.

`modules/`

- `ec2/:` Module for creating EC2 instances
- `sg/:` Module for defining security groups
- `vpc/:` Module for creating Virtual Private Clouds




## Getting Started

To use this demo repository:

1. Clone this repository to your local machine.
2. Navigate to the desired environment directory ( `environments/dev` or `environments/prod`).
3. Review and customize the configuration files as needed.
4. Run `terraform init` to initialize the Terraform workspace.
5. Run `terraform plan` to see the execution plan.
6. Run `terraform apply` to apply the changes and provision the infrastructure.

## Usage
To deploy infrastructure resources, follow these steps:

1. Navigate to the appropriate environment directory (environments/dev).
2. Customize the variables.tf and main.tf files to match your desired configuration.
3. Run terraform init to initialize the environment
4. Run terraform apply to create or update resources

## License

This repository is licensed under the [MIT License](LICENSE).
