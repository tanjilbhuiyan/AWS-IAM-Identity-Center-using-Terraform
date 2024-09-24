# This module provisions the AWS SSO service
# It will create the SSO instance, the users, groups and the permission sets
# It will also create the group membership and the user-group membership

data "aws_ssoadmin_instances" "sso" {}

module "policy" {
  # The source of the module is the local path ./policy
  source       = "./policy"
  instance_arn = tolist(data.aws_ssoadmin_instances.sso.arns)[0]
  group_ids    = module.groups.group_ids
}

module "users" {
  # The source of the module is the local path ./users
  source            = "./users"
  identity_store_id = tolist(data.aws_ssoadmin_instances.sso.identity_store_ids)[0]
  users             = local.users
}

module "groups" {
  # The source of the module is the local path ./groups
  source            = "./groups"
  identity_store_id = tolist(data.aws_ssoadmin_instances.sso.identity_store_ids)[0]
  groups            = local.groups
}

# This locals block creates a list of objects with user_name and group
locals {
  user_group_memberships = flatten([
    for user in local.users : [
      for group in user.groups : {
        user_name = user.user_name
        group     = group
      }
    ]
  ])
}
# This resource creates the group membership and the user-group membership

resource "aws_identitystore_group_membership" "example" {
  for_each = {
    for membership in local.user_group_memberships : "${membership.user_name}-${membership.group}" => membership
  }

  identity_store_id = tolist(data.aws_ssoadmin_instances.sso.identity_store_ids)[0]
  group_id          = lookup(module.groups.group_names_with_ids, each.value.group)
  member_id         = lookup(module.users.user_names_with_ids, each.value.user_name)
}
