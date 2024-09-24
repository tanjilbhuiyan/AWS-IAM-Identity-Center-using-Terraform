# This resource creates AWS SSO groups
# The groups are created based on the var.groups list
# The var.groups list should contain objects with the following properties:
# - display_name: The display name of the group
# - description: The description of the group
resource "aws_identitystore_group" "groups" {
  count             = length(var.groups)
  identity_store_id = var.identity_store_id
  display_name      = var.groups[count.index].display_name
  description       = var.groups[count.index].description
}
