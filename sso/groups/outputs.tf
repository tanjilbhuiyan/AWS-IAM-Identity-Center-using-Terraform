# The group_ids output variable contains the IDs of the created groups
# The IDs are extracted from the ARN of the group object
# The ARN is in the format of "arn:aws:sso:::identitystore/<identity_store_id>/group/<group_id>"
# We use the split() function to extract the group_id from the ARN
# The [1] index is used to get the second element of the split array, which is the group_id
output "group_ids" {
  value = [for group in aws_identitystore_group.groups : split("/", group.id)[1]]
}

# The group_names output variable contains the names of the created groups
output "group_names" {
  value = [for group in aws_identitystore_group.groups : group.display_name]
}

# The group_names_with_ids output variable contains the names and IDs of the created groups
# The value is a map where the key is the group name and the value is the group_id
# This output variable is useful when you need to reference the group_id in another Terraform resource
output "group_names_with_ids" {
  value = { for group in aws_identitystore_group.groups : group.display_name => split("/", group.id)[1] }
}
