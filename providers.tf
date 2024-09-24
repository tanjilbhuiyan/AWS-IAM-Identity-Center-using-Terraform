# Configure the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# AWS provider block
provider "aws" {
  # The region where the resources will be created
  region = "AWS Region"

  # The AWS profile to use
  profile = "default"
}

# Note: The region and profile variables should be set in your
# environment variables or in the ~/.aws/credentials file.
# See https://registry.terraform.io/providers/hashicorp/aws/latest/docs#environment-variables
# for more information.

