# This file contains the output variables of the module
# The output variables are used to expose the created resources to the user

# The user_ids output variable contains the IDs of the created users
output "user_ids" {
  value       = module.sso.user_ids
  description = "The IDs of the created users"
}

# The user_names output variable contains the usernames of the created users
output "user_names" {
  value       = module.sso.user_names
  description = "The usernames of the created users"
}

# The user_names_with_ids output variable contains the usernames and IDs of the created users
# The value is a map where the key is the username and the value is the user_id
# This output variable is useful when you need to reference the user_id in another Terraform resource
output "user_names_with_ids" {
  value       = module.sso.user_names_with_ids
  description = "The usernames and IDs of the created users"
}

# The group_ids output variable contains the IDs of the created groups
output "group_ids" {
  value       = module.sso.group_ids
  description = "The IDs of the created groups"
}

# The group_names output variable contains the names of the created groups
output "group_names" {
  value       = module.sso.group_names
  description = "The names of the created groups"
}

# The group_names_with_ids output variable contains the names and IDs of the created groups
# The value is a map where the key is the group name and the value is the group_id
# This output variable is useful when you need to reference the group_id in another Terraform resource
output "group_names_with_ids" {
  value       = module.sso.group_names_with_ids
  description = "The names and IDs of the created groups"
}

# The user_names_with_groups output variable contains the usernames and groups of the created users
# The value is a list of objects with user_name and groups
# This output variable is useful when you need to reference the user_name and groups in another Terraform resource
output "user_names_with_groups" {
  value       = module.sso.user_names_with_groups
  description = "The usernames and groups of the created users"
}

# The user_id_by_name output variable is a map of user_name to user_id
# This output variable is useful when you need to reference the user_id in another Terraform resource
output "user_id_by_name" {
  value       = module.sso.user_id_by_name
  description = "A map of user_name to user_id"
}

# The group_id_by_name output variable is a map of group_name to group_id
# This output variable is useful when you need to reference the group_id in another Terraform resource
output "group_id_by_name" {
  value       = module.sso.group_id_by_name
  description = "A map of group_name to group_id"
}
