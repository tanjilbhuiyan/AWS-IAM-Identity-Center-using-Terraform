# This output contains a list of objects with user_name and groups
output "user_names_with_groups" {
  value = [for user in local.users : {
    user_name = user.user_name
    groups    = user.groups
  }]
  description = "A list of objects with user_name and groups"
}

# This output is a map of user_name to user_id
output "user_id_by_name" {
  value = {
    for user in local.users : user.user_name => lookup(module.users.user_names_with_ids, user.user_name, null)
  }
  description = "A map of user_name to user_id"
}

# This output is a map of group_name to group_id
output "group_id_by_name" {
  value = {
    for group in local.groups : group.display_name => lookup(module.groups.group_names_with_ids, group.display_name, null)
  }
  description = "A map of group_name to group_id"
}

# This output contains a list of user_ids
output "user_ids" {
  value       = module.users.user_ids
  description = "A list of user_ids"
}

# This output contains a list of user_names
output "user_names" {
  value       = module.users.user_names
  description = "A list of user_names"
}

# This output is a map of user_name to user_id
output "user_names_with_ids" {
  value       = module.users.user_names_with_ids
  description = "A map of user_name to user_id"
}

# This output contains a list of group_ids
output "group_ids" {
  value       = module.groups.group_ids
  description = "A list of group_ids"
}

# This output contains a list of group_names
output "group_names" {
  value       = module.groups.group_names
  description = "A list of group_names"
}

# This output is a map of group_name to group_id
output "group_names_with_ids" {
  value       = module.groups.group_names_with_ids
  description = "A map of group_name to group_id"
}
