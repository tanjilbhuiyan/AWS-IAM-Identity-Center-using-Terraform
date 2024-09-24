# Create SSO users
# This resource creates users in the AWS SSO identity store
# The users are created based on the var.users list
# The var.users list should contain objects with the following properties:
# - display_name: The display name of the user
# - user_name: The user name of the user
# - given_name: The given name of the user
# - family_name: The family name of the user
# - email: The email of the user
resource "aws_identitystore_user" "users" {
  count             = length(var.users)
  identity_store_id = var.identity_store_id

  # The display name of the user
  display_name = var.users[count.index].display_name
  # The user name of the user
  user_name = var.users[count.index].user_name

  # The name of the user
  # This is an object with two properties:
  # - given_name: The given name of the user
  # - family_name: The family name of the user
  name {
    given_name  = var.users[count.index].given_name
    family_name = var.users[count.index].family_name
  }

  # The email of the user
  # This is an object with one property:
  # - value: The email of the user
  emails {
    value = var.users[count.index].email
  }
}

