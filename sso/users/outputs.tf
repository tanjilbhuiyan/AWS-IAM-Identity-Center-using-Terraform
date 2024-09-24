# The user_ids output variable contains the IDs of the created users
# The IDs are extracted from the ARN of the user object
# The ARN is in the format of "arn:aws:sso:::identitystore/<identity_store_id>/user/<user_id>"
# We use the split() function to extract the user_id from the ARN
# The [1] index is used to get the second element of the split array, which is the user_id
output "user_ids" {
  description = "The IDs of the created users"
  value       = [for user in aws_identitystore_user.users : split("/", user.id)[1]]
}

# The user_names output variable contains the usernames of the created users
output "user_names" {
  description = "The usernames of the created users"
  value       = [for user in aws_identitystore_user.users : user.user_name]
}

# The user_names_with_ids output variable contains the usernames and IDs of the created users
# The value is a map where the key is the username and the value is the user_id
# This output variable is useful when you need to reference the user_id in another Terraform resource
output "user_names_with_ids" {
  description = "The usernames and IDs of the created users"
  value       = { for user in aws_identitystore_user.users : user.user_name => split("/", user.id)[1] }
}
