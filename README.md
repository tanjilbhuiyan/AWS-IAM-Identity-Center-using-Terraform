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

## What are the AWS IAM roles and policies created by this Terraform configuration?

The following AWS IAM roles and policies are created by this Terraform configuration:

* `AWSIAMIdentityCenterAdmin`: an AWS IAM role that can be used to administer the AWS IAM Identity Center.
* `AWSIAMIdentityCenterUser`: an AWS IAM role that can be used to access the AWS IAM Identity Center.
* `AWSIAMIdentityCenterReadOnlyAccess`: an AWS IAM policy that grants read-only access to the AWS IAM Identity Center.
* `AWSIAMIdentityCenterFullAccess`: an AWS IAM policy that grants full access to the AWS IAM Identity Center.

## How do I customize this Terraform configuration?

You can customize this Terraform configuration by modifying the `variables.tf` file. This file contains variables that can be used to customize the AWS IAM Identity Center configuration.

For example, you can modify the `identity_center_name` variable to change the name of the AWS IAM Identity Center.

You can also modify the `identity_center_description` variable to change the description of the AWS IAM Identity Center.

