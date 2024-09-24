# AWS IAM Identity Center using Terraform

This repository contains Terraform configurations to create an AWS IAM Identity Center (successor to AWS Single Sign-On) with the required AWS IAM roles and policies.

## What is AWS IAM Identity Center?

AWS IAM Identity Center (successor to AWS Single Sign-On) is a service that enables users to access multiple AWS accounts and applications with a single sign-on experience. It eliminates the need for users to remember multiple usernames and passwords, and it provides administrators with a single place to manage access to their AWS resources.

## What does this Terraform configuration do?

This Terraform configuration creates an AWS IAM Identity Center, including the required AWS IAM roles and policies. It also creates an AWS IAM user that can be used to test the AWS IAM Identity Center configuration.

## How do I use this Terraform configuration?

1. Clone this repository and navigate to the `terraform` directory.
2. Initialize the Terraform working directory by running `terraform init`.
3. Create the AWS IAM Identity Center by running `terraform apply`.
4. Once the AWS IAM Identity Center is created, you can test it by running `terraform output` and using the output values to sign in to the AWS Management Console.

## How do I customize this Terraform configuration?

You can customize this Terraform configuration by modifying the `variables.tf` file. This file contains variables that can be used to customize the AWS IAM Identity Center configuration.


## File Tree

- [README.md](README.md)
- [main.tf](main.tf)
- [outputs.tf](outputs.tf)
- [variables.tf](variables.tf)
- [sso](sso)
  - [main.tf](main.tf)
  - [outputs.tf](outputs.tf)
  - [locals.tf](locals.tf)
  - [groups](modules/groups)
    - [main.tf](modules/groups/main.tf)
    - [outputs.tf](modules/groups/outputs.tf)
    - [variables.tf](modules/groups/variables.tf)
  - [policy](modules/policy)
    - [main.tf](modules/policy/main.tf)
    - [outputs.tf](modules/policy/outputs.tf)
    - [variables.tf](modules/policy/variables.tf)
  - [users](modules/users)
    - [main.tf](modules/users/main.tf)
    - [outputs.tf](modules/users/outputs.tf)
    - [variables.tf](modules/users/variables.tf)

