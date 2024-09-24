# This file contains the variables used in the users module
# The users module creates AWS SSO users

variable "identity_store_id" {
  type = string
  # The ID of the AWS SSO identity store
  # This is required to create the users
  # See https://docs.aws.amazon.com/singlesignon/latest/userguide/identity-store-quickstart.html
}

variable "users" {
  type = list(object({
    display_name = string
    # The display name of the user
    # This is the name that will be displayed in the AWS SSO console
    user_name = string
    # The user name of the user
    # This is the name that the user will use to log in to AWS SSO
    given_name = string
    # The given name of the user
    # This is the first name of the user
    family_name = string
    # The family name of the user
    # This is the last name of the user
    email = string
    # The email of the user
    # This is the email address of the user
  }))
  # A list of objects containing the user information
  # Each object should contain the required information
  # to create an AWS SSO user
}
