# This file contains the variables used in the groups module
# The groups module creates AWS SSO groups

variable "identity_store_id" {
  type        = string
  description = "The ID of the AWS SSO identity store"
  # This is required to create the groups
  # See https://docs.aws.amazon.com/singlesignon/latest/userguide/identity-store-quickstart.html
}

variable "groups" {
  type = list(object({
    display_name = string
    description  = string
  }))
  description = "A list of objects containing the group information"
  # Each object should contain the required information
  # to create an AWS SSO group
}
